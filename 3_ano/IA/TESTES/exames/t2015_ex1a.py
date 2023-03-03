def f(x, y, z):
    if y ==[]:
        return [x]
    if z(x, y[0]):
        return [x]+y
    return [y[0]]+f(x,y[1:],z)

def z(a, b):
    return a > b

x = 0
y = [1, 10, 20, 30]
print(f(x, y, z))