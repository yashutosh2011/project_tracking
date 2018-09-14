using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectTrackingServices.Models
{
    public class MangerCommentsRepository
    {
        private static ProjectTrackingDBEntities dataContext = new ProjectTrackingDBEntities();

        public static List<ManagerComment> GetAllManagerComments()
        {
            var query = from mangerComments in dataContext.ManagerComments
                        select mangerComments;
            return query.ToList();
        }

        public static ManagerComment GetManagerCommentById(int id)
        {
            var query = from managerComments in dataContext.ManagerComments
                        where managerComments.ManagerCommentID == id
                        select managerComments;
            return query.SingleOrDefault();
        }
    }
}