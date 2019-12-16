<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormView控件二_显示图片详细信息.aspx.cs" Inherits="FormView控件二_显示图片详细信息" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FormView控件二_显示图片详细信息</title>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main" style="width:750px;">
     <img src="images/logo.jpg" alt="网站Logo" style="width:750px;"/>
     <br /><br />
     <p style="font:bold 32px 楷体_GB2312;color:#dc793a;padding-left:50px;">作品详细信息</p>
      <hr style="border:3px solid #dc793a;"/>     
        <asp:FormView ID="FormView1" runat="server">
         <ItemTemplate>          
          <table style="border:1px solid #dc793a;width:750px;">
           <tr>
            <td class="tdleft">作品编号：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"picNO")%></td>
            <td rowspan="7">
            <img src='<%#DataBinder.Eval(Container.DataItem,"picFileName")%>' style="height:200px; width:200px; border:1px solid #dc793a;" alt="作品图片"/>
           </td>
           </tr>
           <tr>
            <td class="tdleft">作品名称：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"picName")%></td>
           </tr>
           <tr>
            <td class="tdleft">创作者：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"picCreateName")%></td>
           </tr>
           <tr>
            <td class="tdleft">日期：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem, "picDate", "{0:d}")%></td>
           </tr>
           <tr>
            <td class="tdleft">文件名：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"picFileName")%></td>
           </tr>
           <tr>
            <td class="tdleft">是否审核：</td>
            <td class="tdright">
                <asp:CheckBox ID="CheckBox1" runat="server"  Checked='<%#DataBinder.Eval(Container.DataItem,"picCheck")%>'  Enabled="false"/></td>
           </tr>           
           <tr>
            <td class="tdleft">点评：</td>
            <td class="tdright"><%#DataBinder.Eval(Container.DataItem,"picScript")%></td>
           </tr>           
          </table>          
         </ItemTemplate>        
        </asp:FormView>
        <div class="footer" style="width:750px;">版权所有<a href="wardzhou.art">WardZhou</a></div>
    </div>
    </form>
</body>
</html>
