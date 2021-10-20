using System;

namespace dotnet_6_tz_bug
{
    class Program
    {
        static void Main(string[] args)
        {
            var date = DateTime.Now;
            TimeZoneInfo localZone = TimeZoneInfo.Local;

            Console.WriteLine($"Date: {date}, kind: {date.Kind}");
            Console.WriteLine(localZone);
        }
    }
}
