package com.estrongs.android.pop.app.compress;

import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.d;

class x
  extends a
{
  x(l paraml, d paramd, String paramString)
  {
    super(paramd, paramString);
  }
  
  public String a()
  {
    if ((l.f(a) != null) && (l.g(a) != null) && (l.g(a).b())) {
      return l.f(a);
    }
    e.post(new z(this));
    for (;;)
    {
      try {}catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        continue;
      }
      try
      {
        wait();
        return l.f(a);
      }
      finally {}
    }
  }
  
  public void a(String paramString, long paramLong, int paramInt)
  {
    super.a(paramString, paramLong, paramInt);
    e.post(new y(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */