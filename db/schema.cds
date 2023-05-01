namespace com.master.logali;

type meins : String(10);

entity HeadersOrders {
    key ID           : UUID;
    key EMAIL        : String;
        FIRSTNAME    : String;
        LASTNAME     : String;
        COUNTRY      : String;
        CREATEON     : Date;
        DELIVERYDATE : DateTime;
        ORDERSTATUS  : Integer;
        IMAGEURL     : String;
};

entity ItemsOrders {
    key ID_HEADER        : UUID;
    key ID               : UUID;
        NAME             : String;
        DESCRIPTION      : String;
        RELEASEDATE      : Date;
        DISCONTINUEDDATE : DateTime;
        PRICE            : Decimal(12, 2);
        HEIGHT           : Decimal(15, 3);
        WIDTH            : Decimal(13, 3);
        DEPTH            : Decimal(12, 2);
        QUANTITY         : Decimal(16, 2);
        UNITOFMEASURE    : meins;
        TO_HEADER        : Association to one HeadersOrders
                               on TO_HEADER.ID = ID_HEADER;
}
