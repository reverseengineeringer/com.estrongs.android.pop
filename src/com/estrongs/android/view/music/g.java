package com.estrongs.android.view.music;

import com.estrongs.android.pop.app.gp;
import com.estrongs.android.pop.app.gq;
import com.estrongs.android.pop.view.a;

class g
  implements gp
{
  g(f paramf) {}
  
  public void a()
  {
    if ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei")))
    {
      f.d(a);
      f.a(a, null);
    }
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).a();
    }
  }
  
  public void a(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).a(paramInt);
    }
  }
  
  public void b(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).b(paramInt);
    }
  }
  
  public void c(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).c(paramInt);
    }
  }
  
  public void d(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).d(paramInt);
    }
  }
  
  public void e(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).e(paramInt);
    }
  }
  
  public void f(int paramInt)
  {
    if ((f.a(a) != null) && (!f.b(a))) {
      f.a(a).f(paramInt);
    }
  }
  
  public void g(int paramInt)
  {
    try
    {
      Thread.sleep(1000L);
      if ((f.c(a).d()) || (f.c(a).e())) {}
      int i;
      do
      {
        return;
        i = f.c(a).i();
        if (i == -1)
        {
          f.c(a).q();
          return;
        }
      } while ((i == paramInt) || (f.a(a) == null) || (f.b(a)));
      f.a(a).g(paramInt);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */