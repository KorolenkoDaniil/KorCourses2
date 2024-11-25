using Microsoft.AspNetCore.Mvc;

namespace KorCoursesServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Content("Hello from API!");
        }
    }
}
