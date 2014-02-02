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
            <div id="upperPartDiv">
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
                        ValueToCompare="0" Type="Double"
                        ControlToValidate="SumTextBox"></asp:CompareValidator>
                </div>
                <%--Skickaknapp--%>
                <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click" />
            </div>
            <%--Kvitto--%>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
                <div id="reciept">
                     <%--Tel.nr, öppettider--%>
                    <asp:Panel ID="Panel1" runat="server" CssClass="center">
                        <p class="header1">
                            <asp:Label ID="Label2" runat="server" Text="DeVe"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="En del av EllenU"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Tel: 0772-28 80 00"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label4" runat="server" Text="Öppettider 8-17"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label5" runat="server" Text="EV. FEL GER UNDERKÄNT"></asp:Label>
                        </p>
                    </asp:Panel>
                     <%--Sifferdelen--%>
                    <asp:Panel ID="calculatedPanel" runat="server">
                        <p>
                            <asp:Label ID="Label8" runat="server" CssClass="recieptLabel" Text="Totalt"></asp:Label>
                            <asp:Label ID="subTotal" runat="server" CssClass="right" Text="Label"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label10" runat="server" CssClass="recieptLabel" Text="Rabattsats"></asp:Label>
                            <asp:Label ID="discountRate" runat="server" CssClass="right" Text="Label"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label12" runat="server" CssClass="recieptLabel" Text="Rabatt"></asp:Label>
                            <asp:Label ID="moneyOff" runat="server" CssClass="right" Text="Label"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label14" runat="server" CssClass="recieptLabel" Text="Att betala"></asp:Label>
                            <asp:Label ID="total" runat="server" CssClass="right" Text="Label"></asp:Label>
                        </p>
                    </asp:Panel>
                     <%--Org.nr--%>
                    <asp:Panel ID="Panel3" runat="server" CssClass="center">
                        <p>
                            <asp:Label ID="Label6" runat="server" Text="ORG.NR 202100-6271"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label7" runat="server" Text="VÄLKOMMEN ÅTER"></asp:Label>
                        </p>
                    </asp:Panel>
                </div>
            </asp:PlaceHolder>

        </div>
    </form>
</body>
</html>
