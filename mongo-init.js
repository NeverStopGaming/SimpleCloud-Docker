db.auth("admin", "admin")

simplecloud = db.getSiblingDB("simplecloud")

simplecloud.createUser(
    {
        user: "simplecloud",
        pwd: "simplecloud",
        roles: [
            {
                role: "readWrite",
                db: "simplecloud"
            }
        ]
    }
)