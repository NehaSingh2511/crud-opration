using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Crudeoperation.App_Code
{
    public class ClsConnection
    {
        public string str = "Server=(localdb)\\Nehawit;Database=Crudeoperation ; Integrated Security=True";
        public string SqlCon()
        {
            return str;
        }
    }
}