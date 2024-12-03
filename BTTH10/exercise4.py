import csv

# with open("test/file.txt", "r") as file:
#     reader = csv.reader(file)
#     for line in reader:
#         print(line)

# readlines sẽ trả về 1 list các String 
with open("test/file.txt", "r") as file:  
    data = file.readlines() 
    for line in data:
        print(line) 