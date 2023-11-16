using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppQuanLyBanHang
{
    class Products
    {
        private string _tenSanPham;

        private string _giaSanPham;

        private string _thuongHieu;

        public Products()
        {

        }
        public Products(string TenSanPham, string GiaSanPham, string ThuongHieu)
        {
            this._tenSanPham = TenSanPham;
            this._giaSanPham = GiaSanPham;
            this._thuongHieu = ThuongHieu;
        }
        public string tenSanPham { get => _tenSanPham; set => _tenSanPham = value; }
        public string giaSanPham { get => _giaSanPham; set => _giaSanPham = value; }
        public string thuongHieu { get => _thuongHieu; set => _thuongHieu = value; }
    }
}
