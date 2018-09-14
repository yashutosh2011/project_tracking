using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ProjectTrackingServices.Models;

namespace ProjectTrackingServices.Controllers
{
    public class PTProjectTasksController : ApiController
    {
        // GET: api/PTProjectTasks
        [Route("api/ptprojecttasks")]
        public HttpResponseMessage Get()
        {
            var projectTasks = ProjectTasksRepository.GetAllTasks();
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projectTasks);
            return responce;
        }

        // GET: api/PTProjectTasks/5
        [Route("api/ptprojecttasks/{id?}")]
        public HttpResponseMessage Get(int id)
        {
            var projectsTasks = ProjectTasksRepository.GetProjectTaskByID(id);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, projectsTasks);
            return responce;
        }

        // POST: api/PTProjectTasks
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PTProjectTasks/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PTProjectTasks/5
        public void Delete(int id)
        {
        }
    }
}
