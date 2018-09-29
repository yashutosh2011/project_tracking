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
        public static List<Project> InsertProjects(Project p)
        {
            dataContext.Projects.Add(p);
            dataContext.SaveChanges();
            return GetAllProjects();
        }
        public static List<Project> UpdateProjects(Project p)
        {
            var project = (from Projects in dataContext.Projects
                          where Projects.ProjectID == p.ProjectID
                          select Projects).SingleOrDefault();
            project.ProjectName = p.ProjectName;
            project.StartDate = p.StartDate;
            project.EndDate = p.EndDate;
            project.ClientName = p.ClientName;
            dataContext.SaveChanges();
            return GetAllProjects();
        }

        public static List<Project> DeleteProjects(Project p)
        {
            var project = (from Projects in dataContext.Projects
                           where Projects.ProjectID == p.ProjectID
                           select Projects).SingleOrDefault();
            dataContext.Projects.Remove(project);
            dataContext.SaveChanges();
            return GetAllProjects();
        }
    }
}