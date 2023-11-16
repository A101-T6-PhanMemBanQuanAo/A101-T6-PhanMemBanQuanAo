using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppQuanLyBanHang
{
    class Users
    {
        private int _idUsers;

        private string _matKhau;

        public Users()
        {

        }
        public Users(int IdUsers, string matKhau)
        {
            this._idUsers = IdUsers;
            this._matKhau = matKhau;
        }
        public int TenUsers { get => _idUsers; set => _idUsers = value; }
        public string MatKhau { get => _matKhau; set => _matKhau = value; }
    }
}
