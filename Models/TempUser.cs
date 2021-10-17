using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HumanitarianAid.Models
{
    public class TempUser
    {

       [Required(AllowEmptyStrings =false,ErrorMessage ="Email is required")]

        [DataType(DataType.EmailAddress)]
        [Display(Name = "Email")]
        public string D_mail { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string D_Password { get; set; }

       // public string selectedType { get; set; }
















    }
}