using ManageOrders as service from '../../srv/order';

annotate service.Orders with @(

    Capabilities      : {DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    }, },

    UI.HeaderInfo     : {
        TypeName      : '{i18n>Order}',
        TypeNamePlural: '{i18n>Orders}',
        ImageUrl      : IMAGEURL,
        Title         : {Value: FIRSTNAME},
        Description   : {Value: LASTNAME}
    },

    UI.SelectionFields: [
        EMAIL,
        COUNTRY,
        LASTNAME
    ],

    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: 'IMAGEURL',
            Value: IMAGEURL,
        },
        {
            $Type: 'UI.DataField',
            Label: 'EMAIL',
            Value: EMAIL,
        },
        {
            $Type: 'UI.DataField',
            Label: 'FIRSTNAME',
            Value: FIRSTNAME,
        },
        {
            $Type: 'UI.DataField',
            Label: 'LASTNAME',
            Value: LASTNAME,
        },
        {
            $Type: 'UI.DataField',
            Label: 'COUNTRY',
            Value: COUNTRY,
        },
        {
            $Type: 'UI.DataField',
            Label: 'CREATEON',
            Value: CREATEON,
        },
    ]
);

annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'EMAIL',
                Value: EMAIL,
            },
            {
                $Type: 'UI.DataField',
                Label: 'FIRSTNAME',
                Value: FIRSTNAME,
            },
            {
                $Type: 'UI.DataField',
                Label: 'LASTNAME',
                Value: LASTNAME,
            },
            {
                $Type: 'UI.DataField',
                Label: 'COUNTRY',
                Value: COUNTRY,
            },
            {
                $Type: 'UI.DataField',
                Label: 'CREATEON',
                Value: CREATEON,
            },
            {
                $Type: 'UI.DataField',
                Label: 'DELIVERYDATE',
                Value: DELIVERYDATE,
            },
            {
                $Type: 'UI.DataField',
                Label: 'ORDERSTATUS',
                Value: ORDERSTATUS,
            },
            {
                $Type: 'UI.DataField',
                Label: 'IMAGEURL',
                Value: IMAGEURL,
            },
        ],
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'ITEMS/@UI.LineItem',
            Label : 'Items of Order'
        },

    ]
);

annotate service.Orders with {
    IMAGEURL @(UI.IsImageURL: true)
};

annotate service.ItemsOrders with @(
 
    Capabilities      : {DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    }, },

    UI.HeaderInfo     : {
        TypeName      : '{i18n>Item}',
        TypeNamePlural: '{i18n>Items}',
        Title         : {Value: NAME},
        Description   : {Value: DESCRIPTION}
    },

 UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: 'NAME',
            Value: NAME,
        },
                {
            $Type: 'UI.DataField',
            Label: 'DESCRIPTION',
            Value: DESCRIPTION,
        },
        {
            $Type: 'UI.DataField',
            Label: 'RELEASEDATE',
            Value: RELEASEDATE,
        },
                {
            $Type: 'UI.DataField',
            Label: 'HEIGHT',
            Value: HEIGHT,
        },
                {
            $Type: 'UI.DataField',
            Label: 'DEPTH',
            Value: DEPTH,
        },
                {
            $Type: 'UI.DataField',
            Label: 'EMAIL_HEADER',
            Value: EMAIL_HEADER,
        },
    ]

 );
