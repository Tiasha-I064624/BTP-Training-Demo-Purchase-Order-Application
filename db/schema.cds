namespace sap.ui.purchaseorder;
using { managed } from '@sap/cds/common';
  
    entity PurchaseOrderItems : managed {
    // key ID       : UUID  @(Core.Computed : true);
    key parent   : Association to PurchaseOrders;
    key purchaseorderitem: String(5);
    itemdescription  : String;
    plant        : String(5);
    price       : Decimal(5,2);
    // order   : Association to PurchaseOrders;

  }

  entity PurchaseOrders : managed {
    // key ID      : UUID  @(Core.Computed : true);
    key purchaseorder: String(10);
    potype       : String(100);
    approvalstatus        : String(10);
    quantity      : Integer;
    companycode  : Integer;
    // descr       : String;
    // miti        : Association to Mitigations;
    @cascade: {delete: true}          
    @odata.contained       
    items: Composition of many PurchaseOrderItems on items.parent= $self;

    // purchaseorderitem: Association to many PurchaseOrderItems on purchaseorderitem.order= $self;
  }

