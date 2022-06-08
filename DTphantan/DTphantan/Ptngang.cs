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
    public partial class Ptngang : Form
    {
        private string tenbang;
        private Table table;
        private List<string> list;
        public Ptngang(string tenbang)
        {
            InitializeComponent();
            this.tenbang = tenbang;
            this.table = new Table();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string where = textBox1.Text + "." + comboBox4.Text;
            textBox2.Text += where;
        }

        private void Ptngang_Activated(object sender, EventArgs e)
        {
           

        }

        private void Ptngang_Load(object sender, EventArgs e)
        {
            textBox1.Text = this.tenbang;
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + this.tenbang + "')";
            DataTable dt2 = conn.loadDataTable(sq2);
            var listkey = this.table.GetPriKey(dt2);
            this.list = listkey;
            comboBox4.DataSource = dt2;
            comboBox4.ValueMember = "Field";
            comboBox4.DisplayMember = "Field";
            comboBox4.SelectedIndex = 0;
            conn.closeConn();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string result = String.Join(",", this.list.ToArray());
            Connection conn = new Connection();
            conn.openConn();
            string sql = "SELECT " + this.tenbang + ".* into "+ this.tenbang + "  FROM OPENQUERY(" + User.NameLink + ", 'SELECT * FROM " + this.tenbang + "') as " + this.tenbang + " where "+textBox2.Text+" ";
            if (conn.executeUpdate(sql))
            {
                string prikey = "ALTER TABLE "+ this.tenbang + " ADD CONSTRAINT PK_"+ this.tenbang + " PRIMARY KEY("+ result + "); ";
                conn.executeUpdate(prikey);
                MessageBox.Show("Phân tán thành công", "thông báo");

            }
            conn.closeConn();
        }
    }
}
