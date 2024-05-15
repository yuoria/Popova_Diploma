SELECT
    "track",
    CASE
        WHEN finished = TRUE THEN 2
        WHEN cancelled = TRUE THEN -1
        WHEN inDelivery = TRUE THEN 1
        ELSE 0
    END AS "Status"
FROM
    "Orders";