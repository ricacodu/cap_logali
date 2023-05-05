using {com.master.logali as logali} from '../db/schema';

service CatalogProjectionService {
    entity HeadersOrdersSrv as projection on logali.Orders.HeadersOrders;
    entity ItemsOrdersSrv   as projection on logali.Orders.ItemsOrders;
}

define service CatalogSelectService {

    entity HeadersOrdersSrv as
        select from logali.Orders.HeadersOrders {
            EMAIL        as Email     @mandatory,
            FIRSTNAME    as FirstName @mandatory,
            LASTNAME     as LastName,
            COUNTRY      as Country,
            CREATEON     as CreateOn,
            DELIVERYDATE as DeliveryDate,
            ORDERSTATUS  as OrderStatus,
            IMAGEURL     as ImageUrl,
            ITEMS        as ToItems
        };

    @readonly
    entity ItemsOrdersSrv   as
        select from logali.Orders.ItemsOrders {
            ID,
            NAME             as Name        @mandatory,
            DESCRIPTION      as Description @mandatory,
            RELEASEDATE      as ReleaseDate,
            DISCONTINUEDDATE as Discontinueddate,
            PRICE            as Price,
            HEIGHT           as Height,
            WIDTH            as Width,
            DEPTH            as Depth,
            QUANTITY         as Quantity,
            UNITOFMEASURE    as UnitOfMeasure,
            EMAIL_HEADER     as IdHeader,
            HEADER           as ToHeader,
        };
}

define service Querys {

    entity OrderByEmail as
        select from logali.Orders.HeadersOrders[EMAIL = 'anibal@gmail.com']{
          FIRSTNAME,
          COUNTRY
        }

}
