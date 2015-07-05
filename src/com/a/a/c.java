package com.a.a;

import java.io.OutputStream;
import java.io.PrintStream;
import java.util.HashMap;

class c
  implements Runnable
{
  c(b paramb1, b paramb2) {}
  
  public void run()
  {
    for (;;)
    {
      if (!b.a(b).isInterrupted()) {
        try
        {
          f localf = f.a(b.b(b));
          if (e.a(localf)) {
            switch (a)
            {
            case 1163086915: 
            case 1163154007: 
            case 1497451343: 
              if (b.c(a))
              {
                ??? = (g)b.d(b).get(Integer.valueOf(c));
                if (??? != null) {
                  try
                  {
                    if (a == 1497451343)
                    {
                      ((g)???).a(b);
                      ((g)???).b();
                      ???.notify();
                    }
                  }
                  finally {}
                }
              }
              break;
            case 1213486401: 
            case 1314410051: 
              label146:
              synchronized (a)
              {
                b.h(b);
                a.notifyAll();
                b.c(a, false);
                return;
                if (a == 1163154007)
                {
                  ((g)???).a(g);
                  ((g)???).a();
                  break label146;
                }
                if (a != 1163086915) {
                  break label146;
                }
                b.d(a).remove(Integer.valueOf(c));
                ((g)???).c();
                break label146;
                if (b == 1)
                {
                  if (b.e(a)) {
                    ??? = e.a(3, b.f(a).a());
                  }
                  for (;;)
                  {
                    a.a.write((byte[])???);
                    a.a.flush();
                    break;
                    ??? = e.a(2, b.f(a).a(g));
                    b.a(a, true);
                  }
                  synchronized (a)
                  {
                    b.a(a, c);
                    System.out.println("maxData = " + b.g(b));
                    b.b(a, true);
                    a.notifyAll();
                  }
                }
              }
            }
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */