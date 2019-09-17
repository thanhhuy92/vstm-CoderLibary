﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="CoderLibary.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="bookDetail" runat="server"
        ItemType="CoderLibary.Models.Book" SelectMethod ="GetDetails"
        RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.BookName %></h1>                
            </div>
            <br />
            <table>
                <tr> 
                    <td>
                        <img src="/Images/<%#:Item.ImagePath %>"
                            style="border:solid; height:225px" alt="<%#:Item.BookName %>"/>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align: top; text-align:left;">
                        <b>Thong Tin:</b><%#:Item.Description %> 
                        <br />
                        <span><b>Don Gia:</b>&nbsp;<%#: String.Format("{0:c}",Item.UnitPrice) %></span>
                        <br />
                        <span><b>Ma Sach:</b>&nbsp;<%#:Item.BookID %></span>
                        <br />
                        <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>">
                            <span><b>Thêm Vào Giỏ Hàng<b></span>
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView> 
</asp:Content>
