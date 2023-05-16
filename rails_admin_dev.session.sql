SELECT "groups".*
FROM "groups"
WHERE "groups"."tenant_id" = 1
    AND "groups"."id" NOT IN (
        SELECT "groups"."id"
        FROM "groups"
            LEFT OUTER JOIN "user_roles" ON "user_roles"."group_id" = "groups"."id"
            LEFT OUTER JOIN "users" ON "users"."id" = "user_roles"."user_id"
        WHERE "users"."id" = 15
    )