using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DTphantan
{
    public partial class PTdoc : Form
    {
        private string tenbang { get; set; }
        private Table table;
        private List<string> list;
        private string Prikey { get; set; }
        public PTdoc(string tenbang)
        {
            InitializeComponent();
            this.tenbang = tenbang;
            this.table = new Table();
        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sql = "SELECT "+this.Prikey+","+textBox2.Text+" into "+ this.tenbang + " FROM OPENQUERY(" + User.NameLink + ", 'SELECT * FROM "+ this.tenbang + "') as "+ this.tenbang + "";
            if (conn.executeUpdate(sql))
            {
                string prikey = "ALTER TABLE " + this.tenbang + " ADD CONSTRAINT PK_" + this.tenbang + " PRIMARY KEY(" + this.Prikey + "); ";
                conn.executeUpdate(prikey);
                MessageBox.Show("Phân tán thành công", "thông báo");

            }
            conn.closeConn();
        }

        private void PTdoc_Activated(object sender, EventArgs e)
        {
            textBox1.Text = this.tenbang;
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + this.tenbang + "')";
            DataTable dt2 = conn.loadDataTable(sq2);
            var listkey = this.table.GetPriKey(dt2);
            this.list = listkey;
            string result = String.Join(",", this.list.ToArray());
            this.Prikey = result;
            var listColumn = this.table.GetColumn(dt2);
            foreach (var item in listColumn)
            {
                comboBox4.Items.Add(item.ToString());
            }       
            comboBox4.SelectedIndex = 0;


            conn.closeConn();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox2.Text += this.tenbang+ "."+comboBox4.Text;
        }

    }
}
