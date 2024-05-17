SELECT
    "Couriers"."login",
    COUNT("Orders"."inDelivery")
FROM "Couriers"
INNER JOIN "Orders"
    ON "Orders"."courierId" = "Couriers"."id"
WHERE "Orders"."inDelivery" = true
GROUP BY "Couriers"."login";