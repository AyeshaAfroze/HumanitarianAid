using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HumanitarianAid.Models
{
    public class viewmodel2
    {
        public string ProductName { get; set; }
        public decimal Quantity { get; set; }
        public string DonorName { get; set; }
        public string DonorAddress { get; set; }
        public int DonorPhoneNo { get; set; }
        public string SeekerName { get; set; }
        public string SeekerAddress { get; set; }
        public int SeekerPhoneNo { get; set; }
    }
}