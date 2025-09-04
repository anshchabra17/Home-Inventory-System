namespace HomeInventorySystem
{
    public class Item
    {
        public int ItemID { get; set; }
        public string ItemName { get; set; } = "";
        public string Category { get; set; } = "";
        public DateTime PurchaseDate { get; set; }
        public DateTime WarrantyExpiryDate { get; set; }
        public int Quantity { get; set; }
        public int LocationID { get; set; }


        
        
    }
}