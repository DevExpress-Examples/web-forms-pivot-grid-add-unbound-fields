using System;
using System.Web.UI;
using DevExpress.Web.ASPxPivotGrid;

namespace AddUnboundField {
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {
        }
        protected void CustomUnboundFieldData(object sender, CustomFieldDataEventArgs e) {
            if (e.Field.FieldName != "PriceWithDiscount") return;
            decimal extPrice = Convert.ToDecimal(e.GetListSourceColumnValue("ExtendedPrice"));
            decimal discount = Convert.ToDecimal(e.GetListSourceColumnValue("Discount"));
            e.Value = extPrice * (1 - discount);
        }
    }
}
