using ExaminationsystemAPI.Domain.Data;
using Microsoft.OData.Edm;
using System;

namespace ExaminationsystemAPI.Domain
{
    public class User_Student_Parent : BaseEntity
    {
        public int UserID { get; set; }
        public int? UserStatusID { get; set; }
        public int? UserTypeID { get; set; }
        public int? StudentTypeID { get; set; }
        public int? ParentID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool? ParentAccountRequired { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullNameArabic { get; set; }
        public string FullName { get; set; }
        public string BornPlaceArabic { get; set; }
        public int? GenderID { get; set; }
        public string Email { get; set; }
        public string IDNumber { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public Date? BithDate { get; set; }
        public string Address { get; set; }
        public int? CountryID_Nationality { get; set; }
        public int? CountryID_Address { get; set; }
        public int? CityID_Address { get; set; }
        public string SkypeAccount { get; set; }
        public string Photo { get; set; }
        public string State { get; set; }
        public string Town { get; set; }
        public string ZipCode { get; set; }
        public DateTime? RegistartionDate { get; set; }
        public int? DepartmentID { get; set; }
        public int? BranchID { get; set; }
     
    }
}
