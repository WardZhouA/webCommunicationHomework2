<%@ Page Language="C#" AutoEventWireup="true" CodeFile="图书预览.aspx.cs" Inherits="图书预览" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图书预览</title>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    <style type="text/css">
     .picList{border:1px solid #B7B7B7;margin:0px;width:900px;}
     .picList ul{margin:0px;padding:0px;}
     .picList li{display:inline;float:left;height:270px;margin:10px 12px 20px 0px;width:213px;list-style:none;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <div class="picList">
            <p style="font:40px 楷体_GB2312;color:#0094ff;padding-left:50px;">图书预览</p>
            <hr style="border:3px solid #0094ff;"/>    
            <asp:Repeater runat="server" DataSourceID="SqlDataSource3">
<HeaderTemplate>
         <ul>
        </HeaderTemplate>
        <ItemTemplate>            
         <li>
           <img alt="<%# Eval("封面图片") %> "  src="<%# Eval("封面图片") %>" height="210px" weight="210px" >
          <a href="图书详细.aspx?id=<%# Eval("图书编号") %>" target="_blank" > 
          <p style="font:16px 楷体_GB2312;color:green;">书名：<span><%# Eval("书名") %></span></p>       

          <p style="font:16px 楷体_GB2312;color:green;">作者：<span><%# Eval("作者") %></span></p>   

         </li>  
        </ItemTemplate>
        <FooterTemplate>
                
        </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:图书征订ConnectionString %>" SelectCommand="SELECT * FROM [图书信息表]"></asp:SqlDataSource>
        </div>
            <div class="footer" style="width:898px;">copyright &copy;2019<a href="wardzhou.art">WardZhou</a></div>
            </div>
    </form>
</body>

</html>
