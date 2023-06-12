# Entrega final (09/12/2022)
#
# Autores:
#   Rafael Pinto        Nmec:103379
#   Adalberto Júnior    Nmec:105589

from abc import ABC, abstractmethod

class SearchDomain(ABC):

    @abstractmethod
    def __init__(self, state):
        pass

    @abstractmethod
    def actions(self, state):
        pass

    @abstractmethod
    def result(self, state, action):
        pass

    @abstractmethod
    def cost(self):
        pass

    @abstractmethod
    def heuristic(self, state):
        pass

    @abstractmethod
    def satisfies(self, state):
        pass

class SearchProblem:
    def __init__(self, domain, initial):
        self.domain = domain
        self.initial = initial

    def goal_test(self, state):
        return self.domain.satisfies(state)

class SearchNode:
    def __init__(self,state,parent,depth=0,action=None,heuristic=0,cost=0): 
        self.state = state
        self.parent = parent
        self.depth = depth  
        self.action = action   # saves actions per node (piece, action)
        self.heuristic = heuristic # number of cars blocking the car A + number of cars blocking the car B
        self.cost = cost
    def __str__(self):
        return "no(" + str(self.state) + "," + str(self.parent) + ")"
    def __repr__(self):
        return str(self)
    
class SearchTree:

    def __init__(self,problem, strategy='greedy'): 
        self.problem = problem
        root = SearchNode(problem.initial, None)
        self.open_nodes = [root]
        self.strategy = strategy
        self.solution = []   
        self.explored_states = [root.__str__()]
  
    def get_inputs(self,node):
        if node.parent == None:
            return []
        return [node.action] + self.get_inputs(node.parent) 

    def search(self):      
        while self.open_nodes != []:
            node = self.open_nodes.pop(0)
            if self.problem.goal_test(node.state):
                self.solution = self.get_inputs(node)
                self.solution.reverse()
                return self.solution       
            lnewnodes = []
            for a in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state,a)
                if newstate.__str__() not in self.explored_states:
                    accumulated_cost = self.problem.domain.cost()
                    calc_heuristic = self.problem.domain.heuristic(newstate)
                    newnode = SearchNode(newstate,node,depth=node.depth+1,action=a,heuristic=calc_heuristic,cost=node.cost+accumulated_cost) 
                    lnewnodes.append(newnode)
                    self.explored_states.append(newstate.__str__())  
            self.add_to_open(lnewnodes)
        return None

    def add_to_open(self,lnewnodes):
        if self.strategy == 'breadth':
            self.open_nodes.extend(lnewnodes)
        elif self.strategy == 'depth':
            self.open_nodes[:0] = lnewnodes
        elif self.strategy == 'greedy':                    
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key=lambda e: e.heuristic)
        elif self.strategy == 'uniform':                                  
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key=lambda e: e.cost)
        elif self.strategy == 'a*':                         
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key=lambda e: e.cost+e.heuristic)
            