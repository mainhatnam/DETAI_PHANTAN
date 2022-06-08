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
    public partial class dangnhap : Form
    {
        public dangnhap()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string user = textBox1.Text;
            string pass = textBox2.Text;
            User.UserName = user;
            User.Pass = pass;    
            Connection conn = new Connection();
            if (conn.openConn())
            {
                MessageBox.Show("dang nhap thanh cong");
                Custom b = new Custom();
                b.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("tai khoan mat khau ko dung ");
            }
        }
    }
}
