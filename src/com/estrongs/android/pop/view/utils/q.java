package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;
import java.io.File;

class q
  implements af
{
  private int b = 0;
  
  q(n paramn) {}
  
  public void downloadCompleted(Object paramObject)
  {
    paramObject = (aa)paramObject;
    Message localMessage = new Message();
    v localv = (v)d;
    arg1 = 123460;
    obj = paramObject;
    n.a(localv);
    if (k != null) {
      a.a(localMessage, 0L);
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    b += 1;
    paramObject = (aa)paramObject;
    if ((((aa)paramObject).g() > 0L) && (((aa)paramObject).a() > 0L) && (b < 3))
    {
      ((aa)paramObject).f();
      return;
    }
    new File(((aa)paramObject).e()).delete();
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */