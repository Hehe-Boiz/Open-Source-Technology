
lst=["Ca dao" , "Cá không ăn muối cá ương", "Con cãi cha mẹ", "Trăm đường con hư"]

with open("test/exercise7.txt", "w", encoding="utf-8") as file:
    for line in lst:
        file.write(line + "\n")
