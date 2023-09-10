using ExaminationsystemAPI.Models.DTO;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Validators
{
    public class FullCountryValidator : AbstractValidator<CountryDTOv1>
    {
        public FullCountryValidator()
        {
           
            RuleFor(x => x.CountryName).NotEmpty().NotNull().WithMessage($"{nameof(CountryDTOv1.CountryName)} is required.");
            RuleFor(x => x.NationalityArabic).NotEmpty().NotNull().WithMessage($"{nameof(CountryDTOv1.NationalityArabic)} is required.");
        }
        
    }
}
