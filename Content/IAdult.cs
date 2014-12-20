using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseObjectClass
{
    interface IAdult
    {
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Suffix { get; set; }
        public string Birthday { get; set; }
        public string PhotoURL { get; set; }
        public string Gender { get; set; }
    }
}
