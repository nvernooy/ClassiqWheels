using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace ClassiqWheels.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseAlways<ProductContext>
    {

        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {new Category 
                { 
                    CategoryID = 1, 
                    CategoryName = "Maintanace" 
                }, 
                new Category 
                { 
                    CategoryID = 2, 
                    CategoryName = "Accessories" 
                }, 
                 new Category 
                { 
                    CategoryID = 3, 
                    CategoryName = "Spares" 
                },
               };
            return categories;
        }
        private static List<Product> GetProducts() {
            var products = new List<Product> { new Product
            {
             ProductID =1,
             ProductName="Car Wax",  
             Description="Car wax for keeping your car shiny",
             ImagePath="wax.jpg" ,
             UnitPrice=30,
             CategoryID=1
            },
            new Product
            {
             ProductID =2,
             ProductName="Car engine oil",  
             Description="Basic car engine oil, to keep your car going",
             ImagePath="oil1.jpg" ,
             UnitPrice=40,
             CategoryID=1
            },
             new Product
            {
             ProductID =3,
             ProductName="Car gear box oil",  
             Description="Basic gear box oil to keep your gearboox running smoothly",
             ImagePath="oil2.jpg" ,
             UnitPrice=45,
             CategoryID=1
            },
            new Product
            {
             ProductID =4,
             ProductName="Seat Covers",  
             Description="Seat Covers to cover up and protect your cars seats",
             ImagePath="cover.jpg" ,
             UnitPrice=150,
             CategoryID=2
            },
            new Product
            {
             ProductID =5,
             ProductName="Spare Classic Wheel",  
             Description="A Classic wheel for your old car",
             ImagePath="old_wheel.jpg" ,
             UnitPrice=250,
             CategoryID=3
            },
            new Product
            {
             ProductID =6,
             ProductName="Spare Engine parts",  
             Description="Spare engine parts to get your old car running in no timer",
             ImagePath="spares.jpg" ,
             UnitPrice=400,
             CategoryID=3
            }
                   
               };
            return products;
        }
    }
}