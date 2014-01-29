<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>

    <link href="Content/style.css" rel="stylesheet" />
    <script src="Content/script.js"></script>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="SendButton">

        <div id="main">
            <h1>
                <asp:Literal ID="header" runat="server">Kassakvitto</asp:Literal></h1>
            <%--Köpsumma--%>
            <div>
                <asp:Label ID="SumLabel" runat="server" Text="Total köpsumma:"></asp:Label>
                <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
                <asp:Literal ID="Literal_kr" runat="server"> kr</asp:Literal>

                 <%--Validering--%>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ErrorMessage="Ange en köpsumma."
                ControlToValidate="SumTextBox"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

             <asp:CompareValidator ID="CompareValidator2" runat="server"
                ErrorMessage="Ange en köpsumma större än 0."
                Display="Dynamic"
                Operator="GreaterThan"
                ValueToCompare="0" Type="Currency" 
                ControlToValidate="SumTextBox">
            </asp:CompareValidator>
            </div>
 
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click" />

        </div>
    </form>

</body>
</html>
