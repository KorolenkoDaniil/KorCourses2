using KorCoursesServer.Entities;
using Microsoft.AspNetCore.Mvc;

namespace KorCoursesServer.Controllers
{
    [Route("api/ApiController")]

    public class ApiController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Content("Hello from API!");
        }



        [HttpPost]
        public IActionResult Post([FromBody] User user)
        {
            if (user == null)
            {
                return BadRequest("Invalid data.");
            }

          
            try
            {
                using (var db = new ApplicationContext())
                {
                    db.Users.Add(user);
                    db.SaveChanges();

                    return Content($"Received user:{user.Id} {user.FirstName}, {user.LastName}, {user.Email},  {user.Password}");
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, "server error " + ex.Message);
            }
           
        }

    }
}