using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanHang.Context;

namespace WebsiteBanHang.Controllers
{
    public class CategoryController : Controller
    {
        WebsiteBanHangEntities7 objWebsiteBanHangEntities = new WebsiteBanHangEntities7();
        // GET: Category
        public ActionResult Index()
        {
            var lstCategory = objWebsiteBanHangEntities.Categories.ToList();

            return View(lstCategory);
        }
        public ActionResult ProductCategory(int Id)
        {
            var listProduct = objWebsiteBanHangEntities.Products.Where(n=>n.CategoryId == Id).ToList();
            return View(listProduct);
        }
    }
}