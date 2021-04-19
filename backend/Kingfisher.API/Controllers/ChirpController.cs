using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Kingfisher.API.Models;
using Microsoft.AspNetCore.Mvc;

namespace Kingfisher.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ChirpController : ControllerBase
    {
        [HttpPost]
        public void Create(Chirp chirp)
        {

        }
    }
}
