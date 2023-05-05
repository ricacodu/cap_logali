using {com.master.logali as logali} from '../db/schema';

service ManageOrders { 
    entity Orders      as projection on logali.Orders.HeadersOrders;
    entity ItemsOrders as projection on logali.Orders.ItemsOrders;
}