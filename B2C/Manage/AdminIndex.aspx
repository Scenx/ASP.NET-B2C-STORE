﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminIndex.aspx.cs" Inherits="Manger_AdminIndex" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>后台功能</title>
</head>
<frameset id="frame" framespacing="0" border="false" cols="200,*" frameborder="0" >
	<frame name="left"  scrolling="no" marginwidth="0" marginheight="0" src="Left.aspx" noresize  >
	<frameset framespacing="0" border="false" rows="60,*" frameborder="0" >
		<frame name="top" scrolling="no" src="Top.aspx">
		<frame name="right" scrolling="no" src="Main.aspx">
	</frameset>
</frameset>

</html>
