namespace com.logali;
using { cuid, managed } from '@sap/cds/common';

type ZDE_MEINS: String(2);

entity  Sales: cuid, managed {
Key email: String(30);
firtsname:  String(30);
lastname:   String(30);
country:    String(30);
createon:   Date;
deliverydate: DateTime;
orderstatus: Integer;
imagenurl: String;
SalesItem: Association to SalesItem;

}


entity  SalesItem: cuid, managed {
name:  String(40);
description:  String(40);
releasedate: DateTime;
discontinueddate: DateTime;
price: Decimal(12,2);
height: Decimal(15,3);
width: Decimal(13,3);
depth: Decimal(12,2);
quantity: Decimal(12,2);
UnitOfMeasuares: Association to UnitOfMeasuares;
}

entity  UnitOfMeasuares {
    key ID: UUID;
    description: String;

}

entity SelSales as projection on  Sales;

entity SelSales1 as projection on  Sales{

    *
};

entity SelSales2 as projection on  Sales{
    ID, 
    email, 
    firtsname, 
    lastname, 
    orderstatus,
};
