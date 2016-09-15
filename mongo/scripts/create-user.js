db.addUser(
    {
        user: "mongouser",
        pwd: "Qwerty123",
        roles: [
            "readWriteAnyDatabase",
            "userAdminAnyDatabase",
            "dbAdminAnyDatabase"
        ]
    }
);
//db.createCollection("test");