<%@ Page Language="C#" AutoEventWireup="true" CodeFile="互动图书信息浏览.aspx.cs" Inherits="互动图书信息浏览" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="图书名称："></asp:Label>
            <asp:DropDownList ID="dropdownlist1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="书名" DataValueField="书名"></asp:DropDownList>
            
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:图书征订ConnectionString %>" SelectCommand="SELECT DISTINCT [书名] FROM [图书信息表]"></asp:SqlDataSource>
                     <br/>  <asp:Label ID="Label2" runat="server" Text="图书详情："></asp:Label>

            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="图书编号">
                <EditItemTemplate>
                    图书编号:
                    <asp:Label ID="图书编号Label1" runat="server" Text='<%# Eval("图书编号") %>' />
                    <br />
                    书名:
                    <asp:TextBox ID="书名TextBox" runat="server" Text='<%# Bind("书名") %>' />
                    <br />
                    ISBN:
                    <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    <br />
                    类型:
                    <asp:TextBox ID="类型TextBox" runat="server" Text='<%# Bind("类型") %>' />
                    <br />
                    作者:
                    <asp:TextBox ID="作者TextBox" runat="server" Text='<%# Bind("作者") %>' />
                    <br />
                    出版社:
                    <asp:TextBox ID="出版社TextBox" runat="server" Text='<%# Bind("出版社") %>' />
                    <br />
                    出版日期:
                    <asp:TextBox ID="出版日期TextBox" runat="server" Text='<%# Bind("出版日期") %>' />
                    <br />
                    定价:
                    <asp:TextBox ID="定价TextBox" runat="server" Text='<%# Bind("定价") %>' />
                    <br />
                    印次:
                    <asp:TextBox ID="印次TextBox" runat="server" Text='<%# Bind("印次") %>' />
                    <br />
                    库存数量:
                    <asp:TextBox ID="库存数量TextBox" runat="server" Text='<%# Bind("库存数量") %>' />
                    <br />
                    封面图片:
                    
                    <asp:TextBox ID="封面图片TextBox" runat="server" Text='<%# Bind("封面图片") %>' />
                    <br />
                    简介:
                    <asp:TextBox ID="简介TextBox" runat="server" Text='<%# Bind("简介") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    图书编号:
                    <asp:TextBox ID="图书编号TextBox" runat="server" Text='<%# Bind("图书编号") %>' />
                    <br />
                    书名:
                    <asp:TextBox ID="书名TextBox" runat="server" Text='<%# Bind("书名") %>' />
                    <br />
                    ISBN:
                    <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                    <br />
                    类型:
                    <asp:TextBox ID="类型TextBox" runat="server" Text='<%# Bind("类型") %>' />
                    <br />
                    作者:
                    <asp:TextBox ID="作者TextBox" runat="server" Text='<%# Bind("作者") %>' />
                    <br />
                    出版社:
                    <asp:TextBox ID="出版社TextBox" runat="server" Text='<%# Bind("出版社") %>' />
                    <br />
                    出版日期:
                    <asp:TextBox ID="出版日期TextBox" runat="server" Text='<%# Bind("出版日期") %>' />
                    <br />
                    定价:
                    <asp:TextBox ID="定价TextBox" runat="server" Text='<%# Bind("定价") %>' />
                    <br />
                    印次:
                    <asp:TextBox ID="印次TextBox" runat="server" Text='<%# Bind("印次") %>' />
                    <br />
                    库存数量:
                    <asp:TextBox ID="库存数量TextBox" runat="server" Text='<%# Bind("库存数量") %>' />
                    <br />
                    封面图片:
                    <asp:TextBox ID="封面图片TextBox" runat="server" Text='<%# Bind("封面图片") %>' />
                    <br />
                    简介:
                    <asp:TextBox ID="简介TextBox" runat="server" Text='<%# Bind("简介") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    图书编号:
                    <asp:Label ID="图书编号Label" runat="server" Text='<%# Eval("图书编号") %>' />
                    <br />
                    书名:
                    <asp:Label ID="书名Label" runat="server" Text='<%# Bind("书名") %>' />
                    <br />
                    ISBN:
                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Bind("ISBN") %>' />
                    <br />
                    类型:
                    <asp:Label ID="类型Label" runat="server" Text='<%# Bind("类型") %>' />
                    <br />
                    作者:
                    <asp:Label ID="作者Label" runat="server" Text='<%# Bind("作者") %>' />
                    <br />
                    出版社:
                    <asp:Label ID="出版社Label" runat="server" Text='<%# Bind("出版社") %>' />
                    <br />
                    出版日期:
                    <asp:Label ID="出版日期Label" runat="server" Text='<%# Bind("出版日期") %>' />
                    <br />
                    定价:
                    <asp:Label ID="定价Label" runat="server" Text='<%# Bind("定价") %>' />
                    <br />
                    印次:
                    <asp:Label ID="印次Label" runat="server" Text='<%# Bind("印次") %>' />
                    <br />
                    库存数量:
                    <asp:Label ID="库存数量Label" runat="server" Text='<%# Bind("库存数量") %>' />
                    <br />
                    封面图片:
                    <img src='<%# Eval("封面图片") %>' style="height:160px;width:135px;border:1px solid #dc793a;" alt="图书封面图片">
                   <br />
                    简介:
                    <asp:Label ID="简介Label" runat="server" Text='<%# Bind("简介") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:图书征订ConnectionString %>" SelectCommand="SELECT * FROM [图书信息表] WHERE ([书名] = @书名)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropdownlist1" Name="书名" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
