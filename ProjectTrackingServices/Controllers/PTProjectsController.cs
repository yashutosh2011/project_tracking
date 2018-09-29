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
    [EnableCors(origins: "*", headers: "*", methods: "*")]
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
        [Route("api/ptprojects")]
        public HttpResponseMessage Post(Project p)
        {
            var projects = ProjectsRepository.InsertProjects(p);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projects);
            return responce;
        }

        // PUT: api/PTProjects/5
        [Route("api/ptprojects")]
        public HttpResponseMessage Put(Project p)
        {
            var projects = ProjectsRepository.UpdateProjects(p);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projects);
            return responce;
        }

        // DELETE: api/PTProjects/5
        [Route("api/ptprojects")]
        public HttpResponseMessage Delete(Project p)
        {
            var projects = ProjectsRepository.DeleteProjects(p);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projects);
            return responce;
        }
    }
}
