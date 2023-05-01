using {com.master.logali as logali} from '../db/schema';

service HeadersOrdersService {
    entity HeadersOrdersSrv as projection on logali.HeadersOrders;
    entity ItemsOrdersSrv as projection on logali.ItemsOrders;
}
