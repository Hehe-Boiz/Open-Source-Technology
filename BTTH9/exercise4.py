import csv 
header = ['HoTen', 'Diachi', 'Thanhpho', 'Sdt'] 
data = [ 
     ['Tran Hung', '123 Nguyen Van Troi','HCM','12498654'], 
     ['Nguyen Tai', '55/32/1 Nguyen Du', 'HCM', '765438'], 
     ['Phan Thanh', '98 Ly Thai To','HCM','99876543'], 
     ['Nguyen Sang', '32/1 CMT8','DN','977653'], 
     ['Le luu', '32/9 Dong Nai','HCM', '98765'] 
] 
 
with open('test/countries.csv', 'w', encoding='UTF8', newline='') as f: 
    writer = csv.writer(f) 
    writer.writerow(header)  #Lưu dữ liệu của tiêu đề 
    writer.writerows(data) #Lưu dữ liệu
