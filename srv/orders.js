const cds = require("@sap/cds");
const { Orders } = cds.entities("com.master.logali");

module.exports = (srv) => {


  //*************READ*************************/
  srv.on("READ", "Orders", async (req) => {
    if (req.data.EMAIL !== undefined) {
      return await SELECT.from`Orders.HeadersOrders`
        .where`EMAIL = ${req.data.EMAIL}`;
    }
    return await SELECT.from(Orders);
  });

  //*************AFTER READ*************************/ 
  srv.after("READ", "Orders", (data) => {
    return data.map((order) => (order.ORDERSTATUS = 9));
  });


  //*******************CREATE*************************/
  srv.on("CREATE", "Orders", async (req) => {
    let returnData = await cds
      .transaction(req)
      .run(
        INSERT.into(Orders).entries({
          EMAIL: req.data.EMAIL,
          FIRSTNAME: req.data.FIRSTNAME,
          LASTNAME: req.data.LASTNAME,
          COUNTRY: req.data.COUNTRY,
          CREATEON: req.data.CREATEON,
          DELIVERYDATE: req.data.DELIVERYDATE,
          ORDERSTATUS: req.data.ORDERSTATUS,
          IMAGEURL: req.data.IMAGEURL,
        })
      )
      .then((resolve, reject) => {
        console.log("Resolve", resolve);
        console.log("Reject", reject);

        if (typeof resolve !== "undefined") {
          return req.data;
        } else {
          req.error(409, "Record Not Inserted");
        }
      })
      .catch((err) => {
        console.log(err);
        req.error(err.code, err.message);
      });
    console.log("Before End", returnData);
    return returnData;
  });

  //*******************BEFORE para CREATE*************************/
  srv.before("CREATE", "Orders", (req) => {
    req.data.CREATEON = new Date().toISOString().slice(0, 10);
    return req;
  });

};