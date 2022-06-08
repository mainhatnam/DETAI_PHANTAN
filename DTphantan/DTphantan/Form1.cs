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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Activated(object sender, EventArgs e)
        {
           Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY("+User.NameLink+ ", 'SHOW TABLES FROM qlgiay')";
            DataTable dt2 = conn.loadDataTable(sq2);
            comboBox4.DataSource = dt2;
            comboBox4.ValueMember = "Tables_in_qlgiay";
            comboBox4.DisplayMember= "Tables_in_qlgiay";
            comboBox4.SelectedIndex = 0;
            dataGridView1.DataSource = dt2;
            string sq4 = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' and TABLE_NAME <> 'sysdiagrams'";
            DataTable dt3 = conn.loadDataTable(sq4);
            comboBox1.DataSource = dt3;
            comboBox1.ValueMember = "TABLE_NAME";
            comboBox1.DisplayMember = "TABLE_NAME";
            string sql3 = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' and TABLE_NAME <> 'sysdiagrams'";
            dataGridView2.DataSource = conn.loadDataTable(sql3);;
            conn.closeConn();
           
            

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox2.Text = comboBox4.Text;
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            lienketbang lienketbang = new lienketbang(comboBox1.Text);
            lienketbang.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
           Ptngang ptngang = new Ptngang(textBox2.Text);
            ptngang.Show();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            int checkdung = 0;
            int checksai = 0;
            int tamp = 0;
            Connection conn = new Connection();
            conn.openConn();
            string sq2 = "SELECT * FROM OPENQUERY("+User.NameLink+ ", 'SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = ''qlgiay'' ')";
            DataTable dt = conn.loadDataTable(sq2);
            foreach (DataRow row in dt.Rows)
            {

                string Fokey = "ALTER TABLE "+row["TABLE_NAME"].ToString() +" ADD CONSTRAINT FK"+row["REFERENCED_TABLE_NAME"]+"_"+tamp.ToString()+"   FOREIGN KEY("+row["COLUMN_NAME"].ToString() +") REFERENCES "+row["REFERENCED_TABLE_NAME"] +"("+row["REFERENCED_COLUMN_NAME"].ToString() +"); ";              
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
