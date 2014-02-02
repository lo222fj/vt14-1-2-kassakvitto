using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_2_kassakvitto
{
    public class Receipt
    {
        //fält
        private double _subtotal;

        //egenskaper
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Subtotal
        {
            get
            { 
                return _subtotal; 
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentException();
                }
                else
                {
                    _subtotal = value;
                }
            }
        }
        public double Total { get; private set; }

        //metoder
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            if (Subtotal < 500)
            { 
                DiscountRate = 0; 
            }
            else if (Subtotal < 1000)
            { DiscountRate = 0.05; }
            else if (Subtotal < 5000)
            { DiscountRate = 0.1; }
            else
            { DiscountRate = 0.15; }

            MoneyOff = _subtotal * DiscountRate;
            Total = _subtotal - MoneyOff;
        }

    }
}