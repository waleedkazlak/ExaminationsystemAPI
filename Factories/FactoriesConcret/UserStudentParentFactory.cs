using ExaminationsystemAPI.Factories.FactoriesInterfaces;
using System.Collections.Generic;
using System.Reflection.Metadata;
using System;
using System.Text;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.Extensions.Configuration;
using System.Security.Claims;
using ExaminationsystemAPI.Services;
using ExaminationsystemAPI.Domain;

namespace ExaminationsystemAPI.Factories.FactoriesConcret
{
    public class UserStudentParentFactory : IUserStudentParentFactory
    {
        private readonly IConfiguration _configuration;
        private readonly IUserStudentParentService _userStudentParent;

        public UserStudentParentFactory(IConfiguration configuration, IUserStudentParentService userStudentParent)
        {
            _configuration = configuration;
            _userStudentParent = userStudentParent;
        }

        public string GetToken(User_Student_Parent user)
        {
            
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            List<Claim> claims = new List<Claim>();
            claims.Add(new Claim(JwtRegisteredClaimNames.Name, user.FullName.ToString()));
            claims.Add(new Claim(JwtRegisteredClaimNames.Sub , user.UserID.ToString()));
            var id = new ClaimsIdentity(claims);
           
            var token = new JwtSecurityToken(_configuration["Jwt:Issuer"],
              _configuration["Jwt:Issuer"],
              claims,
              expires: DateTime.Now.AddMinutes(60),
              signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);

        }
    }
}
