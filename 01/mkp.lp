\ Model modern diet
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  360 x(CQPounder) + 320 x(Big_M) + 270 x(FFilet) + 290 x(Chicken)
   + 190 x(Fries) + 170 x(Milk) + 100 x(VegJuice)
Subject To
 NutrLB(Cal): 556 x(CQPounder) + 556 x(Big_M) + 356 x(FFilet)
   + 431 x(Chicken) + 249 x(Fries) + 138 x(Milk) + 69 x(VegJuice) >= 2000
 NutrUB(Cal): 556 x(CQPounder) + 556 x(Big_M) + 356 x(FFilet)
   + 431 x(Chicken) + 249 x(Fries) + 138 x(Milk) + 69 x(VegJuice) <= 3000
 NutrLB(Carbo): 39 x(CQPounder) + 46 x(Big_M) + 42 x(FFilet)
   + 45 x(Chicken) + 30 x(Fries) + 10 x(Milk) + 17 x(VegJuice) >= 300
 NutrUB(Carbo): 39 x(CQPounder) + 46 x(Big_M) + 42 x(FFilet)
   + 45 x(Chicken) + 30 x(Fries) + 10 x(Milk) + 17 x(VegJuice) <= 375
 NutrLB(Protein): 30 x(CQPounder) + 26 x(Big_M) + 14 x(FFilet)
   + 20 x(Chicken) + 3 x(Fries) + 7 x(Milk) + x(VegJuice) >= 50
 NutrUB(Protein): 30 x(CQPounder) + 26 x(Big_M) + 14 x(FFilet)
   + 20 x(Chicken) + 3 x(Fries) + 7 x(Milk) + x(VegJuice) <= 60
 NutrLB(VitA): 147 x(CQPounder) + 97 x(Big_M) + 28 x(FFilet) + 9 x(Chicken)
   + 80 x(Milk) + 750 x(VegJuice) >= 500
 NutrUB(VitA): 147 x(CQPounder) + 97 x(Big_M) + 28 x(FFilet) + 9 x(Chicken)
   + 80 x(Milk) + 750 x(VegJuice) <= 750
 NutrLB(VitC): 10 x(CQPounder) + 9 x(Big_M) + x(FFilet) + 2 x(Chicken)
   + 5 x(Fries) + 2 x(Milk) + 2 x(VegJuice) >= 85
 NutrUB(VitC): 10 x(CQPounder) + 9 x(Big_M) + x(FFilet) + 2 x(Chicken)
   + 5 x(Fries) + 2 x(Milk) + 2 x(VegJuice) <= 100
 NutrLB(Calc): 221 x(CQPounder) + 142 x(Big_M) + 76 x(FFilet)
   + 37 x(Chicken) + 7 x(Fries) + 227 x(Milk) + 18 x(VegJuice) >= 660
 NutrUB(Calc): 221 x(CQPounder) + 142 x(Big_M) + 76 x(FFilet)
   + 37 x(Chicken) + 7 x(Fries) + 227 x(Milk) + 18 x(VegJuice) <= 900
 NutrLB(Iron): 2.4 x(CQPounder) + 2.4 x(Big_M) + 0.7 x(FFilet)
   + 0.9 x(Chicken) + 0.6 x(Fries) >= 6
 NutrUB(Iron): 2.4 x(CQPounder) + 2.4 x(Big_M) + 0.7 x(FFilet)
   + 0.9 x(Chicken) + 0.6 x(Fries) <= 7.5
Bounds
Generals
 x(CQPounder) x(Big_M) x(FFilet) x(Chicken) x(Fries) x(Milk) x(VegJuice)
End
