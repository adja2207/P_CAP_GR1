using CatalogService as service from '../../srv/ Catalog-Service';

annotate service.Sales with @(
    Capabilities: {  DeleteRestrictions : {
       Deletable:false }  },

    UI.HeaderInfo      : {
        TypeName       : '{i18n>Product}',
        TypeNamePlural : '{i18n>Products}',
        ImageUrl       : imagenurl,
        Title          : {Value : ID},
        Description    : {Value : false},
    },
    UI.SelectionFields : [
        orderstatus,
    ],
    UI.LineItem : [

        {
            $Type : 'UI.DataField',
            Label : '{i18n>imagenurl}',
            Value : imagenurl,
        },

        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },

        {
            $Type : 'UI.DataField',
            Label : '{i18n>firtsname}',
            Value : firtsname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastname',
            Value : lastname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'country',
            Value : country,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>createon}',
            Value : createon,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>orderstatus}',
            Value : orderstatus,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ToSalesItem_ID}',
             Value : ToSalesItem_ID,
        },
    ],
);
annotate service.Sales with {
        orderstatus @title : '{i18n> orderstatus}';

};        
annotate service.Sales with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>firtsname}',
                Value : firtsname,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>lastname}',
                Value : lastname,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>country}',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>createon}',
                Value : createon,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>deliverydate}',
                Value : deliverydate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>orderstatus}',
                Value : orderstatus,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>imagenurl}',
                Value : imagenurl,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>item}',
                Value : ToSalesItem_ID,
            },
        ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }
    ]
);
annotate service.Sales with {
    imagenurl @(UI.IsImageURL : true)
};



