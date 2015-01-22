using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DatabaseObjectClass
{
    public class ContactInformationObject
    {
        public int ContactInfoID { get; set; }
        public int ContactId { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Suffix { get; set; }
        public string PhotoURL { get; set; }
        public string PhoneNumber1 { get; set; }
        public string PhoneNumber1Type { get; set; }
        public string PhoneNumber2 { get; set; }
        public string PhoneNumber2Type { get; set; }
        public string PhoneNumber3 { get; set; }
        public string PhoneNumber3Type { get; set; }
        public string Email1 { get; set; }
        public string Email1Type { get; set; }
        public string Email2 { get; set; }
        public string Email2Type { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string MailingAddress { get; set; }
        public string MailingCity { get; set; }
        public string MailingState { get; set; }
        public string MailingZip { get; set; }
        public string FacebookName { get; set; }
        public string TwitterHandle { get; set; }
        public string InstagramName { get; set; }

        public ContactInformationObject() { }

       
    
    }
}