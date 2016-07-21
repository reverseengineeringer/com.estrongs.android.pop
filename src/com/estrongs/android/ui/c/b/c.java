package com.estrongs.android.ui.c.b;

import java.util.ArrayList;
import java.util.Iterator;

class c
  implements h
{
  c(a parama) {}
  
  public void a(ArrayList<String> arg1)
  {
    if ((??? == null) || (???.size() <= 0) || (a.b(a) == null)) {
      return;
    }
    if (a.c(a) == null) {
      a.d(a);
    }
    ??? = ???.iterator();
    while (???.hasNext())
    {
      String str = (String)???.next();
      a.a(a, str);
    }
    synchronized (a.e(a))
    {
      if (a.f(a) != null)
      {
        a.f(a).a();
        a.a(a, null);
      }
      a.b();
      return;
    }
  }
  
  public void b(ArrayList<String> arg1)
  {
    if ((??? == null) || (???.size() <= 0) || (a.b(a) == null)) {}
    label140:
    label141:
    for (;;)
    {
      return;
      if (a.c(a) == null) {
        a.d(a);
      }
      ??? = ???.iterator();
      int i = 0;
      if (???.hasNext())
      {
        String str = (String)???.next();
        if (!a.b(a, str)) {
          break label140;
        }
        i = 1;
      }
      for (;;)
      {
        break;
        if (i == 0) {
          break label141;
        }
        synchronized (a.e(a))
        {
          if (a.f(a) != null)
          {
            a.f(a).a();
            a.a(a, null);
          }
          a.b();
          return;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */