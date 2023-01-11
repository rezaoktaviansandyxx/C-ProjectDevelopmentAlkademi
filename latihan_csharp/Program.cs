using System;
using latihan_csharp.model;

namespace latihan_csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Hello World!");
            //var Count = 5;
            //var number = 10;
            //var totalDiscount = 20.56f;
            //var c = 'c';
            //var phoneNumber = "089520603456";
            //var isHandsome = false;

            //Console.WriteLine("{0} dan {1}", Count, totalDiscount);

            //const float Pi = 3.14f;
            //Console.WriteLine("{0}",Pi);

            //Console.WriteLine(Count);
            //Console.WriteLine(number);
            //Console.WriteLine(totalDiscount);
            //Console.WriteLine(c);
            //Console.WriteLine(phoneNumber);
            //Console.WriteLine(isHandsome);

            //byte a = 1;
            //int b = a;

            //int c = 1000;
            //byte d = (byte)c;

            //Console.WriteLine(d);

            //string a = "20";
            //int b = Convert.ToInt32(a);
            //Console.WriteLine(b);

            //string benar = "true";
            //bool isTrue = Convert.ToBoolean(b);
            //Console.WriteLine(isTrue);
            //var a = 20;
            //var b = 9;
            //float c = (float)20 / 9;
            //var d = 7;
            //var e = (a + b) * d;

            //Console.WriteLine(a + b);
            //Console.WriteLine(a / b);
            //Console.WriteLine(c);
            //Console.WriteLine(e);

            //Console.WriteLine(a > b);
            //Console.WriteLine(a == b);
            //Console.WriteLine(a != b);
            //Console.WriteLine(!(a != b));

            //Console.WriteLine(d > b && d > a);
            //Console.WriteLine(a > b || d == a);
            //Console.WriteLine(a > b && a > d);
            //Person indra = new Person();
            //indra.FirstName = "Indra Oki";
            //indra.LastName = "Sandy";

            //indra.Talk();
            //int[] numbers = new int[3];
            //var number2 = new int[4] { 1, 3, 5, 7 };

            //numbers[0] = 1;
            //numbers[1] = 3;
            //numbers[2] = 5;

            //Console.WriteLine(numbers[0]);
            //Console.WriteLine(numbers[1]);
            //Console.WriteLine(numbers[2]);

            //Console.WriteLine(number2[0]);
            //Console.WriteLine(number2[1]);
            //Console.WriteLine(number2[2]);
            //Console.WriteLine(number2[4]);
            //string firstName = "Indra Oki";
            //string lastName = "Sandy";
            //var fullName = firstName + " " + lastName;
            //var fullName2 = string.Format("{0} {1}", firstName, lastName);

            //Console.WriteLine(fullName);
            //Console.WriteLine(fullName2);

            //var names = new string[3] { "Radya", "Labs", "Technology" };
            //var namesCombination = string.Join("-", names);
            //Console.WriteLine(namesCombination);

            //            var text = "Hi Indra \nYuk pergi ke Jepang \nUntuk liburan";
            //            var text2 = @"Hi Indra
            //Yuk pergi ke Jepang
            //Untuk liburan";
            //            Console.WriteLine(text);
            //            Console.WriteLine(text2);
            //var a = 10;
            //var b = a;
            //b++;
            //Console.WriteLine(string.Format("a : {0}, b : {1}", a, b));

            //var array1 = new int[3] { 1, 3, 5 };
            //var array2 = array1;
            //array2[0] = 0;

            //Console.WriteLine(string.Format("array1[0] : {0}, array2[0] : {1}", array1[0], array2[0]));
            //var number = 5;
            //Increment(5);
            //Console.WriteLine(number);

            //var person = new Person() { Age = 29 };
            //MakeOld(person);
            //Console.WriteLine(person.Age);
            //int hour = 22;
            //if (hour > 0 && hour < 12)
            //{
            //    Console.WriteLine("It's morning");
            //}
            //else if (hour >= 12 && hour < 18)
            //{
            //    Console.WriteLine("It's afternoon");
            //}
            //else
            //{
            //    Console.WriteLine("It's evening");
            //}
            //bool isPremiumCustomer = true;
            //float price = (isPremiumCustomer) ? 20f : 10f;
            //float price;
            //if (isPremiumCustomer)
            //    price = 20f;
            //else
            //    price= 10f;
            //Console.WriteLine(price);
            //var currentSeason = Season.Summer;
            //switch (currentSeason)
            //{
            //    case Season.Summer:
            //    case Season.Autumn:
            //        Console.WriteLine("We've got promotion");
            //        break;
            //    default: 
            //        Console.WriteLine("I don't understand that season!");
            //        break;
            //}
            //for (int i = 1; i <= 10; i++)
            //{
            //    if (i % 2 == 0)
            //    {
            //        Console.WriteLine(i);
            //    }
            //}
            //for (int i = 10; i >= 1; i--)
            //{
            //    if (i % 2 == 0)
            //    {
            //        Console.WriteLine(i);
            //    }
            //}
            //var name = "Indra Oki Sandy";
            //for( var i = 0; i<name.Length; i++)
            //{
            //    Console.WriteLine(name[i]);
            //}

            //foreach(var character in name)
            //{
            //    Console.WriteLine(character);
            //}
            //var numbers = new int[] {1,2,3,4};
            //foreach(var number in numbers)
            //{
            //    Console.WriteLine(number);
            //}
            //int i = 0;
            //while (i < 5)
            //{
            //    Console.WriteLine(i);
            //    i++;
            //}
            //while (true)
            //{
            //    Console.WriteLine("Type your name : ");
            //    var input = Console.ReadLine();

            //    if (String.IsNullOrWhiteSpace(input))
            //        break;
            //    Console.WriteLine("name is " + input);
            //}
            //int[] numbers = new int[5];
            //var numbers2 = new int[5] { 4,2,1,3,5 };
            //Console.WriteLine("Length : " + numbers.Length);
            //var index = Array.IndexOf(numbers2, 4);
            //Console.WriteLine("Index dari 4 : " + index);
            //Array.Clear(numbers2, 0, 2);
            //foreach ( var n in numbers2 )
            //{
            //    Console.WriteLine(n);
            //}
            //Array.Copy(numbers2, numbers, 5);
            //foreach (var n in numbers)
            //{
            //    Console.WriteLine(n);
            //}
            //Array.Sort(numbers2);
            //foreach (var n in numbers2)
            //{
            //    Console.WriteLine(n);
            //}
            //Array.Reverse(numbers2);
            //foreach (var n in numbers2)
            //{
            //    Console.WriteLine(n);
            //}
            List<int> numbers = new List<int>();

            var numbers2 = new List<int>() { 1, 2, 3, 4, 5 };
            numbers2.Add(10);
            numbers2.Add(29);

            numbers2.AddRange(new int[3] { 4, 5, 6 });
            foreach (var n in numbers2)
                Console.WriteLine(n);
            Console.WriteLine("Index of 4 : " + numbers2.IndexOf(4));
            Console.WriteLine("Last inxed of 4 : " + numbers2.LastIndexOf(4));
            Console.WriteLine("Jumlah data " + numbers2.Count);

            numbers2.Remove(4);
            foreach (var n in numbers2)
                Console.WriteLine(n);
            for (int i = 0; i < numbers2.Count; i++)
            {
                if (numbers2[i] == 4)
                    numbers2.Remove(numbers2[i]);
            }
            foreach (var n in numbers2)
                Console.WriteLine(n);
            numbers2.Clear();
                Console.WriteLine("DIHAPUS");
            foreach (var n in numbers2)
                Console.WriteLine(n);
            Console.WriteLine("HABIS");
        }
        public static void Increment(int number)
        {
            number += 10;
        }
        public static void MakeOld(Person person)
        {
            person.Age += 10;
        }
    }
    public class Person
    {
        public int Age { get; set; }
    }
    public enum Season
    {
        Spring,
        Summer,
        Autumn,
        Winter
    }
}