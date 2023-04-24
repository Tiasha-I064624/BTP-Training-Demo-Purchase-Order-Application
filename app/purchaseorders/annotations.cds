using OrdersService as service from '../../srv/order-service';

annotate service.PurchaseOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
        {
            $Type : 'UI.DataField',
            Label : 'purchaseorder',
            Value : purchaseorder,
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchaseorder',
                Value : purchaseorder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'potype',
                Value : potype,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvalstatus',
                Value : approvalstatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'quantity',
                Value : quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'companycode',
                Value : companycode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {          
            $Type : 'UI.ReferenceFacet',
            // ID : 'GeneratedFacet',
            Label : 'PurchaseOrderItems',
            Target: 'items/@UI.LineItem'
        }
    ]
);
// annotate service.PurchaseOrders with @fiori.draft.enabled;
// annotate service.PurchaseOrders with @odata.draft.enabled;


annotate service.PurchaseOrderItems with @UI : { 

    LineItem: [   

			{Value: purchaseorderitem, Label:'{i18n>POItem}'},
			{Value: itemdescription, Label:'Material'},
			{Value: plant, Label:'Quantity'},
			{Value: price, Label:'Price'}
		
					
		],
    
    FieldGroup#General:{
      Data: [
        {Value: parent.purchaseorder, Label: 'Purchase Order'},
        { Value: purchaseorderitem, Label: 'PO Item'},
        { Value: itemdescription, Label: 'Description'},
        {Value: plant, Label: 'Plant' },
        {Value: price, Label: 'Total Price'}        
      ]
    },


  Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'General Item Information',
            Target : '@UI.FieldGroup#General',
        }
        // {          
        //     $Type : 'UI.ReferenceFacet',
        //     // ID : 'GeneratedFacet1',
        //     Label : '{i18n>PurchaseOrderItems}',
        //     Target: '/@UI.LineItem'
        // }
    ]


 } ;

