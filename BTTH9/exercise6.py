import csv

data = [
    ['MANV', 'HoTen', 'NamSinh', 'DiaDiem'],  # Dòng tiêu đề
    ['NV01', 'Nguyen Van Tam', '2000', 'HCM'],
    ['NV02', 'Dao Thi Tuyen', '2001', 'HN'],
    ['NV03', 'Le Thanh Trung', '2004', 'Da Nang']
]

with open('test/exercise6.txt', 'w', newline='') as txt_file:
    file_txt_new = csv.writer(txt_file, delimiter='\t')  # Dùng tab làm delimiter
    file_txt_new.writerows(data)
with open('test/exercise6.txt', 'r') as txt_file:
    # tạo 1 iterator 
    content = csv.reader(txt_file, delimiter='\t')

    with open ('test/exercise6.csv', 'w', newline='') as csv_file:
        file_csv_new = csv.writer(csv_file, delimiter='\t')
        file_csv_new.writerows(content)
with open('test/exercise6.csv', 'r') as csv_file:
    reader = csv.reader(csv_file, delimiter='\t')
    # đọc dòng đầu tiên từ iterator của csv.reader 
    header = next(reader)
    print("\t".join(header))

with open('test/exercise6.txt', 'r') as txt_file:
    reader = csv.reader(txt_file,delimiter='\t')  
    next(reader)  
    
    for row in reader:  
        print("\t".join(row))
