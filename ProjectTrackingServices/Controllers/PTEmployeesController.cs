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
    [EnableCors(origins: "*", headers:"*",methods:"*")]
    public class PTEmployeesController : ApiController
    {
        // GET: api/PTEmployees
        [Route("api/ptemployees")]
        public HttpResponseMessage Get()
        {
            var employees = EmployeesRepository.GetAllEmployees();
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employees);
            return responce;
        }
        // GET: api/PTEmployees/5
        [Route("api/ptemployees/{id?}")]
        public HttpResponseMessage Get(int id)
        {
            var employees = EmployeesRepository.GetEmployee(id);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employees);
            return responce;
        }

       
        [Route("api/ptemployees/{name:alpha}")]
        public HttpResponseMessage Get(string name)
        {
            var employees = EmployeesRepository.SearchEmployeeByName(name);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employees);
            return responce;
        }
        // POST: api/PTEmployees
        [Route("api/ptemployees")]
        public HttpResponseMessage Post(Employee e)
        {
            var employee = EmployeesRepository.InsertEmployee(e);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employee);
            return responce;
        }

        // PUT: api/PTEmployees/
        [Route("api/ptemployees")]
        public HttpResponseMessage Put(Employee e)
        {
            var employees = EmployeesRepository.UpdateEmployee(e);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employees);
            return responce;
        }
        // DELETE: api/PTEmployees/
        [Route("api/ptemployees")]
        public HttpResponseMessage Delete(Employee e)
        {
            var employee = EmployeesRepository.DeleteEmployee(e);
            HttpResponseMessage responce = Request.CreateResponse(HttpStatusCode.OK, employee);
            return responce;
        }
    }
}
