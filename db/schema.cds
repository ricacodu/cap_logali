namespace com.master.logali;

using {
    cuid,
    managed
} from '@sap/cds/common';

type meins : String(10);

context Orders {

    entity HeadersOrders :  managed {
        key EMAIL        : String @odata.Type:'Edm.String';
            FIRSTNAME    : localized String;
            LASTNAME     : localized String;
            COUNTRY      : String;
            CREATEON     : Date;
            DELIVERYDATE : DateTime;
            ORDERSTATUS  : Integer;
            IMAGEURL     : String;
    };

    entity ItemsOrders : cuid, managed {
        key EMAIL_HEADER     : String;
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
            TO_HEADER        : Association to one HeadersOrders
                                   on TO_HEADER.EMAIL = EMAIL_HEADER;
    }

}
