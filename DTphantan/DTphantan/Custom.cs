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
    public partial class Custom : Form
    {
        public Custom()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void Custom_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sql = "SELECT name FROM master.sys.databases where name ='QLGIAYPT'";
            int count = conn.loadDataTable(sql).Rows.Count;
            if (count > 0)
            {
                MessageBox.Show("Database đã tồn tại", "thông báo");
            }
            else
            {
                MessageBox.Show("Database không tồn tại", "thông báo");
                button2.Visible = true;
            }
            conn.closeConn();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string sql = "create database QLGIAYPT";
            if (conn.executeUpdate(sql))
            {
                MessageBox.Show("Tạo database thành công", "thông báo");
                groupBox1.Enabled = true;
                groupBox2.Enabled = false;
                User.NewDb = "QLGIAYPT";
            }
            else
            {
                MessageBox.Show("Tạo database thất bại", "thông báo");
            }
            conn.closeConn();
        }

        private void button5_Click(object sender, EventArgs e)
        {
        

        }

        private void button5_Click_1(object sender, EventArgs e)
        {
            string nameserver =  textBox1.Text;
            string uesr = textBox2.Text;
            string pass = textBox3.Text;
            Connection conn = new Connection();
            conn.openConn();
            string linkserver = "Exec master.dbo.sp_addlinkedserver " +
                "@server=N'"+nameserver+"'," +
                "@srvproduct=N'MYSQL'," +
                "@provider=N'MSDASQL'," +
                "@datasrc=N'MYSQL'," +
                "@provstr=N'DRIVER={MySQL ODBC 8.0 ANSI Driver};SERVER=localhost;PORT=3306;DATABASE=qlgiay; USER="+uesr+";PASSWORD="+pass+";OPTION=3;'";
            string addlink = "Exec master.dbo.sp_addlinkedsrvlogin " +
                "@rmtsrvname =N'"+ nameserver + "'," +
                "@locallogin=NULL," +
                "@rmtuser=N'"+ uesr + "'," +
                "@rmtpassword=N'"+ pass + "'";
            if (conn.executeUpdate(linkserver) && conn.executeUpdate(addlink))
            {
                MessageBox.Show("Tạo liên kết thành công", "thông báo");
                textBox1.ReadOnly = true;
                textBox2.ReadOnly = true;
                textBox3.ReadOnly = true;
                button5.Enabled = false;
                User.NameLink = nameserver;

            }
            else
            {
                MessageBox.Show("Tạo liên kết thất bại", "thông báo");
            }
            conn.closeConn();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            conn.openConn();
            string link_connection = "sp_testlinkedserver "+ User.NameLink + "";
            if (conn.executeUpdate(link_connection))
            {
                MessageBox.Show("Kết nối thành công", "thông báo");
                groupBox3.Visible = true;

            }
            else
            {
                MessageBox.Show("Kết nối thất bại", "thông báo");
            }
            conn.closeConn();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form1 ngang = new Form1();
            ngang.Show();
            this.Hide();
        }
    }
}
