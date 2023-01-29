USE IranKhodro_DB;

CREATE ASSERTION stock_assert
CHECK (
    SELECT count(*)
    FROM SparePart
    WHERE
          stock=0
          )=0
        );


CREATE ASSERTION vehicle_order_assert
CHECK (
    SELECT count(*)
    FROM vehicle_orders
    WHERE counts>=2
        )=0
    );

