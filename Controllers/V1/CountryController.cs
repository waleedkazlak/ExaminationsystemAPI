using ExaminationsystemAPI.Factories;
using ExaminationsystemAPI.Models.DTO;
using ExaminationsystemAPI.Models.Responses;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Controllers.V1
{
    [Route("api/v{version:apiVersion}/[controller]/[Action]")]
    [ApiController]
    [ApiVersion("1.0")]
    public class CountryController : ControllerBase
    {
        private readonly ILogger<CountryController> _logger;
        private readonly ICountryFactory _CountryFactory;

        public CountryController(ILogger<CountryController> logger, ICountryFactory CountryFactory)
        {
            _logger = logger;
            _CountryFactory = CountryFactory;
        }

        [HttpGet]
        [Produces(contentType: "application/json", Type = typeof(APIBaseResponse<List<CountryDTOv1>>))]
        public IActionResult GetAll()
        {
            var response = new APIBaseResponse<List<CountryDTOv1>>();
            var methodResult = _CountryFactory.PrepareCountrysList();
            if (methodResult.IsSuccess)
            {
                response.Data = methodResult.Data;
                response.TotalRecords = methodResult.Data.Count;
                response.SuccessMessage = methodResult.Message;
                return Ok(response);
            }
            else
            {
                response.ErrorList = methodResult.Errors;
                return response.GetHttpErrorResponse(System.Net.HttpStatusCode.BadRequest);
            }

        }

        [HttpGet]
        [Route("{id:maxlength(10)}")]
        [Produces(contentType: "application/json", Type = typeof(APIBaseResponse<CountryDTOv1>))]
        public IActionResult GetById(int id)
        {
            var response = new APIBaseResponse<CountryDTOv1>();
            var methodResult = _CountryFactory.PrepareCountryById(id);
            if (methodResult.IsSuccess)
            {
                response.Data = methodResult.Data;
                response.SuccessMessage = methodResult.Message;
                return Ok(response);
            }
            else
            {
                response.ErrorList = methodResult.Errors;
                return response.GetHttpErrorResponse(System.Net.HttpStatusCode.BadRequest);
            }

        }

        [HttpPost]
        [Produces(contentType: "application/json", Type = typeof(APIBaseResponse<int>))]
        public IActionResult Add(CountryDTOv1 model)
        {
            var response = new APIBaseResponse<int>();
            var methodResult = _CountryFactory.CreateOrUpdateCountry(model);
            if (methodResult.IsSuccess)
            {
                response.Data = methodResult.Data;
                response.SuccessMessage = methodResult.Message;
                return Ok(response);
            }
            else
            {
                response.ErrorList = methodResult.Errors;
                return response.GetHttpErrorResponse(System.Net.HttpStatusCode.BadRequest);
            }

        }

        [HttpPut]
        [Produces(contentType: "application/json", Type = typeof(APIBaseResponse<int>))]
        public IActionResult Update(CountryDTOv1 model)
        {
            var response = new APIBaseResponse<int>();
            var methodResult = _CountryFactory.CreateOrUpdateCountry(model);
            if (methodResult.IsSuccess)
            {
                response.Data = methodResult.Data;
                response.SuccessMessage = methodResult.Message;
                return Ok(response);
            }
            else
            {
                response.ErrorList = methodResult.Errors;
                return response.GetHttpErrorResponse(System.Net.HttpStatusCode.BadRequest);
            }

        }

        [HttpDelete]
        [Produces(contentType: "application/json", Type = typeof(APIBaseResponse<bool>))]
        public IActionResult Delete(int id)
        {
            var response = new APIBaseResponse<bool>();
            var methodResult = _CountryFactory.DeleteCountry(id);
            if (methodResult.IsSuccess)
            {
                response.Data = methodResult.Data;
                response.SuccessMessage = methodResult.Message;
                return Ok(response);
            }
            else
            {
                response.ErrorList = methodResult.Errors;
                return response.GetHttpErrorResponse(System.Net.HttpStatusCode.BadRequest);
            }

        }
    }
}
