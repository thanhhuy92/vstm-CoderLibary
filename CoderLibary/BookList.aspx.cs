using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoderLibary.Models;
using System.Web.ModelBinding;

namespace CoderLibary
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Book> GetBooks([QueryString("id")]int? categoryId)
        {
            var _db = new CoderLibary.Models.BookContext();
            IQueryable<Book> query = _db.Books;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }
            return query;
        }
    }
}