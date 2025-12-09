import sqlite3

conn = sqlite3.connect(‘my_database.db’)
cursor = conn.cursor()

# 利用placeholders "?" 可以替代輸入資料表的值
insert_query = '''
    INSERT INTO Students (name, age, email)
    VALUES (?, ?, ?); 
    '''
students_data = [('Jane Doe', 23, 'jane@example.com'),
('Bahadurjit Sabharwal', 18, 'tristanupadhyay@example.net'),
('Zayyan Arya', 20, 'yashawinibhakta@example.org'),
('Hemani Shukla', 18, 'gaurikanarula@example.com'),
('Warda Kara', 20, 'npatil@example.net'),
('Mitali Nazareth', 19, 'sparekh@example.org')]

cursor.executemany(insert_query, students_data)
conn.commit()
conn.close()

print("Record inserted successfully!")
