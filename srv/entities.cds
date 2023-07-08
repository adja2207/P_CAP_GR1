using com.logali as logali from '../db/schema';

service MyService {
entity  Sales as projection on logali.Sales
entity  SalesItem as projection on logali.SalesItem

}