import csv 

with open('test/sinhvien.txt','r') as txt_file:
    # delimiter là kí tự để phân tác các thành phần trong 1 dòng 
    noidung = csv.reader(txt_file, delimiter=',')

    # tạo file csv mới 
    with open('test/exercise5.csv' , 'w', newline='') as csv_file:
        file_csv_new = csv.writer(csv_file)
        file_csv_new.writerows(noidung)
