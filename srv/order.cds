using {com.master.logali as logali} from '../db/schema';

service ManageOrders { 
    entity Orders as projection on logali.Orders.HeadersOrders;
}