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
    public partial class lienketbang : Form
    {
        private string bang { get; set; }
        private Table table;
        public lienketbang(string tenbang)
        {
            InitializeComponent();
            this.bang = tenbang;
            this.table = new Table();
        }

        private void lienketbang_Load(object sender, EventArgs e)
        {
           
        }

        private void lienketbang_Activated(object sender, EventArgs e)
        {
            textBox2.Text = this.bang;
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT Tables_in_qlgiay as bang FROM OPENQUERY(" + User.NameLink + ", 'SHOW TABLES FROM qlgiay') as bang";         
            DataTable dt2 = conn.loadDataTable(sq2);
            comboBox4.DataSource = dt2;
            comboBox4.ValueMember = "bang";
            comboBox4.DisplayMember = "bang";
            comboBox4.SelectedIndex = 0;

            string sql3 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + this.bang + "')";
            string sql4 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + comboBox4.Text+ "')";
            comboBox1.DataSource = conn.loadDataTable(sql3);
            comboBox2.DataSource = conn.loadDataTable(sql4);

            comboBox1.ValueMember = "Field";
            comboBox1.DisplayMember = "Field";
            comboBox1.SelectedIndex = 0;
            comboBox2.ValueMember = "Field";
            comboBox2.DisplayMember = "Field";
            comboBox2.SelectedIndex = 0;
            conn.closeConn();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sql4 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + comboBox4.Text + "')";
            comboBox2.DataSource = conn.loadDataTable(sql4);
            comboBox2.ValueMember = "Field";
            comboBox2.DisplayMember = "Field";
            comboBox2.SelectedIndex = 0;
            conn.closeConn();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text += this.bang + "." + comboBox1.Text;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text += comboBox4.Text + "." + comboBox2.Text;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'DESCRIBE " + comboBox4.Text + "')";
            DataTable dt2 = conn.loadDataTable(sq2);
            var listkey = this.table.GetPriKey(dt2);
            string result = String.Join(",", listkey.ToArray());
            string sqlallLienHe = "SELECT * FROM OPENQUERY("+ User.NameLink + " , 'SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME as banglienket,REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = ''qlgiay'' and TABLE_NAME =''"+textBox2.Text+"'' AND  REFERENCED_TABLE_NAME = ''"+comboBox4.Text+ "'' ; ')";
            DataTable dtcheck = conn.loadDataTable(sqlallLienHe);
            if (dtcheck.Rows.Count == 0)
            {
                string sql = "SELECT " + comboBox4.Text + ".* into " + comboBox4.Text + " FROM OPENQUERY(" + User.NameLink + ", 'SELECT * FROM " + comboBox4.Text + "') as " + comboBox4.Text + " ," + this.bang + " as " + this.bang + " where " + textBox1.Text + "";
                if (conn.executeUpdate(sql))
                {
                    string prikey = "ALTER TABLE " + comboBox4.Text + " ADD CONSTRAINT PK_" + comboBox4.Text + " PRIMARY KEY(" + result + "); ";
                    conn.executeUpdate(prikey);
                    MessageBox.Show("Phân tán thành công", "thông báo");
                }
            }
            else
            {
                string tencolumn = dtcheck.Rows[0]["COLUMN_NAME"].ToString();
                string sqlgb = "SELECT "+ tencolumn + " FROM "+textBox2.Text+" group by "+ tencolumn + "";
                List<string> listgb = new List<string>();
                foreach (DataRow row in conn.loadDataTable(sqlgb).Rows)
                {
                    listgb.Add(row[tencolumn].ToString());
                }
                string wherein = String.Join(",", listgb.ToArray());
                string sqlpt = "SELECT "+ comboBox4.Text + ".* into "+ comboBox4.Text + " FROM OPENQUERY("+User.NameLink+", 'SELECT * FROM "+ comboBox4.Text + "') as "+ comboBox4.Text + " where "+ comboBox4.Text + "."+ tencolumn + " in ("+ wherein + ")";
                if (conn.executeUpdate(sqlpt))
                {
                    string prikey = "ALTER TABLE " + comboBox4.Text + " ADD CONSTRAINT PK_" + comboBox4.Text + " PRIMARY KEY(" + result + "); ";
                    conn.executeUpdate(prikey);
                    MessageBox.Show("Phân tán thành công", "thông báo");
                }
            }

            conn.closeConn();
        }
    }
}
