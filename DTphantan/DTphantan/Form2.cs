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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void Form2_Activated(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'SHOW TABLES FROM qlgiay')";
            DataTable dt2 = conn.loadDataTable(sq2);
            comboBox4.DataSource = dt2;
            comboBox4.ValueMember = "Tables_in_qlgiay";
            comboBox4.DisplayMember = "Tables_in_qlgiay";
            comboBox4.SelectedIndex = 0;
            dataGridView3.DataSource = dt2;
            string sql3 = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' and TABLE_NAME <> 'sysdiagrams'";
            dataGridView2.DataSource = conn.loadDataTable(sql3); ;
            conn.closeConn();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox2.Text = comboBox4.Text;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            PTdoc PTdoc = new PTdoc(textBox2.Text);
            PTdoc.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int checkdung = 0;
            int checksai = 0;
            int tamp = 0;
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY(" + User.NameLink + ", 'SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = ''qlgiay'' ')";
            DataTable dt = conn.loadDataTable(sq2);
            foreach (DataRow row in dt.Rows)
            {

                string Fokey = "ALTER TABLE " + row["TABLE_NAME"].ToString() + " ADD CONSTRAINT FK" + row["REFERENCED_TABLE_NAME"] + "_" + tamp.ToString() + "   FOREIGN KEY(" + row["COLUMN_NAME"].ToString() + ") REFERENCES " + row["REFERENCED_TABLE_NAME"] + "(" + row["REFERENCED_COLUMN_NAME"].ToString() + "); ";
                if (conn.executeUpdate(Fokey))
                {
                    checkdung++;
                }
                else
                {
                    checksai++;
                }
                tamp++;
            }
            if (checksai == 0)
            {
                MessageBox.Show("Tạo liên kết thành công", "thông báo");
            }
            else
            {
                MessageBox.Show("Tạo liên kết thất bại", "thông báo");
            }
            conn.closeConn();
        }
    }
}
