from gurobipy import *

model = Model("lo infeas")

x1 = model.addVar(vtype = "C", name = "x1")
x2 = model.addVar(vtype = "C", name = "x2")
model.update()

model.addConstr(x1 - x2 >= -1)
model.addConstr(x2 - x1 >= -1)
model.setObjective(x1 + x2, GRB.MAXIMIZE)
model.optimize()

status = model.Status
if status == GRB.Status.OPTIMAL:
    print("Opt. Value=", mode.ObjVal)
    for v in model.getVars():
        print(v.VarName, v.X)

if status == GRB.Status.UNBOUNDED or status == GRB.Status.INF_OR_UNBD:
    model.setObjective(0,GRB.MAXIMIZE)
    model.optimize()
    status = model.Status
if status == GRB.Status.OPTIMAL :
    print("Unbounded")
elif status == GRB.Status.INFEASIBLE :
    print("Infeasible")
else :
    print("Error :  Solver finished with non-optimal status", status)
