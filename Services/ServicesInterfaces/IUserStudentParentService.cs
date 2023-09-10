using ExaminationsystemAPI.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExaminationsystemAPI.Services
{
    public interface IUserStudentParentService
    {
        bool IsValidUser(string username, string password);
        List<User_Student_Parent> GetAll();
        User_Student_Parent GetById(int Id);
        int Add(User_Student_Parent obj);

        void Update(User_Student_Parent obj);

        void Delete(int Id);

    }
}
