class Main
{
    i : IO <- new IO;
    f : A2I <- new A2I;
    main():Object 
    {
        i.out_string(f.i2a(fact(f.a2i(i.in_string()))).concat("\n"))
    };

    fact(i: Int): Int
    {
        let fact: Int <- 1 in
        {
            while (not (i = 0)) loop
            {
                fact <- fact * i;
                i <- i -1;
            }
            pool;
            fact;
        }
    };
};
