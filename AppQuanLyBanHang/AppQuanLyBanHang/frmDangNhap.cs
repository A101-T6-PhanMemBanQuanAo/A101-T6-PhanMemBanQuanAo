using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppQuanLyBanHang
{
    public partial class frmDangNhap : Form
    {


        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void lb_quenMatKhau_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmQuenMatKhau quenMatKhau = new frmQuenMatKhau();
            quenMatKhau.ShowDialog();
        }
        private void lb_DangKi_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmDangKy dangky = new frmDangKy();
            dangky.ShowDialog();
        }
        Modify modify = new Modify();
        private void btn_DangNhap_Click(object sender, EventArgs e)
        {
            string tentk = tb_tentk.Text;
            string matkhau = tb_MatKhau.Text;
            if (tentk.Trim() == "")
            {
                MessageBox.Show("Vui long nhap ten tai khoan!");
                return;
            }
            else if (matkhau.Trim() == "")
            {
                MessageBox.Show("Vui long nhap mat khau vao!");
                return;
            }
            else
            {
                string query = "Select * from Users where Id='" + tentk + "' and Password='" + matkhau + "'";
                if (modify.Userss(query).Count != 0)
                {
                    MessageBox.Show("Đăng Nhập Thành Công!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Hide();
                    frmMain t1 = new frmMain();
                    t1.ShowDialog();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Tên tài khoản hoặc mật khẩu không chính xác !");
                }
            }
        }

    }
}
