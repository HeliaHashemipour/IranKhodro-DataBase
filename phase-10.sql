USE IranKhodro_DB;

CREATE TABLE brand_logs
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    brand_id   INT,
    old_name   VARCHAR(20),
    new_name   VARCHAR(20),
    changed_at DATE
);


create trigger insertion_brand
    after insert
    on brands
    for each row
begin
    insert
    into brand_logs(brand_id, old_name, new_name, changed_at)
    values (NEW.id_b, NULL, NEW.name_b, CURRENT_DATE );
END;


create trigger update_brand
    after update
    on brands
    for each row
begin
    insert
    into brand_logs(brand_id, old_name, new_name, changed_at)
    values (NEW.id_b, OLD.name_b, NEW.name_b, CURRENT_DATE);
END;


INSERT INTO brands
VALUES (7,"Tiba");

update Brands set name_b = 'shahin' where id_b='7';

select * from brand_logs;

