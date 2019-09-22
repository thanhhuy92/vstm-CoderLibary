using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CoderLibary.Models
{
    public class BookDatabaseInitializer:DropCreateDatabaseAlways<BookContext>
    {
        protected override void Seed(BookContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetBooks().ForEach(p => context.Books.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Lập Trình"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "WebSite"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Network Security"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Đồ Họa"
                }
            };
            return categories;
        }

        private static List<Book> GetBooks()
        {
            var books = new List<Book>
            {
                //book 1 
                new Book
                {
                    BookID = 1,
                    BookName = "Lập Trình C++",
                    Description = "Lập Trình C++ cơ bản",
                    ImagePath ="sachltc.jpg",
                    UnitPrice = 82.205f,
                    CategoryID = 1
                },
                //book 2 
                new Book
                {
                    BookID = 2,
                    BookName = "Lập Trình C#",
                    Description = "Lập Trình C# Cơ Bản",
                    ImagePath ="sachltcsharp.jpg",
                    UnitPrice = 75.005f,
                    CategoryID = 1
                },
                //book 3 
                new Book
                {
                    BookID = 3,
                    BookName = "HTML5 & CSS3",
                    Description = "WebSite Cơ Bản",
                    ImagePath ="htmlvacss.jpg",
                    UnitPrice = 96.005f,
                    CategoryID = 2
                },
                //book 4 
                new Book
                {
                    BookID = 4,
                    BookName = "JavaScript",
                    Description = "Advanced WebSite",
                    ImagePath ="javascript.jpg",
                    UnitPrice = 105.005f,
                    CategoryID = 2
                },
                //book 5 
                new Book
                {
                    BookID = 5,
                    BookName = "CCNA",
                    Description = "Basic Network Security",
                    ImagePath ="ccna.jpg",
                    UnitPrice = 124.005f,
                    CategoryID = 3
                },
                //book 6 
                new Book
                {
                    BookID = 6,
                    BookName = "MCSA",
                    Description = "Advanced Network Security",
                    ImagePath ="mcsa.png",
                    UnitPrice = 155.005f,
                    CategoryID = 3
                },
                //book 7 
                new Book
                {
                    BookID = 7,
                    BookName = "Photoshop Cơ Bản",
                    Description = "Photoshop Cơ Bản",
                    ImagePath ="ptscoban.png",
                    UnitPrice = 66.005f,
                    CategoryID = 4
                },
                //book 8 
                new Book
                {
                    BookID = 8,
                    BookName = "Photoshop nâng cao",
                    Description = "Photoshop nâng cao",
                    ImagePath ="ptsnangcao.png",
                    UnitPrice = 81.005f,
                    CategoryID = 4
                },
            };
            return books;
        }
    }
}