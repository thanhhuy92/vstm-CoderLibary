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
                    CategoryName = "ProGram"
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
                    CategoryName = "Graphics"
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
                    BookName = "ProGram C++",
                    Description = "Basic ProGram",
                    ImagePath ="sachltc.jpg",
                    UnitPrice = 4f,
                    CategoryID = 1
                },
                //book 2 
                new Book
                {
                    BookID = 2,
                    BookName = "ProGram C#",
                    Description = "Basic ProGram",
                    ImagePath ="sachltcsharp.jpg",
                    UnitPrice = 4.05f,
                    CategoryID = 1
                },
                //book 3 
                new Book
                {
                    BookID = 3,
                    BookName = "HTML5 & CSS3",
                    Description = "Basic WebSite",
                    ImagePath ="htmlvacss.jpg",
                    UnitPrice = 6f,
                    CategoryID = 2
                },
                //book 4 
                new Book
                {
                    BookID = 4,
                    BookName = "JavaScript",
                    Description = "Advanced WebSite",
                    ImagePath ="javascript.jpg",
                    UnitPrice = 7f,
                    CategoryID = 2
                },
                //book 5 
                new Book
                {
                    BookID = 5,
                    BookName = "CCNA",
                    Description = "Basic Network Security",
                    ImagePath ="ccna.jpg",
                    UnitPrice = 8f,
                    CategoryID = 3
                },
                //book 6 
                new Book
                {
                    BookID = 6,
                    BookName = "MCSA",
                    Description = "Advanced Network Security",
                    ImagePath ="mcsa.png",
                    UnitPrice = 9f,
                    CategoryID = 3
                },
                //book 7 
                new Book
                {
                    BookID = 7,
                    BookName = "Basic Photoshop",
                    Description = "Basic Photoshop",
                    ImagePath ="ptscoban.png",
                    UnitPrice = 10f,
                    CategoryID = 4
                },
                //book 8 
                new Book
                {
                    BookID = 8,
                    BookName = "Advanced Photoshop",
                    Description = "Advanced Photoshop",
                    ImagePath ="ptsnangcao.png",
                    UnitPrice = 11f,
                    CategoryID = 4
                },
            };
            return books;
        }
    }
}