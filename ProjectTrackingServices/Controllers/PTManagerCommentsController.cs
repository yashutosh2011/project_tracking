using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ProjectTrackingServices.Models;

namespace ProjectTrackingServices.Controllers
{
    public class PTManagerCommentsController : ApiController
    {
        // GET: api/PTManagerComments
        [Route("api/ptmanagercomments")]
        public HttpResponseMessage Get()
        {
            var mangerComments = MangerCommentsRepository.GetAllManagerComments();
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, mangerComments);
            return responce;
        }

        // GET: api/PTManagerComments/5
        [Route("api/ptmanagercomments/{id?}")]
        public HttpResponseMessage Get(int id)
        {
            var managerComments = MangerCommentsRepository.GetManagerCommentById(id);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, managerComments);
            return responce;
        }

        // POST: api/PTManagerComments
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PTManagerComments/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PTManagerComments/5
        public void Delete(int id)
        {
        }
    }
}
