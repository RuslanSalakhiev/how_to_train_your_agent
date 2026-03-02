-- Таблица заказов
CREATE TABLE raw_orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Таблица пользователей
CREATE TABLE raw_users (
    user_id SERIAL PRIMARY KEY,
    country VARCHAR(50),
    source VARCHAR(50),
    reg_date DATE
);

-- Заполняем тестовыми данными (для примера)
INSERT INTO raw_users (country, source, reg_date) VALUES 
('USA', 'google', '2024-01-01'), ('Germany', 'adwords', '2024-01-02'), ('France', 'organic', '2024-01-03');

INSERT INTO raw_orders (user_id, amount, status, created_at) VALUES 
(1, 150.00, 'shipped', '2024-02-01 10:00:00'), (2, 45.90, 'shipped', '2024-02-05 14:20:00');
