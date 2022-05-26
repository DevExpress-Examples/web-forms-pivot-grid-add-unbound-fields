<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
       Inherits="AddUnboundField._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.7.0,
       Culture=neutral, PublicKeyToken=b88d1754d700e49a"
       Namespace="DevExpress.Web.ASPxPivotGrid"
       TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="SqlDataSource1"
            OptionsData-DataProcessingEngine="Optimized" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldSalesperson" Area="RowArea"
                      AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Salesperson" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea"
                      AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Country" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea"
                      AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ExtendedPrice" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldDiscount" Area="DataArea"
                      AreaIndex="1" SummaryType="Average">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Discount" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
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
            </Fields>

<OptionsData DataProcessingEngine="Optimized"></OptionsData>
        </dx:ASPxPivotGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [Salesperson], [Country],
                [ExtendedPrice], [Discount]
                FROM [Invoices]" />
    </div>
    </form>
</body>
</html>
