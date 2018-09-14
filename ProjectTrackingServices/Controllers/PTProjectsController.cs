using ProjectTrackingServices.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace ProjectTrackingServices.Controllers
{
    [EnableCors(origins: "http://localhost:2464", headers: "*", methods: "*")]
    public class PTProjectsController : ApiController
    {
        // GET: api/PTProjects
        [Route("api/ptprojects")]
        public HttpResponseMessage Get()
        {
            var projects = ProjectsRepository.GetAllProjects();
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projects);
            return responce;
        }

        // GET: api/PTProjects/5
        [Route("api/ptprojects/{id?}")]
        public HttpResponseMessage Get(int id)
        {
            var projects = ProjectsRepository.GetProjectByID(id);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projects);
            return responce;
        }

        // POST: api/PTProjects
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PTProjects/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PTProjects/5
        public void Delete(int id)
        {
        }
    }
}
