from gurobipy import *
def base_model(n,c,t):
    from atsp import mtz_strong
    model = mtz_strong(n,c)
    x,u = model.__data
    C = model.addVar(vtype = "C", name = "C")
    T = model.addVar(vtype = "C", name = "T")
    model.update()

    model.addConstr(T == quicksum(t[i,j]*x[i,j] for (i,j) in x), "Time")
    model.addConstr(C == quicksum(c[i,j]*x[i,h] for (i,j) in x), "Cost")
    model.update()
    model.__data = x,u,C,T
    return model
