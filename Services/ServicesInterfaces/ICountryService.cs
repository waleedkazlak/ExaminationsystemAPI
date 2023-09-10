using ExaminationsystemAPI.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Services
{
    public interface ICountryService
    {
        List<Country> GetAll();
        Country GetById(int Id);
        int Add(Country obj);

        void Update(Country obj);

        void Delete(int Id);

    }
}
