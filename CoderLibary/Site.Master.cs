using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoderLibary.Models;

namespace CoderLibary
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Category> GetCategories()
        {
            var _db = new CoderLibary.Models.BookContext();
            IQueryable<Category> query = _db.Categories;
            return query;
        }
    }
}