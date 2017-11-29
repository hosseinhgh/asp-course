﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeTracker.Models
{
    public class TimeCard
    {

        public int ID { get; set; }
        public DateTime submissionDate { get; set; }
        public int MondayHours { get; set; }
        public int TusdayHours { get; set; }
        public int WedensdayHours { get; set; }
        public int ThursdayHours { get; set; }
        public int FridayHours { get; set; }
        public int SaturdayHours { get; set; }
        public int SundayHours { get; set; }
    }
}