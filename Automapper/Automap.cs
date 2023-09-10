using ExaminationsystemAPI.Domain;
using ExaminationsystemAPI.Models.DTO;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Automapper
{
    public class Automap : Profile
    {
        /// <summary>
        /// default constructor
        /// </summary>
        public Automap()
        {
            CreateMap<CountryDTOv1, Country>().ReverseMap();
        }
    }
}
