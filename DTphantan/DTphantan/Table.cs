using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DTphantan
{
    internal class Table
    {
        public List<string> GetPriKey(DataTable dt)
        {
            List<string> list = new List<string>();
            foreach (DataRow row in dt.Rows)
            {
                if (row["Key"].Equals("PRI"))
                {
                    list.Add(row["Field"].ToString());
                }            
            }         
            return list;
        }
        public List<string> GetColumn(DataTable dt)
        {
            List<string> list = new List<string>();
            foreach (DataRow row in dt.Rows)
            {
                if (!row["Key"].Equals("PRI"))
                {
                    list.Add(row["Field"].ToString());
                }
            }
            return list;
        }
        public void addlistBangTC(string bang)
        {
            User.BangTC.Add(bang);
        }
    }
}
