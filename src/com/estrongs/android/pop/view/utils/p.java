package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.y;

class p
  implements ab
{
  private long b = 0L;
  private long c = 0L;
  
  p(n paramn) {}
  
  private void a(y paramy, int paramInt)
  {
    Message localMessage = new Message();
    arg1 = paramInt;
    obj = paramy;
    a.a(localMessage, 0L);
  }
  
  public void a(Object paramObject)
  {
    paramObject = (y)paramObject;
    d).q = 1;
    n.a(a);
    a((y)paramObject, 123462);
  }
  
  public void a(Object paramObject, long paramLong1, long paramLong2)
  {
    paramObject = (y)paramObject;
    v localv = (v)d;
    if (t != ((y)paramObject).g())
    {
      t = ((y)paramObject).g();
      n.a(a);
    }
    u = ((y)paramObject).a();
    a((y)paramObject, 123463);
  }
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    paramObject = (y)paramObject;
    v localv = (v)d;
    if ((paramThrowable.getMessage() != null) && (paramThrowable.getMessage().equals("UserCannelled")))
    {
      ((y)paramObject).h();
      if ((q == 5) || (q == 1))
      {
        q = 0;
        n.a(a);
      }
      return;
    }
    if (((y)paramObject).a() > b)
    {
      b = ((y)paramObject).a();
      ((y)paramObject).f();
      return;
    }
    if (c < 3L)
    {
      ((y)paramObject).f();
      c += 1L;
      return;
    }
    if ((q == 5) || (q == 1))
    {
      q = 2;
      n.a(a);
    }
    a((y)paramObject, 123461);
  }
  
  public void b(Object paramObject)
  {
    paramObject = (y)paramObject;
    d).q = 3;
    n.a(a);
    n.a(a, (y)paramObject);
    a((y)paramObject, 123464);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */