from gurobipy import *

model = Model("lo1")

x1 = model.addVar(vtype="C", name="x1") # vtype = continuous variable
x2 = model.addVar(vtype="C", name="x2")
x3 = model.addVar(ub=30, vtype="C", name="x3") # ub 上限　lb 下限
model.update() #変数の宣言後はupdateメソッド

# 制約条件
model.addConstr(2*x1 + x2 + x3 <= 60)
model.addConstr(x1 + 2*2 + x3 <= 60)

# 目的関数
model.setObjective(15*x1 + 18*x2 + 30*x3, GRB.MAXIMIZE) #GRB.MAXIMIZE or GRB.MINIMIZE

# 最適化
model.optimize()

# 目的関数の最適値
print("Opt. Value = ", model.ObjVal)

# 最適解
for v in model.getVars():
    print(v.VarName, v.X) # 変数名 + 最適値の属性
