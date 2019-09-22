<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="CoderLibary.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="bookDetail" runat="server"
        ItemType="CoderLibary.Models.Book" SelectMethod ="GetDetails"
        RenderOuterTable="false">
        <ItemTemplate>
            <br />
            <table style="width: 80%;margin-bottom: 1em;">
                <tr> 
                    <td>
                        <img src="/Images/<%#:Item.ImagePath %>"
                            style="border: 5px solid #fff;margin-left: 1em;width: auto;height: 350px" alt="<%#:Item.BookName %>"/>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align: top; text-align:left; width: 40%">
                        <h1><%#:Item.BookName %></h1>
                        <hr/>
                        <b>Thông Tin:</b><%#:Item.Description %>
                        <br />
                        <hr />
                        <span><b>Giá:</b>&nbsp;<%#: String.Format("{0:c}",Item.UnitPrice) %></span>
                        <br />
                        <hr />
                        <span><b>Mã Sách:</b>&nbsp;<%#:Item.BookID %></span>
                        <br />
                        <hr />
                        <a class="btncart" href="AddToCart.aspx?bookID=<%#:Item.BookID%>">
                            <br />
                            <span><b style="color: #fff;Background: #FF8C00;padding: 1em;">Thêm Vào Giỏ Hàng</b></span>
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView> 
</asp:Content>
