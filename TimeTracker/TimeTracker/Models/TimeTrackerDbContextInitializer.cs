using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace TimeTracker.Models
{
    //to add hiredate to database we create this class
    public class TimeTrackerDbContextInitializer : DropCreateDatabaseIfModelChanges<TimeTrackerDbContext>
    {
        protected override void Seed(TimeTrackerDbContext context)
        {
            Employee tempEmployee = new Employee();


            tempEmployee.ID = 1;
            tempEmployee.FirstName = "Barry";
            tempEmployee.LastName = "Allen";
            tempEmployee.Departement = "IT";

            //give day from 14 days before
            tempEmployee.HireDate = DateTime.Now.AddDays(-14);

            List<TimeCard>timecards = new List<TimeCard>
            {
                new TimeCard{ID=1, submissionDate = DateTime.Now,
                MondayHours = 8, TusdayHours=9, WedensdayHours=7, ThursdayHours=8,
                FridayHours=5, SaturdayHours=0, SundayHours=0 },

                //give days from seven days before
                new TimeCard{ID=1, submissionDate = DateTime.Now.AddDays(-7),
                MondayHours = 5, TusdayHours=8, WedensdayHours=9, ThursdayHours=8,
                FridayHours=8, SaturdayHours=0, SundayHours=0 }
            };

            tempEmployee.timeCards = timecards;

            context.Employees.Add(tempEmployee);
            //add seed to initializer
            base.Seed(context);
        }
    }
}