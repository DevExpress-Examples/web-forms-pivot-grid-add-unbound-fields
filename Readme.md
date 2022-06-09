<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1892)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Pivot Grid for Web Forms - How to Add Unbound Fields

The following example shows how to add unbound fields to the ASPxPivotGrid.

The *DiscountAmount* unbound field's values are calculated using the [PivotGridFieldBase.UnboundExpression](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPivotGrid.PivotGridFieldBase.UnboundExpression) property, while the *PriceWithDiscount* unbound field is populated by handling the [ASPxPivotGrid.CustomUnboundFieldData](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ASPxPivotGrid.CustomUnboundFieldData) event.

## Files to Look At

* [Default.aspx](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx.vb))

## Documentation

- [Unbound Fields](https://docs.devexpress.com/AspNet/7259/components/pivot-grid/binding-to-data/unbound-fields)
