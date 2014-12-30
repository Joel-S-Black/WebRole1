﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DatabaseObjectClass
{
    public class Child:Adult

    {

        public int ChildId { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Suffix { get; set; }
        public DateTime Birthday { get; set; }
        public string PhotoURL { get; set; }
        public string Gender { get; set; }
        public string MaleParentId { get; set; }
        public string FemaleParentId { get; set; }
    }
}