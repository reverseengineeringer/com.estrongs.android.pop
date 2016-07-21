package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;

class p
  implements af
{
  private long b = 0L;
  private long c = 0L;
  
  p(n paramn) {}
  
  private void a(aa paramaa, int paramInt)
  {
    Message localMessage = new Message();
    arg1 = paramInt;
    obj = paramaa;
    a.a(localMessage, 0L);
  }
  
  public void downloadCompleted(Object paramObject)
  {
    paramObject = (aa)paramObject;
    d).q = 3;
    n.a(a);
    n.a(a, (aa)paramObject);
    a((aa)paramObject, 123464);
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    paramObject = (aa)paramObject;
    v localv = (v)d;
    if ((paramThrowable.getMessage() != null) && (paramThrowable.getMessage().equals("UserCannelled")))
    {
      ((aa)paramObject).h();
      if ((q == 5) || (q == 1))
      {
        q = 0;
        n.a(a);
      }
      return;
    }
    if (((aa)paramObject).a() > b)
    {
      b = ((aa)paramObject).a();
      ((aa)paramObject).f();
      return;
    }
    if (c < 3L)
    {
      ((aa)paramObject).f();
      c += 1L;
      return;
    }
    if ((q == 5) || (q == 1))
    {
      q = 2;
      n.a(a);
    }
    a((aa)paramObject, 123461);
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2)
  {
    paramObject = (aa)paramObject;
    v localv = (v)d;
    if (t != ((aa)paramObject).g())
    {
      t = ((aa)paramObject).g();
      n.a(a);
    }
    u = ((aa)paramObject).a();
    a((aa)paramObject, 123463);
  }
  
  public void downloadStarted(Object paramObject)
  {
    paramObject = (aa)paramObject;
    d).q = 1;
    n.a(a);
    a((aa)paramObject, 123462);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */