using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppQuanLyBanHang
{
    public partial class frmDongHo : Form
    {
        //SqlConnection connection;
        //SqlCommand command;
        //string str = @"Data Source=LAPTOP-RHGDOGMA\DUC;Initial Catalog=WebsiteBanHang;Integrated Security=True;User ID=MyLogin;Password=123";
        //SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable();

        void loadData_Ao()
        {
            string ConString = @"Data Source=LAPTOP-RHGDOGMA\DUC;Initial Catalog=WebsiteBanHang;Integrated Security=True;User ID=MyLogin;Password=123";
            SqlConnection conn = new SqlConnection(ConString);
            SqlDataAdapter da = new SqlDataAdapter("select PD.Name, PD.Price, CT.Name, B.Name from Product PD, Category CT, Brand B where CategoryId = 1 and PD.CategoryId = CT.Id and PD.BrandId = B.Id", conn);
            //command = connection.CreateCommand();
            //command.CommandText = "select PD.Name, PD.Price, CT.Name, B.Name from Product PD, Category CT, Brand B where CategoryId = 1 and PD.CategoryId = CT.Id and PD.BrandId = B.Id";
            //adapter.SelectCommand = command;
            table.Clear();
            da.Fill(table);
            dtgvSanPham.DataSource = table;
        }
        public frmDongHo()
        {
            InitializeComponent();
            loadData_Ao();
        }

        private void dtgvAo_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int i;
            i = dtgvSanPham.CurrentRow.Index;
            txtTenSanPham.Text = dtgvSanPham.Rows[i].Cells[0].Value.ToString();
            txtGiaSanPham.Text = dtgvSanPham.Rows[i].Cells[1].Value.ToString();
            txtThuongHieu.Text = dtgvSanPham.Rows[i].Cells[2].Value.ToString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {

        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            frmMain m = new frmMain();
            m.ShowDialog();
            m.Close();
        }
    }
}
