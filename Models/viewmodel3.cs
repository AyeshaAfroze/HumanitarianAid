using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HumanitarianAid.Models
{
    public class viewmodel3
    {
        public int DonationId { get; set; }
        public string ProductName { get; set; }

        public string DonorName { get; set; }
        public string Address { get; set; }
        public int PhoneNo { get; set; }
        public string Email { get; set; }
        public int AnnualIncome { get; set; }
        public string Occupation { get; set; }
    }
}