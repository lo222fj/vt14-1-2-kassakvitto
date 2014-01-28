<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Content/script.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Literal ID="header" runat="server">Kassakvitto</asp:Literal></h1>
            <div>
                <asp:Label ID="SumLabel" runat="server" Text="Total köpsumma:" AssociatedControlID ="SumTextBox"></asp:Label>
                <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
                <asp:Literal ID="Literal_kr" runat="server"> kr</asp:Literal>
            </div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click"  />

        </div>
    </form>
</body>
</html>
