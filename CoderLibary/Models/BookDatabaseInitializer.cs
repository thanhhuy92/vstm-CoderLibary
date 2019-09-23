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
                //book 9 
                new Book
                {
                    BookID = 9,
                    BookName = "Lập Trình Android",
                    Description = "Lập Trình Android",
                    ImagePath ="ltandroid.jpg",
                    UnitPrice = 77f,
                    CategoryID = 1
                },
                //book 10 
                new Book
                {
                    BookID = 10,
                    BookName = "Lập Trình Hướng Đối Tượng JAVA Core",
                    Description = "Lập Trình Java",
                    ImagePath ="lthdtjavacore.png",
                    UnitPrice = 60f,
                    CategoryID = 1
                },
                //book 11 
                new Book
                {
                    BookID = 11,
                    BookName = "Java Cơ Bản",
                    Description = "Lập Trình Java",
                    ImagePath ="ltjavacoban.jpg",
                    UnitPrice = 69f,
                    CategoryID = 1
                },
                //book 12 
                new Book
                {
                    BookID = 12,
                    BookName = "Giáo Trình Ngôn Ngữ Lập Trình Pascal",
                    Description = "Lập Trình Pascal",
                    ImagePath ="ltpascal.jpg",
                    UnitPrice = 30f,
                    CategoryID = 1
                },
                //book 13 
                new Book
                {
                    BookID = 13,
                    BookName = "Lập Trình với Scratch 3.0",
                    Description = "Lập Trình",
                    ImagePath ="ltscratch.jpg",
                    UnitPrice = 38f,
                    CategoryID = 1
                },
                //book 14 
                new Book
                {
                    BookID = 14,
                    BookName = "Phổ Cập Lập Trình vs Swift",
                    Description = "Lập Trình",
                    ImagePath ="phocapltswift.png",
                    UnitPrice = 51f,
                    CategoryID = 1
                },
                //book 15 
                new Book
                {
                    BookID = 15,
                    BookName = "Sổ Tay Lập Trình CNC",
                    Description = "Lập Trình",
                    ImagePath ="sotayltcnc.jpg",
                    UnitPrice = 71f,
                    CategoryID = 1
                },
            };
            return books;
        }
    }
}