Imports System
Imports System.Web.UI
Imports DevExpress.Web.ASPxPivotGrid

Namespace AddUnboundField

    Public Partial Class _Default
        Inherits Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        End Sub

        Protected Sub CustomUnboundFieldData(ByVal sender As Object, ByVal e As CustomFieldDataEventArgs)
            If Not Equals(e.Field.FieldName, "PriceWithDiscount") Then Return
            Dim extPrice As Decimal = Convert.ToDecimal(e.GetListSourceColumnValue("ExtendedPrice"))
            Dim discount As Decimal = Convert.ToDecimal(e.GetListSourceColumnValue("Discount"))
            e.Value = extPrice * (1 - discount)
        End Sub
    End Class
End Namespace
