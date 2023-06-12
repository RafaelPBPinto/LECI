# Entrega final (09/12/2022)
#
# Autores:
#   Rafael Pinto        Nmec:103379
#   Adalberto Júnior    Nmec:105589

from tree_search import *
from common import Coordinates, Map

class Agent(SearchDomain):
    def __init__(self, state:Map):
        self.state = state
    def actions(self,state: Map):
        actionlist = []
        already_checked = []
        for row in state.grid:
            for piece in row:
                # Check if its a car
                if piece not in ['o', 'x']:
                    # Check if car was already checked
                    if piece not in already_checked:
                        already_checked.append(piece)
                        car_coordinates = state.piece_coordinates(piece)
                        # Get car orientation
                        car_orientation = orientation(car_coordinates)
                        # Find all legal moves
                        for direction in ('Up/Right', 'Down/Left'):
                            # Up/Left depending on orientation
                            if direction == 'Up/Right':
                                if car_orientation == 'vertical':
                                    # Check if move is legal and if it's legal add to actionlist
                                    if not is_blocked(state, piece, car_coordinates, Coordinates(0,-1)):
                                        actionlist.append((piece, 'w'))
                                else:
                                    if not is_blocked(state, piece, car_coordinates, Coordinates(1,0)):
                                        actionlist.append((piece,'d'))
                            else:
                                if car_orientation == 'vertical':
                                    # Check if move is legal and if it's legal add to actionlist
                                    if not is_blocked(state, piece, car_coordinates, Coordinates(0,1)):
                                        actionlist.append((piece,'s'))
                                else:
                                    if not is_blocked(state, piece, car_coordinates, Coordinates(-1,0)):
                                        actionlist.append((piece,'a'))
        return actionlist
    def result(self,state: Map, action):
        newstate = Map(state.__repr__())
        if action[1] == 'w':
            newstate.move(action[0], Coordinates(0,-1))
        elif action[1] == 's':
            newstate.move(action[0], Coordinates(0,1))
        elif action[1] == 'a':
            newstate.move(action[0], Coordinates(-1,0))
        elif action[1] == 'd':
            newstate.move(action[0], Coordinates(1,0))
        return newstate
    def cost(self):
        return 1
    def heuristic(self, state):   
        found_a = False
        count = 0
        blocking_cars_index = []
        # Count cars blocking A
        for row in state.grid:
            if found_a:
                break
            for i in row:
                if not found_a:
                    if i == 'A':
                        found_a = True
                        row_a_index = state.grid.index(row)
                else:
                    if i not in ['A', 'o']:
                        count+=1
                        if orientation(state.piece_coordinates(i)) == 'vertical':
                            blocking_cars_index.append((i,row.index(i)))
        # Count cars blocking vertical cars blocking A
        count_up = 0
        count_down = 0
        for car in blocking_cars_index:
            for row in state.grid:
                if state.grid.index(row) != row_a_index:
                    for pos in row:
                        if pos not in [car[0], 'o', 'x'] and car[1] != row.index(pos):
                            if state.grid.index(row) < row_a_index:
                                count_up+=1
                            else:
                                count_down+=1
        return count + min(count_up, count_down)
    def satisfies(self, state: Map):
        return state.test_win()

# Check if piece is on horizontal or vertical position
def orientation(coordinates: Coordinates):
    if coordinates[0].x == coordinates[1].x:
        return 'vertical'
    else:
        return 'horizontal'

# Check if piece is blocked
def is_blocked(game_layout: Map, piece, car_coordinates: Coordinates,move: Coordinates):
    if orientation(car_coordinates) == 'vertical' and move.x != 0:
        return True
    if orientation(car_coordinates) == 'horizontal' and move.y != 0:
        return True
    for pos in car_coordinates:
        if not (0 <= pos.x + move.x < game_layout.grid_size and 0 <= pos.y + move.y < game_layout.grid_size):
            return True
        if game_layout.get(Coordinates(pos.x + move.x, pos.y + move.y)) not in [piece, 'o']:
            return True
    return False
    
def search_solution(game_layout, strategy):
    domain = Agent(game_layout)
    my_prob = SearchProblem(domain, game_layout)
    my_tree = SearchTree(my_prob)
    my_tree.strategy = strategy
    return my_tree.search()
