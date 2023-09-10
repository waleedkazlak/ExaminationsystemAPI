using ExaminationsystemAPI.Domain;
using ExaminationsystemAPI.Models;
using ExaminationsystemAPI.Models.DTO;
using ExaminationsystemAPI.Services;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Factories
{
    public class CountryFactory : ICountryFactory
    {
        private readonly ICountryService _CountryService;
        private readonly IMapper _mapper;

        public CountryFactory(ICountryService CountryService, IMapper mapper)
        {
            _CountryService = CountryService;
            _mapper = mapper;
        }
        public MethodResult<int> CreateOrUpdateCountry(CountryDTOv1 Country)
        {
            MethodResult<int> methodResult = new MethodResult<int>();
            try
            {
                var CountryEntity = _mapper.Map<Country>(Country);
                if (Country.CountryID  > 0)
                {
                     _CountryService.Update(CountryEntity);
                    methodResult.Data = Country.CountryID;
                    methodResult.Message = "Country has been updated";
                }
                else
                {
                    int id = _CountryService.Add(CountryEntity);
                    methodResult.Data = id;
                    methodResult.Message = "New Country has been created";
                }
               
                methodResult.IsSuccess = true;
                return methodResult;
            }
            catch (Exception ex)
            {
                methodResult.IsSuccess = false;
                methodResult.Errors.Add($"Error happened : {ex.Message}");
                return methodResult;
            }
        }

      
        public MethodResult<bool> DeleteCountry(int Id)
        {
            MethodResult<bool> methodResult = new MethodResult<bool>();
            try
            {
                var CountryEntity = _CountryService.GetById(Id);
                if (CountryEntity == null)
                {
                    methodResult.IsSuccess = false;
                    methodResult.Data = false;
                    methodResult.Errors.Add($"No Country with Id= {Id}");
                    return methodResult;
                }
                _CountryService.Delete(Id);

                methodResult.IsSuccess = true;
                methodResult.Data = true;
                methodResult.Message = "Country has been deleted";
                return methodResult;
            }
            catch (Exception ex)
            {
                methodResult.IsSuccess = false;
                methodResult.Errors.Add($"Error happened : {ex.Message}");
                return methodResult;
            }
        }

        public MethodResult<CountryDTOv1> PrepareCountryById(int Id)
        {
            MethodResult<CountryDTOv1> methodResult = new MethodResult<CountryDTOv1>();
            try
            {
                var CountryEntity = _CountryService.GetById(Id);
                if (CountryEntity == null)
                {
                    methodResult.IsSuccess = false;
                    methodResult.Errors.Add($"No Country with Id= {Id}");
                    return methodResult;
                }
                var CountryDTO = _mapper.Map<CountryDTOv1>(CountryEntity);
                methodResult.Data = CountryDTO;
                methodResult.IsSuccess = true;
                methodResult.Message = "Country has been prepared";
                return methodResult;
            }
            catch (Exception ex)
            {
                methodResult.IsSuccess = false;
                methodResult.Errors.Add($"Error happened : {ex.Message}");
                return methodResult;
            }
        }

        public MethodResult<List<CountryDTOv1>> PrepareCountrysList()
        {
            MethodResult<List<CountryDTOv1>> methodResult = new MethodResult<List<CountryDTOv1>>();
            try
            {
                var CountryList = _CountryService.GetAll().Select(x => new CountryDTOv1
                {
                   CountryID = x.CountryID, 
                   CountryName = x.CountryName, 
                   NationalityArabic =  x.NationalityArabic,
                   Show = x.Show,
                   Sort=x.Sort,
                });

                methodResult.Data = CountryList.ToList();
                methodResult.IsSuccess = true;
                methodResult.Message = "Country has been prepared";
                return methodResult;
            }
            catch (Exception ex)
            {
                methodResult.IsSuccess = false;
                methodResult.Errors.Add($"Error happened : {ex.Message}");
                return methodResult;
            }
        }

      
    }
}
