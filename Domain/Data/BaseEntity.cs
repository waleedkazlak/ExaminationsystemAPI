using System;

namespace ExaminationsystemAPI.Domain.Data
{
    public class BaseEntity
    {
        public int? Sort { get; set; }
        public bool? Show { get; set; }

        public int? UserID_Add { get; set; }
        public DateTime? Date_Add { get; set; }
        public int? UserID_Edit { get; set; }
        public DateTime? Date_Edit { get; set; }

        public DateTime? Date_Delete { get; set; }

    }
}
