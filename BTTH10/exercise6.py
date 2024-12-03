
with open("test/tritue.txt", "r") as file:
    data = file.readlines()
    
    print(len(data))
    for line in data:
        print(len(line))
        
    # đặt lại con trở trở lại vị trí ban đầu 
    file.seek(0)
    for index, line in enumerate(file):
        if index == 3:
            break
        print(line.strip())

    file.seek(0)
    for index, line in enumerate(file, start =1):
        if index == 2 or index ==4:
            print(line.strip())

additional_content = """Ngày nay, trí tuệ nhân tạo đang được quan tâm rất nhiều.
Bởi nó đã mang lại hiệu quả rất lớn đối với một vài lĩnh vực."""
with open("test/tritue.txt", "a") as file:
    file.write("\n" + additional_content)
