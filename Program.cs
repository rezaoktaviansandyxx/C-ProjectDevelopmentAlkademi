namespace HelloWorld;
class Program
{
    static void Main(string[] args)
    {
        // Console.WriteLine("Aplikasi pertama saya");
        // Console.WriteLine("Hello, World!");
        // Console.Read();
        // Console.Write("Halo ");
        // Console.Write("Namaku ");
        // Console.WriteLine(":");
        // Console.Write("Adam ");
        // Console.Write("Fiqih ");
        // Console.Write("RIstanto");
        // Console.WriteLine("Hello " + "World");
        // int number = 20;
        // Console.WriteLine("Umur: " + number);
        // Console.WriteLine(30 + 30);
        // Console.WriteLine("Enter Word : ");
        // string name = Console.ReadLine();
        // string name2 = Console.ReadLine();
        // string name3 = Console.ReadLine();
        // Console.WriteLine(name + " " + name2 + " " + name3);
        // double x = 10.5;
        // float myFloat = (float)x;
        // long myLong = (long)myFloat;
        // int myInt = (int)myFloat;
        // char myChar = (char)myInt;

        // Console.WriteLine("myDouble: " + x);
        // Console.WriteLine("myFloat: " + myFloat);
        // Console.WriteLine("myLong: " + myLong);
        // Console.WriteLine("myInt: " + myInt);
        // Console.WriteLine("myChar: ", myChar);
        // Console.WriteLine(Convert.ToDouble(x));
        // Console.WriteLine(Convert.ToSingle(myFloat));
        // Console.WriteLine(Convert.ToInt64(myLong));
        // Console.WriteLine(Convert.ToInt32(myInt));
        // Console.WriteLine(Convert.ToChar(myChar));
        // string userName = "maulogin?";
        // string password = "maudong" ;
        // Console.WriteLine("username = ");
        // var input = Console.ReadLine();
        // Console.WriteLine("password= ");
        // var input2 = Console.ReadLine();
        // if (input==userName&&input2==password)
        // {
        //     Console.WriteLine("Selamat yaa");
        // }
        // else
        // {
        //     Console.WriteLine("Maaf yaa");
        // }

        //Lesson 9
        // int score = 80;
        // int age = 20;
        // Console.WriteLine(score >= 60 && age <= 25 ? "Selamat anda lulus" : "Maaf anda belum lulus");

        // for (int i = 1; i <= 30; i++)
        // {
        //     while (i % 3 == 0)
        //     {
        //         Console.Write("eFishery");
        //         i++;
        //     }
        //     Console.Write(i + " ");
        // }
        // int[] numbers = { 2, 4, 6, 8, 10, 12 };
        // for (int i = 0; i < numbers.Length; i += 1)
        // {
        //     Console.WriteLine(numbers[i]);
        // }

        // int t = 15;
        // const float pi = (float)22 / 7;
        // var luas = LuasAlas();
        // float vKerucut = (float)1/3*(luas*t);
        // Console.WriteLine("Volume Kerucut =  {0} cm3",vKerucut);

        // static float LuasAlas()
        // {
        //     int r = 10;
        //     var luas = pi*(r*r);
        //     return luas;
        // }

        Volume kerucut = new Volume(314.28, 15);
        Console.WriteLine("Volume kerucut: {0} cm3", (double)1/3*kerucut.LuasAlas*kerucut.tinggi);
    }
    public class Volume
    {
        public double LuasAlas;
        public double tinggi;

        public Volume(double LuasAlas, double tinggi)
        {
            this.LuasAlas = 314.28;
            this.tinggi = 15;
        }
    }
}
