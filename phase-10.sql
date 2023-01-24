CREATE TABLE brand_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand_id INT,
    old_name VARCHAR(20),
    new_name VARCHAR(20),
    changed_at DATE
);