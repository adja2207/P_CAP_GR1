using com.logali as logali from '../db/schema';

service  CatalogService {
entity  Sales 
as Select from logali.Sales {
    ID                             @mandatory,
    email                         @mandatory,
    firtsname                   ,
    lastname                    @mandatory,
    country                               ,
    createon,
    deliverydate,
    orderstatus                    ,
    imagenurl,
    SalesItem as ToSalesItem 
} ;
entity  SalesItem as Select from  logali.SalesItem {

    ID @mandatory, 
    name @mandatory,
    description @mandatory, 
    releasedate, 
    discontinueddate,
    price @mandatory, 
    height,
    width,
    depth,
    quantity @(mandatory,assert.range: [0.00, 100.00]),
    UnitOfMeasuares as ToUnitOfMeasuares @mandatory
};

@readonly
entity  VH_UnitOfMeasuares as select from  logali.UnitOfMeasuares {
    ID as Code,
    description as Text
};
}