# Entrega final (09/12/2022)
#
# Autores:
#   Rafael Pinto        Nmec:103379
#   Adalberto Júnior    Nmec:105589
#
# Referências:
#   https://abbashommadi.github.io/AI-for-Rush-Hour-Game/
#   https://github.com/LiaoWC/rush_hour_puzzle_AI 

import asyncio
import getpass
import json
import os
import math
from common import Coordinates, Map
from agent import search_solution, is_blocked

import websockets

cars = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O']

# Function to find piece
def find_piece(cursor, piece, piece_coord:Coordinates):
    inputs = []
    inputs.append((piece, ' '))
    dist1 = math.hypot(cursor[0] - piece_coord[0].x, cursor[1] -piece_coord[0].y)
    dist2 = math.hypot(cursor[0] - piece_coord[1].x, cursor[1] -piece_coord[1].y)
    dist = [dist1, dist2]
    if len(piece_coord) == 3:
        dist3 = math.hypot(cursor[0] - piece_coord[2].x, cursor[1] -piece_coord[2].y)
        dist.append(dist3)
        if min(dist) == dist1:
            left_right = cursor[0] - piece_coord[0].x 
            up_down = cursor[1] -piece_coord[0].y
        elif min(dist) == dist2:
            left_right = cursor[0] - piece_coord[1].x 
            up_down = cursor[1] -piece_coord[1].y
        else:
            left_right = cursor[0] - piece_coord[2].x 
            up_down = cursor[1] -piece_coord[2].y
    else:
        if min(dist) == dist1:
            left_right = cursor[0] - piece_coord[0].x 
            up_down = cursor[1] -piece_coord[0].y
        else:
            left_right = cursor[0] - piece_coord[1].x 
            up_down = cursor[1] -piece_coord[1].y
    if left_right > 0:
        i = 0
        while i < left_right:
            inputs.append((piece, 'a'))
            i+=1
    else:
        i = 0
        while i < abs(left_right):
            inputs.append((piece, 'd'))
            i+=1
    if up_down > 0:
        i = 0
        while i < up_down:
            inputs.append((piece, 'w'))
            i+=1
    else:
        i = 0
        while i < abs(up_down):
            inputs.append((piece, 's'))
            i+=1
    return inputs

# Function that gets de move letter and returns Coordinates to move
def get_move(move):
    if move == 'w':
        return Coordinates(0,-1)
    if move == 's':
        return Coordinates(0,1)
    if move == 'a':
        return Coordinates(-1,0)
    if move == 'd':
        return Coordinates(1,0)

# Function to check if the input was sent
def input_sent(last_cursor, current_cursor, last_select, state, last_state, current_state, input):
    if state["selected"] in cars and input[1] != ' ' and not is_blocked(last_state, input[0], last_state.piece_coordinates(input[0]), get_move(input[1])):
        expected_state = Map(last_state.__str__())
        expected_state.move(input[0], get_move(input[1]))
        if expected_state.piece_coordinates(input[0]) == current_state.piece_coordinates(input[0]):
            return True
    if last_cursor != current_cursor:
        return True
    if last_select != state["selected"]:
        return True
    if last_state.pieces != current_state.pieces:   # to continue when the crazy driver passes the level
        return True
    return False

async def agent_loop(server_address="localhost:8000", agent_name="student"):
    """Example client loop."""
    async with websockets.connect(f"ws://{server_address}/player") as websocket:
        # Receive information about static game properties
        await websocket.send(json.dumps({"cmd": "join", "name": agent_name}))

        search_method = 'greedy'
        inputs = []
        last_illegal = False
        first_move = True
        while True:
            try:
                state = json.loads(
                    await websocket.recv()
                )  # receive game update, this must be called timely or your game will get out of sync with the server
                game_layout = Map(state.get('grid'))
                cursor = state.get('cursor')
                if not first_move and not last_illegal:
                    # Verify if it was selected the correct piece, if not restart search
                    if previous_input[1] == ' ' and previous_input[0] != 'unselect':
                        if game_layout.get(Coordinates(cursor[0], cursor[1])) != previous_input[0]:
                            inputs.clear()
                            last_illegal = True
                    # Verify if the move is illegal, if illegal restart search
                    if state["selected"] in cars and previous_input[1] != ' ' and is_blocked(last_state, previous_input[0], last_state.piece_coordinates(previous_input[0]), get_move(previous_input[1])):
                        inputs.clear()
                        last_illegal = True
                if inputs==[]:
                    piece_found = False
                    first_move = True
                    inputs += search_solution(game_layout,search_method)
                    if state["selected"] in cars:
                        inputs.insert(0,('unselect', ' '))
                else:   
                    if state["selected"] != inputs[0][0] and not piece_found and inputs[0][0] != 'unselect':
                        for i in find_piece(cursor, inputs[0][0], game_layout.piece_coordinates(inputs[0][0])):
                            inputs.insert(0, i)
                        piece_found = True  # boolean to avoid searching for specific piece multiple times
                    # Check if something happened or if it's the first move
                    # Prevents multiple keys sent to the server at the same time
                    if first_move or input_sent(last_cursor, cursor, last_select, state, last_state, game_layout, previous_input) or last_illegal:    
                        first_move = False
                        last_illegal = False
                        previous_input = inputs[0]
                        key = inputs.pop(0)[1]
                        # check if next move needs a different piece
                        if len(inputs) > 1:
                            if inputs[0][0] != previous_input[0] and previous_input[0] != 'unselect':
                                inputs.insert(0,('unselect', ' '))
                                piece_found = False
                        await websocket.send(
                            json.dumps({"cmd": "key", "key": key})
                        )  # send key command to server
                    else: # Try again
                        await websocket.send(
                            json.dumps({"cmd": "key", "key": key})
                        )  # send key command to server
                    last_cursor = state.get('cursor') 
                    last_select = state["selected"]
                    last_state = game_layout
            except websockets.exceptions.ConnectionClosedOK:
                print("Server has cleanly disconnected us")
                return
                       
# DO NOT CHANGE THE LINES BELLOW
# You can change the default values using the command line, example:
# $ NAME='arrumador' python3 client.py
loop = asyncio.get_event_loop()
SERVER = os.environ.get("SERVER", "localhost")
PORT = os.environ.get("PORT", "8000")
NAME = os.environ.get("NAME", getpass.getuser())
loop.run_until_complete(agent_loop(f"{SERVER}:{PORT}", NAME))
