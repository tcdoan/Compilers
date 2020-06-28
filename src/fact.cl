class Main
{
    i : IO <- new IO;
    f : A2I <- new A2I;

    main():Object 
    {
        i.out_string(f.i2a(fact(2)).concat("\n"))
    };

    fact(i: Int): Int
    {
        1
    };
};