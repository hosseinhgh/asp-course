using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;





//repository is running engine



namespace TimeTracker.Models
{
    public class TimeTrackerRepository
    {
        TimeTrackerDbContext _context = new TimeTrackerDbContext();

        public List<Employee> getALLEmployees()
        {
            List<Employee> allEmps = (from data in _context.Employees
                                      orderby data.LastName
                                      select data).ToList();
            return allEmps;
        }

        //UNDER THE LIST OF EMPPLOYYE ABOVE GET THE SPECIFIC EMPLOYEE AND GIVE THE TIME CARDS

        //write a function to take the information from table cards
        //need to write a function to take the information from data sourse
        //we already wrote the initialize
        //initialize is in class timetrackerDbContextInitializer


            //USING OBJECT ORIENTED
            //
        public List<TimeCard> getEmployeeTimeCard(int empID)
        {
            List<TimeCard> myTimeCards = (from data in _context.Employees
                                          
                                          //selecting from instence employee
                                          where data.ID == empID
                                          select data.timeCards).SingleOrDefault();
                                    
            return myTimeCards;
        }

        public List<string> getDepartement()
        {
            List<string> myDepartements = (from data in _context.Employees


                                           select data.Departement).Distinct().ToList();

            return myDepartements;
        }

        //new list for drop dwon list

        public List<Employee> getAllEmployeesDepartement(String departement)
        {
            List<Employee> allEmpsDep = (from data in _context.Employees
                                          where data.Departement == departement
                                          select data).ToList();

            return allEmpsDep;
        }


        public Employee getEmployee(int empID)
        {
            Employee myEmp =
                (from data in _context.Employees
                 where
                  data.ID == empID
                 select data).SingleOrDefault();
            return myEmp;
        }

        public void insertEmployee(int ID, string firstName, string lastName, string departement, DateTime hiredate)
        {
            //object oriented
            Employee e = new Employee();
            e.ID = ID;
            e.FirstName = firstName;
            e.LastName = lastName;
            e.Departement = departement;
            e.HireDate = hiredate;

            _context.Employees.Add(e);
            _context.SaveChanges();
        }


    }
}