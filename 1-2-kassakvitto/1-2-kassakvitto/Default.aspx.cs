﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
               
                var Receipt = new Receipt(double.Parse(SumTextBox.Text));
                PlaceHolder1.Visible = true;
                subTotal.Text=String.Format("{0:c}", Receipt.Subtotal);
                discountRate.Text = String.Format("{0:p0}", Receipt.DiscountRate);
                moneyOff.Text = String.Format("{0:c}", Receipt.MoneyOff);
                total.Text = String.Format("{0:c}", Receipt.Total);
             };
        }
    }
}