using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExaminationsystemAPI.Domain.Data;

namespace ExaminationsystemAPI.Domain
{
    public class Country : BaseEntity
    {
        public int CountryID { get; set; }
        public string CountryName { get; set; }
        public string NationalityArabic { get; set; }

       

    }
}
