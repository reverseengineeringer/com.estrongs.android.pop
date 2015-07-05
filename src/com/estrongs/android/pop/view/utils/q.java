package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.y;
import java.io.File;

class q
  implements ab
{
  private int b = 0;
  
  q(n paramn) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    b += 1;
    paramObject = (y)paramObject;
    if ((((y)paramObject).g() > 0L) && (((y)paramObject).a() > 0L) && (b < 3))
    {
      ((y)paramObject).f();
      return;
    }
    new File(((y)paramObject).e()).delete();
  }
  
  public void b(Object paramObject)
  {
    paramObject = (y)paramObject;
    Message localMessage = new Message();
    v localv = (v)d;
    arg1 = 123460;
    obj = paramObject;
    n.a(localv);
    if (k != null) {
      a.a(localMessage, 0L);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */