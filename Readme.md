<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577184/21.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1892)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Pivot Grid for Web Forms - How to Add Calculated Fields

The following example shows how to add calculated fields to the [ASPxPivotGrid](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ASPxPivotGrid).
Calculated fields display the result of calculated expressions. Each calculated field has a binding expression that can be a formula or aggregate function.

To supply a calculated field with data, use the [ExpressionDataBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ExpressionDataBinding) class, and pass to the [Expression](https://docs.devexpress.com/CoreLibraries/DevExpress.PivotGrid.DataBinding.ExpressionBindingBase.Expression) property a string expression to calculate.


In this example, the *DiscountAmount* and *PriceWithDiscount* pivot grid's fields are calculated fields:
```aspx
<dx:PivotGridField ID="fieldDiscountAmount" Area="DataArea"
        AreaIndex="2"
        Caption="Discount Amount">
    <DataBindingSerializable>
        <dx:ExpressionDataBinding Expression="[ExtendedPrice]*[Discount]" />
    </DataBindingSerializable>
</dx:PivotGridField>
<dx:PivotGridField ID="fieldPriceWithDiscount" Area="DataArea"
        AreaIndex="3" UnboundType="Decimal"
        FieldName="PriceWithDiscount"
        Caption="Price with Discount">
    <DataBindingSerializable>
        <dx:ExpressionDataBinding Expression="[fieldExtendedPrice] * (1 - [fieldDiscount])" />
    </DataBindingSerializable>
</dx:PivotGridField>
```

## Files to Review

* [Default.aspx](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx.vb))

## Documentation

- [Bind Pivot Grid Fields to Calculated Expressions](https://docs.devexpress.com/AspNet/7259/components/pivot-grid/binding-to-data/bind-pivot-grid-field-to-calculated-expression)
- [Data Binding API](https://docs.devexpress.com/CoreLibraries/401533/devexpress-pivot-grid-core-library/data-binding-api)
