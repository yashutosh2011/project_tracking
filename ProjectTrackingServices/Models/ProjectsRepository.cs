using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectTrackingServices.Models
{
    public class ProjectsRepository
    {
        private static ProjectTrackingDBEntities dataContext = new ProjectTrackingDBEntities();

        public static List<Project> GetAllProjects()
        {
            var query = from projects in dataContext.Projects
                        select projects;
            return query.ToList();
        }
        public static Project GetProjectByID(int ID)
        {
            var query = from projects in dataContext.Projects
                        where projects.ProjectID == ID
                        select projects;
            return query.SingleOrDefault();
        }
    }
}