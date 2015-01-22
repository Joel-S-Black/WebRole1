using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseObjectClass
{
    /* 
         * the compiler had a fit because there are entity classes saying the same thing, 
         * so I'm excluding these classes from the project. Originally, when I commented
         * out the class code, compile errors abounded.
     */
    public interface IAdult:IDisposable
    {
        string Title { get; set; }
        string FirstName { get; set; }
        string MiddleName { get; set; }
        string LastName { get; set; }
        string Suffix { get; set; }
        DateTime Birthday { get; set; }
        string PhotoURL { get; set; }
        string Gender { get; set; }


    }
}
