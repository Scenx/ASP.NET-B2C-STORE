<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoadingControl.ascx.cs" Inherits="LoadingControl" %>        
<table style=" width: 204px; height: 177px; background-image: url(images/��¼.jpg); background-repeat :no-repeat" border="0" cellpadding="0" cellspacing="0" runat =server   id=tabLoading >
    <tr>
        <td align="center" valign="top" style="height: 117px; width: 204px;" >
              <table style="width: 187px; height: 153px; font-size: 9pt; font-family: ����;"  id=table1 >
              <tr>
              <td colspan =2 style="height: 47px">
              </td>
              </tr>
                <tr style ="width: 152px;height: 18px; font-size: 9pt; font-family: ����;">
                    <td style="height: 12px; width: 152px;" >
                        &nbsp;
                        ��Ա����</td>
                    <td style="width: 158px;height: 12px; ">
                        <asp:TextBox ID="txtName" runat="server"  Width="101px" Height="14px"></asp:TextBox></td>
                  
                </tr>
                <tr style ="width: 152px;height: 18px;font-size: 9pt; font-family: ����;">
                    <td style="width: 1014px" >
                        &nbsp; &nbsp;
                        ���룺</td>
                    <td style="width: 158px; ">
                        <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" Height="12px" Width="101px"></asp:TextBox></td>
                   
                </tr>
                <tr style ="width: 152px;height: 18px;font-size: 9pt; font-family: ����;">
                    <td style="width: 152px; height: 18px;" >
                        &nbsp;
                        ��֤�룺</td>
                    <td style="width: 158px" align =left >
                        <asp:TextBox ID="txtValid" runat="server" Height="12px" Width="62px"></asp:TextBox>
                        <asp:Label ID="labValid" runat="server" Text="8888" BackColor="#F7CC42" Font-Names="��Բ" ></asp:Label></td>
                  
                </tr>
                <tr>
                    <td colspan="2" style="height: 28px">
                        &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="btnLoad" runat="server" OnClick="btnLoad_Click" Height="18px" Width="40px" CausesValidation="False" ImageUrl="~/images/��¼��ť.jpg" />
                        <asp:ImageButton ID="btnRegister" runat="server" OnClick="btnRegister_Click" Height="18px" Width="40px" CausesValidation="False" ImageUrl="~/images/ע�ᰴť.jpg"/>
                        </td>
                        
                </tr>
            </table>  
        </td>
    </tr>
</table>
  <table  style=" width: 204px; height: 177px; background-image: url(images/���ѵ�¼.jpg); background-repeat :no-repeat"  runat =server id=tabLoad visible =false border="0" cellpadding="0" cellspacing="0"  >
                <tr>
                          <td align="center" valign="top" style="height: 117px; width: 204px;" >
                             <br />
                              <br />
                              <br />
                              <br />
                             
                             <table style ="width: 178px; height: 50px; font-size: 9pt; font-family: ����;"  id=table2 >
                <tr>
                    <td colspan="2" style="width: 174px; height: 30px;"  >
                        &nbsp; 
                        ��ӭ�˿�<u><%=Session["UserName"]%></u>���٣�</td>
                </tr> 
                <tr>
                    <td colspan="2" style="width: 174px; height: 22px" >
                        &nbsp; &nbsp;&nbsp;
                        <asp:HyperLink ID="hpLinkUser" runat="server" NavigateUrl="~/UpdateMember.aspx">������Ϣ</asp:HyperLink>
                        <asp:LinkButton ID="lnkbtnOut" runat="server" OnClick="lnkbtnOut_Click" CausesValidation="False">��ȫ�˳�</asp:LinkButton></td>
                </tr>
            </table>
            </td></tr>
            </table>


      
           
             