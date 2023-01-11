using System;

namespace latihan_csharp.model
{
    public class Person
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public void Talk()
        {
            Console.WriteLine(FirstName + " " + LastName);
        }
    }
}
