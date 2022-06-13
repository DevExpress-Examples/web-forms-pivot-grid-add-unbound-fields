<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1892)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Pivot Grid for Web Forms - How to Add Unbound Fields

The following example shows how to add unbound fields to the [ASPxPivotGrid](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ASPxPivotGrid).

*Unbound fields* can be supplied with data using custom logic. To supply an unbound field with data, use the [ExpressionBindingBase](https://docs.devexpress.com/CoreLibraries/DevExpress.PivotGrid.DataBinding.ExpressionBindingBase) class, and pass to the [Expression](https://docs.devexpress.com/CoreLibraries/DevExpress.PivotGrid.DataBinding.ExpressionBindingBase.Expression) property a string expression to calculate.

In this example, the *DiscountAmount* and *PriceWithDiscount* pivot grid's fields are the unbound ones:
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

## Files to Look At

* [Default.aspx](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx))
* [Default.aspx.cs](./CS/ASPxPivotGrid_CalculateUnboundData/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_CalculateUnboundData/Default.aspx.vb))

## Documentation

- [Unbound Fields](https://docs.devexpress.com/AspNet/7259/components/pivot-grid/binding-to-data/unbound-fields)
- [Data Binding API](https://docs.devexpress.com/CoreLibraries/401533/devexpress-pivot-grid-core-library/data-binding-api)
