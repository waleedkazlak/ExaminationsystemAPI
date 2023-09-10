using ExaminationsystemAPI.Models;
using ExaminationsystemAPI.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Factories
{
    public interface ICountryFactory
    {
        MethodResult<List<CountryDTOv1>> PrepareCountrysList();

        MethodResult<CountryDTOv1> PrepareCountryById(int Id);
        MethodResult<int> CreateOrUpdateCountry(CountryDTOv1 Country);
     
        MethodResult<bool> DeleteCountry(int Id);
    }
}
