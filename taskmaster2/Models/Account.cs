using System;
using System.Collections.Generic;

namespace taskmaster2.Models
{
    public class Account : Profile
    {
        public string AccountId { get; set; }
        public string Email { get; set; }
        //virtual
        public Profile Profile {get;set;}
    }
}