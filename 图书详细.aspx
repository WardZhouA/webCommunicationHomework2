<%@ Page Language="C#" AutoEventWireup="true" CodeFile="图书详细.aspx.cs" Inherits="图书详细" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图书详情</title>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <p style="font: 40px 楷体_GB2312;color:#0094ff;padding-left:50px;">图书详情</p>
             <hr style="border:3px solid #0094ff;"/>    
            <asp:FormView ID="FormView1" runat="server" Height="415px" Width="895px">
                 <ItemTemplate>          
          <table style="border:1px solid #0094ff;width:750px;">
           <tr>
            <td class="tdleft">图书编号：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"图书编号")%></td>
            <td rowspan="7">
            <img src='<%#DataBinder.Eval(Container.DataItem,"封面图片")%>' style="height:280px; width:200px; border:1px solid #0094ff;" alt="封面图片"/>
           </td>
           </tr>
           <tr>
            <td class="tdleft">书名：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"书名")%></td>
           </tr>
           <tr>
            <td class="tdleft">作者：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"作者")%></td>
           </tr>
           <tr>
            <td class="tdleft">出版日期：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem, "出版日期", "{0:d}")%></td>
           </tr>
           <tr>
            <td class="tdleft">出版社：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"出版社")%></td>
           </tr>
               <tr>
            <td class="tdleft">ISBN：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"ISBN")%></td>
           </tr>
                      <tr>
            <td class="tdleft">类型：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"类型")%></td>
           </tr>      
               <tr>
            <td class="tdleft">定价：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"定价")%></td>
           </tr>      
                     
               <tr>
            <td class="tdleft">库存数量：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"库存数量")%></td>
           </tr> 
               <tr>
            <td class="tdleft">印次：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"印次")%></td>
           </tr>     
              <tr>
            <td class="tdleft">简介：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"简介")%></td>
           </tr>
          </table>          
         </ItemTemplate> 
            </asp:FormView>
           <div class="footer" style="width:898px;">copyright &copy;2019<a href="wardzhou.art">WardZhou</a></div>
        </div>
    </form>
    
</body>
</html>
