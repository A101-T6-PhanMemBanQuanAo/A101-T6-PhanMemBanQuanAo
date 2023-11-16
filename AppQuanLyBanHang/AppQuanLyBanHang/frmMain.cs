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
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void tsmiAo_Click(object sender, EventArgs e)
        {
            frmSanPhamAo Ao = new frmSanPhamAo();
            Ao.ShowDialog();
        }

        private void tsmiQuan_Click(object sender, EventArgs e)
        {
            frmSanPhamQuan quan = new frmSanPhamQuan();
            quan.ShowDialog();
        }

        private void tsmiGiay_Click(object sender, EventArgs e)
        {
            frmGiay giay = new frmGiay();
            giay.ShowDialog();
        }

        private void tsmiTuiXach_Click(object sender, EventArgs e)
        {
            frmTuiXach tx = new frmTuiXach();
            tx.ShowDialog();
        }

        private void tsmiDongHo_Click(object sender, EventArgs e)
        {
            frmDongHo dh = new frmDongHo();
            dh.ShowDialog();
        }
    }
}
