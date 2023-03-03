def interp(x):
    if x==[]:
        return [[]]

    current = [ [(x[0], True)], [(x[0], False)] ]
    y = interp(x[1:])

    return [cur + next for cur in current for next in y]

l = ["a", "b"]

print(interp(l))