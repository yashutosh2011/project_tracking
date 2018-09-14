using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectTrackingServices.Models
{
    public class UserStoriesRepository
    {
        private static ProjectTrackingDBEntities datacontext = new ProjectTrackingDBEntities();

        public static List<UserStory> GetUserStories()
        {
            var query = from userStories in datacontext.UserStories
                        select userStories;
            return query.ToList();
        }

        public static UserStory GetUserStoryByID(int id)
        {
            var query = from userStories in datacontext.UserStories
                        where userStories.UserStoryID == id
                        select userStories;
            return query.SingleOrDefault();
        }
    }
}