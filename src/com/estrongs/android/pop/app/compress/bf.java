package com.estrongs.android.pop.app.compress;

import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.e;

class bf
  extends a
{
  bf(bb parambb, e parame, String paramString)
  {
    super(parame, paramString);
  }
  
  public String a()
  {
    if ((bb.c(a) != null) && (bb.d(a) != null) && (bb.d(a).b())) {
      return bb.c(a);
    }
    e.post(new bg(this));
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
        return bb.c(a);
      }
      finally {}
    }
  }
  
  public void a(String paramString, long paramLong, int paramInt)
  {
    super.a(paramString, paramLong, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */