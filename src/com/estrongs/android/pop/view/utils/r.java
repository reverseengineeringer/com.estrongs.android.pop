package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.y;
import java.io.File;

class r
  implements ab
{
  private int b = 0;
  
  r(n paramn) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    b += 1;
    paramObject = (y)paramObject;
    paramThrowable = (v)d;
    Integer localInteger = (Integer)e;
    if ((((y)paramObject).g() > 0L) && (((y)paramObject).a() > 0L) && (b < 3)) {
      ((y)paramObject).f();
    }
    for (;;)
    {
      o[localInteger.intValue()] = null;
      return;
      new File(((y)paramObject).e()).delete();
    }
  }
  
  public void b(Object paramObject)
  {
    paramObject = (y)paramObject;
    Message localMessage = new Message();
    Object localObject = (v)d;
    localObject = (Integer)e;
    arg1 = 123468;
    arg2 = ((Integer)localObject).intValue();
    obj = paramObject;
    a.a(localMessage, 0L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */