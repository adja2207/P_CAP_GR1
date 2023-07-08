using com.logali as logali from '../db/schema';

service  ManageOrders {
entity GetSales as projection on logali.Sales;
entity CreateSales as projection on logali.Sales;
entity UpdateSales as projection on logali.Sales;
entity DeleteSales as projection on logali.Sales;
}