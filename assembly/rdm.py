import numpy as np
import random
################# parameters #####################
arr_size = 500

################ util function ##################
def random_gen(arr):
    for i,obj in enumerate(arr):
        arr[i] = random.randint(0,1000)
    return arr

def worst_gen(arr):
    for i, obj in enumerate(arr):
        arr[i] = arr_size - 1 - i
    return arr

def best_gen(arr):
    for i, obj in enumerate(arr):
        arr[i] = i
    return arr

def main():
    arr = np.zeros(arr_size, dtype = int)
    rand_out = random_gen(arr)   
    with open('random.csv','w') as ofs:
        for i, obj in enumerate(rand_out):
            ofs.write('{0:032b}'.format(obj)+'\n')
    worst_out = worst_gen(arr)
    with open('worst.csv', 'w') as wofs:
        for i, obj in enumerate(worst_out):
            wofs.write('{0:032b}'.format(obj)+'\n')
    best_out = best_gen(arr)
    with open ('best.csv', 'w') as bofs:
       for i, obj in enumerate(best_out):
            bofs.write('{0:032b}'.format(obj)+'\n')
if __name__ == '__main__':
    main()