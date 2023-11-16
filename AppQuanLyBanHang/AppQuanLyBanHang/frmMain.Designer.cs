
namespace AppQuanLyBanHang
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.tsmiTapTin = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiDanhMuc = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAo = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiQuan = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiGiay = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTuiXach = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiDongHo = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiHoaDon = new System.Windows.Forms.ToolStripMenuItem();
            this.stmiTimKiem = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTroGiup = new System.Windows.Forms.ToolStripMenuItem();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiTapTin,
            this.tsmiDanhMuc,
            this.tsmiHoaDon,
            this.stmiTimKiem,
            this.tsmiTroGiup});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(899, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // tsmiTapTin
            // 
            this.tsmiTapTin.Name = "tsmiTapTin";
            this.tsmiTapTin.Size = new System.Drawing.Size(55, 20);
            this.tsmiTapTin.Text = "Tập tin";
            // 
            // tsmiDanhMuc
            // 
            this.tsmiDanhMuc.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiAo,
            this.tsmiQuan,
            this.tsmiGiay,
            this.tsmiTuiXach,
            this.tsmiDongHo});
            this.tsmiDanhMuc.Name = "tsmiDanhMuc";
            this.tsmiDanhMuc.Size = new System.Drawing.Size(74, 20);
            this.tsmiDanhMuc.Text = "Danh mục";
            // 
            // tsmiAo
            // 
            this.tsmiAo.Name = "tsmiAo";
            this.tsmiAo.Size = new System.Drawing.Size(180, 22);
            this.tsmiAo.Text = "Áo";
            this.tsmiAo.Click += new System.EventHandler(this.tsmiAo_Click);
            // 
            // tsmiQuan
            // 
            this.tsmiQuan.Name = "tsmiQuan";
            this.tsmiQuan.Size = new System.Drawing.Size(180, 22);
            this.tsmiQuan.Text = "Quần";
            this.tsmiQuan.Click += new System.EventHandler(this.tsmiQuan_Click);
            // 
            // tsmiGiay
            // 
            this.tsmiGiay.Name = "tsmiGiay";
            this.tsmiGiay.Size = new System.Drawing.Size(180, 22);
            this.tsmiGiay.Text = "Giày";
            this.tsmiGiay.Click += new System.EventHandler(this.tsmiGiay_Click);
            // 
            // tsmiTuiXach
            // 
            this.tsmiTuiXach.Name = "tsmiTuiXach";
            this.tsmiTuiXach.Size = new System.Drawing.Size(180, 22);
            this.tsmiTuiXach.Text = "Túi xách";
            this.tsmiTuiXach.Click += new System.EventHandler(this.tsmiTuiXach_Click);
            // 
            // tsmiDongHo
            // 
            this.tsmiDongHo.Name = "tsmiDongHo";
            this.tsmiDongHo.Size = new System.Drawing.Size(180, 22);
            this.tsmiDongHo.Text = "Đồng hồ";
            this.tsmiDongHo.Click += new System.EventHandler(this.tsmiDongHo_Click);
            // 
            // tsmiHoaDon
            // 
            this.tsmiHoaDon.Name = "tsmiHoaDon";
            this.tsmiHoaDon.Size = new System.Drawing.Size(65, 20);
            this.tsmiHoaDon.Text = "Hóa đơn";
            // 
            // stmiTimKiem
            // 
            this.stmiTimKiem.Name = "stmiTimKiem";
            this.stmiTimKiem.Size = new System.Drawing.Size(68, 20);
            this.stmiTimKiem.Text = "Tìm kiếm";
            // 
            // tsmiTroGiup
            // 
            this.tsmiTroGiup.Name = "tsmiTroGiup";
            this.tsmiTroGiup.Size = new System.Drawing.Size(62, 20);
            this.tsmiTroGiup.Text = "Trợ giúp";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 27);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(902, 663);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(899, 618);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMain";
            this.Text = "Trang chủ";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem tsmiTapTin;
        private System.Windows.Forms.ToolStripMenuItem tsmiDanhMuc;
        private System.Windows.Forms.ToolStripMenuItem tsmiAo;
        private System.Windows.Forms.ToolStripMenuItem tsmiQuan;
        private System.Windows.Forms.ToolStripMenuItem tsmiHoaDon;
        private System.Windows.Forms.ToolStripMenuItem stmiTimKiem;
        private System.Windows.Forms.ToolStripMenuItem tsmiTroGiup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.ToolStripMenuItem tsmiGiay;
        private System.Windows.Forms.ToolStripMenuItem tsmiTuiXach;
        private System.Windows.Forms.ToolStripMenuItem tsmiDongHo;
    }
}