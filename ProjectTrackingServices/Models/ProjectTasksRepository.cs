using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectTrackingServices.Models
{
    public class ProjectTasksRepository
    {
        private static ProjectTrackingDBEntities dataContext = new ProjectTrackingDBEntities();

        public static List<ProjectTask> GetAllTasks()
        {
            var query = from projectTasks in dataContext.ProjectTasks
                        select projectTasks;
            return query.ToList();
        }

        public static ProjectTask GetProjectTaskByID(int Id)
        {
            var query = from projectTasks in dataContext.ProjectTasks
                        where projectTasks.ProjectTaskID == Id
                        select projectTasks;
            return query.SingleOrDefault();
        }
    }
}