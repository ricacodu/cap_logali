namespace com.master.logali;

entity HeadersOrders {
    key ID           : String;
    key EMAIL        : String;
        FIRSTNAME    : String;
        LASTNAME     : String;
        COUNTRY      : String;
        CREATEON     : Date;
        DELIVERYDATE : DateTime;
        ORDERSTATUS  : Integer;
        IMAGEURL     : String;

}
