<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="CoderLibary.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="ShoppingCartTitle" runat="server" class="ContentHead" style="font-size:2.5em;font-weight:bold;text-align:center;"><p>Giỏ Hàng</p></div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4" ItemType="CoderLibary.Models.CartItem" SelectMethod ="GetShoppingCartItems" CssClass="table table-striped table-bordered" >
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Mã Sách" SortExpression="BookID" HeaderStyle-CssClass="cartcenter" />
            <asp:BoundField DataField="Book.BookName" HeaderText="Tên Sách" HeaderStyle-CssClass="cartcenter"/>
            <asp:BoundField DataField="Book.UnitPrice" HeaderText="Đơn Giá" DataFormatString="{0:c}" HeaderStyle-CssClass="cartcenter"/>
            <asp:TemplateField HeaderText="Số Lượng" HeaderStyle-CssClass="cartcenter">
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tổng Tiền" HeaderStyle-CssClass="cartcenter">
                <ItemTemplate>
                    <%#: String.Format("{0:c}",((Convert.ToDouble(Item.Quantity)) * Convert.ToDouble(Item.Book.UnitPrice)))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Xóa Sách" HeaderStyle-CssClass="cartcenter">                
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div style="text-align:end;margin-right:1em;">
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="TỔNG SỐ TIỀN (GỒM VAT):"></asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
        </strong>
    </div>
    <br />
    <table style="margin:auto;"> 
        <tr> 
            <td>
                <Button ID="ChonBtn" runat="server" style="background-color:#FF8C00;border:none;height:40px;margin-right:1em;"><a href="BookList.aspx" style="color:#fff;text-decoration:none;text-align:center;">Thêm Sách</a></Button>
                <asp:Button ID="UpdateBtn" runat="server" Text="Cập Nhật Giỏ Hàng" OnClick="UpdateBtn_Click" />
            </td>
        </tr>
    </table> 
</asp:Content>
