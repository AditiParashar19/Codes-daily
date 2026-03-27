# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
import random 
import string 
TARGET="HELLO"
POPULATION_SIZE=6
MUTATION_RATE=0.1
LETTERS=string.ascii_uppercase


def create_individual(length):
    return ''.join(random.choice(LETTERS)for _ in range(length))
    
def create_population():
    return [create_individual(len(TARGET))for _ in range(POPULATION_SIZE)]
    
def fitness(individual):
    score=0
    for i in range(len(TARGET)):
        if individual[i]==TARGET[i]:
            score+=1
    return score
    
def selection(population):
    sorted_pop=sorted(population,key=fitness,reverse=True)
    return sorted_pop[0],sorted_pop[1]
    
def crossover(parent1,parent2):
    child=""
    for i in range(len(parent1)):
        if random.random()<0.5:
            child+=parent1[i]
        else:
            child+=parent2[i]
    return child
