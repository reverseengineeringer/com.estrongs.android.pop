package com.duapps.ad.offerwall.a;

import android.os.Handler;
import com.duapps.ad.base.am;
import com.duapps.ad.base.m;
import com.duapps.ad.entity.AdModel;
import java.util.Collection;
import java.util.List;

class c
  implements am<AdModel>
{
  c(b paramb) {}
  
  public void a()
  {
    b.a(a, true);
  }
  
  public void a(int paramInt, AdModel arg2)
  {
    if ((paramInt != 200) || (??? == null)) {
      return;
    }
    b.a(a, ???);
    List localList = m.a(b.a(a), b.a(a, h));
    synchronized (b.b(a))
    {
      if (localList.size() <= 0)
      {
        com.duapps.ad.stats.b.a(b.a(a), b.c(a));
        b.e(a).post(new d(this));
        return;
      }
    }
    b.b(a).clear();
    b.b(a).addAll(localCollection);
    b.b(a, true);
    b.a(a, false);
    b.e(a).post(new e(this));
  }
  
  public void a(int paramInt, String paramString)
  {
    b.a(a, false);
    b.e(a).post(new f(this));
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */