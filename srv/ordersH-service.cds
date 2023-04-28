using {com.master.logali as logali} from '../db/schema';

service HeadersOrdersService {
    entity HeadersOrdersSrv as projection on logali.HeadersOrders;
}
