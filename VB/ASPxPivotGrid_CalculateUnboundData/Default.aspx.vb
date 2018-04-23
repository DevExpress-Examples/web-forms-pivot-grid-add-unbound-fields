Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.Web.ASPxPivotGrid

Namespace AddUnboundField
	Partial Public Class _Default
		Inherits Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		End Sub
		Protected Sub CustomUnboundFieldData(ByVal sender As Object, ByVal e As CustomFieldDataEventArgs)
			If e.Field.FieldName <> "PriceWithDiscount" Then
				Return
			End If
			Dim extPrice As Decimal = Convert.ToDecimal(e.GetListSourceColumnValue("ExtendedPrice"))
			Dim discount As Decimal = Convert.ToDecimal(e.GetListSourceColumnValue("Discount"))
			e.Value = extPrice * (1 - discount)
		End Sub
	End Class
End Namespace
