using System.Collections.Generic;
using System.Reflection.Metadata;
using System;
using ExaminationsystemAPI.Domain;

namespace ExaminationsystemAPI.Factories.FactoriesInterfaces
{
    public interface IUserStudentParentFactory
    {
       string GetToken(User_Student_Parent user);
        
    }
}
