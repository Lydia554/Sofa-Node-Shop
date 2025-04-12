db = db.getSiblingDB('sofa-node-shop');


db.createUser({
  user: "Lydia",
  pwd: "shop88",
  roles: [
    {
      role: "readWrite",
      db: "sofa-node-shop"
    }
  ]
});
