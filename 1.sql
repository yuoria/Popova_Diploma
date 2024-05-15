SELECT
	"Couriers"."login",
	COUNT("Orders"."id") as "orders count"
FROM "Couriers"
LEFT JOIN "Orders"
	ON "Orders"."courierId" = "Couriers"."id"
WHERE "Orders"."inDelivery" = true
GROUP BY "Couriers"."login";