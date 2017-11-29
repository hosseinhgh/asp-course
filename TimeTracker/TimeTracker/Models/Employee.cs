using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeTracker.Models
{
    public class Employee
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Departement { get; set; }
        public List<TimeCard> timeCards { get; set; }
        //adding filed in database
        public DateTime HireDate { get; set; }
    }
}

