<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="CoderLibary.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="ShoppingCartTitle" runat="server" class="ContentHead" style="margin-bottom:2em;"><h1>Giỏ Hàng</h1></div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4" ItemType="CoderLibary.Models.CartItem" SelectMethod ="GetShoppingCartItems" CssClass="table table-striped table-bordered" >
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Mã Sách" SortExpression="BookID" />
            <asp:BoundField DataField="Book.BookName" HeaderText="Tên Sách" />
            <asp:BoundField DataField="Book.UnitPrice" HeaderText="Đơn Giá" DataFormatString="{0:c}"/>
            <asp:TemplateField HeaderText="Số Lượng">
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tổng Tiền">
                <ItemTemplate>
                    <%#: String.Format("{0:c}",((Convert.ToDouble(Item.Quantity)) * Convert.ToDouble(Item.Book.UnitPrice)))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Xóa Sách">                
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
    <table style="float:right;margin-right:1em;"> 
        <tr> 
            <td>
                <Button style="background-color:#FF8C00;border:none;height:40px;margin-right:1em;"><a href="BookList.aspx" style="color:#fff;text-decoration:none;">Chọn Thêm</a></Button>
                <asp:Button ID="UpdateBtn" runat="server" Text="Cập Nhật Giỏ Hàng" OnClick="UpdateBtn_Click" />
            </td>
        </tr>
    </table> 
</asp:Content>
