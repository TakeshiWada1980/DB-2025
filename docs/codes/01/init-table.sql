-- departments (部署) テーブルの作成
CREATE TABLE departments (id INTEGER PRIMARY KEY, name VARCHAR(32) NOT NULL);

-- employees (社員) テーブルの作成
CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name VARCHAR(32) NOT NULL,
  birthday DATE NOT NULL,
  overtime INTEGER NOT NULL,
  department_id INTEGER NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments (id)
);

-- departments テーブルへのデータ投入
INSERT INTO
  departments (id, name)
VALUES
  (1, '営業部'),
  (2, '人事部'),
  (3, '開発部'),
  (4, '経理部'),
  (5, '企画部');

-- employees テーブルへのデータ投入
INSERT INTO
  employees (id, name, birthday, overtime, department_id)
VALUES
  (1, '高負荷 耐子', '1985-06-21', 65, 1),
  (2, '不具合 直志', '1990-11-02', 48, 1),
  (3, '品質 守', '1978-03-14', 5, 2),
  (4, '構文 誤次郎', '1995-07-30', 85, 3),
  (5, '仕様 曖昧子', '1988-09-09', 72, 3),
  (6, '保守 絶望太', '1982-12-25', 120, 3),
  (7, '負債 雪崩美', '1975-04-05', 58, 4);