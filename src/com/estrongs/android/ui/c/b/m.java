package com.estrongs.android.ui.c.b;

import java.util.ArrayList;
import java.util.Iterator;

class m
  implements t
{
  m(l paraml) {}
  
  public void a(ArrayList<String> arg1)
  {
    if ((??? == null) || (???.size() <= 0) || (a.e == null)) {
      return;
    }
    if (l.a(a) == null) {
      a.g();
    }
    ??? = ???.iterator();
    while (???.hasNext())
    {
      String str = (String)???.next();
      l.a(a, str);
    }
    synchronized (l.b(a))
    {
      if (l.c(a) != null)
      {
        l.c(a).a();
        l.a(a, null);
      }
      a.l();
      return;
    }
  }
  
  public void b(ArrayList<String> arg1)
  {
    if ((??? == null) || (???.size() <= 0) || (a.e == null)) {}
    label140:
    label141:
    for (;;)
    {
      return;
      if (l.a(a) == null) {
        a.g();
      }
      ??? = ???.iterator();
      int i = 0;
      if (???.hasNext())
      {
        String str = (String)???.next();
        if (!l.b(a, str)) {
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
        synchronized (l.b(a))
        {
          if (l.c(a) != null)
          {
            l.c(a).a();
            l.a(a, null);
          }
          a.l();
          return;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */