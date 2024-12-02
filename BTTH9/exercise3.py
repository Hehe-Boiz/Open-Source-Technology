#!/usr/bin/env python3

import csv
with open('test/nhansu.csv', 'w') as f:
    new_file = csv.writer(f)
    new_file.writerow(['An', '25', 'IT Manager', 'HCM'])
    new_file.writerow(['Thành', '30', 'Developer', 'HCM'])

# Nếu file csv chưa tồn tại thì có cần tạo file trước khi lưu dữ liệu hay không? không vì khi mở file với chế độ 'w' Python sẽ tự động tạo file nếu không tồn tại
# Sau khi chạy đoạn code trên, cho nhận xét? Kết quả lưu vào file như thế nào? nó sẽ lưu dữ liệu y như khi được đưa vào thông qua đối tượng new_file 
