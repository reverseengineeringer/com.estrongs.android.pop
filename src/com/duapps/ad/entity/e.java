package com.duapps.ad.entity;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.duapps.ad.stats.b;
import java.util.List;

class e
  implements c
{
  e(d paramd, String paramString, h paramh, long paramLong, int paramInt) {}
  
  private void a(int paramInt)
  {
    b.a(d.a(e), paramInt, SystemClock.elapsedRealtime() - c, d.e(e));
    l.c("FbCache", "Refresh result: code = " + paramInt);
    if (d > 0)
    {
      d.f(e).obtainMessage(2, d - 1, 0).sendToTarget();
      return;
    }
    e.c = false;
    l.c("FbCache", "Refresh result: DONE for geeen count");
  }
  
  public void a(int paramInt, String paramString)
  {
    l.c("FbCache", "onError: code=" + paramInt + "; msg=" + paramString);
    e.b = true;
    a(paramInt);
  }
  
  public void a(h paramh)
  {
    if (d.c(e) != null) {
      d.d(e).a();
    }
  }
  
  public void a(h arg1, boolean paramBoolean)
  {
    l.c("FbCache", "onAdLoaded: id=" + a);
    r.a(d.a(e));
    r.b(d.a(e));
    synchronized (d.b(e))
    {
      b.a(null);
      d.b(e).add(b);
      a(200);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */