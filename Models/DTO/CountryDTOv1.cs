using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Models.DTO
{
    public class CountryDTOv1
    {
        public int CountryID { get; set; }
        public string CountryName { get; set; }
        public string NationalityArabic { get; set; }

        public int? Sort { get; set; }
        public bool? Show { get; set; }
    }
}
