namespace com.master.logali;

using {
    cuid,
    managed
} from '@sap/cds/common';

type meins : String(10);

context Orders {

    entity HeadersOrders : cuid, managed {
            //key ID           : UUID;
        key EMAIL        : String;
            FIRSTNAME    : localized String;
            LASTNAME     : localized String;
            COUNTRY      : String;
            CREATEON     : Date;
            DELIVERYDATE : DateTime;
            ORDERSTATUS  : Integer;
            IMAGEURL     : String;
    };

    entity ItemsOrders : cuid, managed {
            //key ID               : UUID;
            NAME             : localized String;
            DESCRIPTION      : localized String;
            RELEASEDATE      : Date;
            DISCONTINUEDDATE : DateTime;
            PRICE            : Decimal(12, 2);
            HEIGHT           : Decimal(15, 3);
            WIDTH            : Decimal(13, 3);
            DEPTH            : Decimal(12, 2);
            QUANTITY         : Decimal(16, 2);
            UNITOFMEASURE    : meins;
        key ID_HEADER        : UUID;
            TO_HEADER        : Association to one HeadersOrders
                                   on TO_HEADER.ID = ID_HEADER;
    }

}
