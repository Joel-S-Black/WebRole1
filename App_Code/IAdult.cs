using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseObjectClass
{
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
