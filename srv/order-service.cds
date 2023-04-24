using { sap.ui.purchaseorder as my } from '../db/schema';
// @path: 'service/orders'
service OrdersService {
  entity PurchaseOrders as projection on my.PurchaseOrders;
    annotate PurchaseOrders with @odata.draft.enabled;
      // items : Association to many PurchaseOrderItems; 

  entity PurchaseOrderItems as projection on my.PurchaseOrderItems;
    // annotate PurchaseOrderItems with @Capabilities.Insertable: true;
}
