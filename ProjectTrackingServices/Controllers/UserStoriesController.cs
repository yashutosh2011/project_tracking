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
    [EnableCors(origins: "http://localhost:50651", headers:"*",methods:"*")]
    public class UserStoriesController : ApiController
    {
        // GET: api/UserStories
        [Route("api/ptuserstories")]
        public HttpResponseMessage Get()
        {
            var userStories = UserStoriesRepository.GetUserStories();
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK,userStories);
            return responce;
        }

        // GET: api/UserStories/5
        [Route("api/ptuserstories/{id?}")]
        public HttpResponseMessage Get(int id)
        {
            var userStories = UserStoriesRepository.GetUserStoryByID(id);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK,userStories);
            return responce;
        }

        // POST: api/UserStories
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/UserStories/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/UserStories/5
        public void Delete(int id)
        {
        }
    }
}
