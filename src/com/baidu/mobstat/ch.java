package com.baidu.mobstat;

import android.content.Context;
import android.support.v4.app.Fragment;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

class ch
  implements Runnable
{
  private long b;
  private long c;
  private WeakReference<Context> d;
  private WeakReference<Fragment> e;
  private WeakReference<Object> f;
  private int g = 1;
  
  public ch(ca paramca, long paramLong1, long paramLong2, Context paramContext, Fragment paramFragment, Object paramObject, int paramInt)
  {
    b = paramLong1;
    c = paramLong2;
    d = new WeakReference(paramContext);
    e = new WeakReference(paramFragment);
    f = new WeakReference(paramObject);
    g = paramInt;
  }
  
  public void run()
  {
    Object localObject1;
    Fragment localFragment;
    Object localObject2;
    if ((c - b >= a.b()) && (b > 0L))
    {
      localObject1 = (Context)d.get();
      localFragment = (Fragment)e.get();
      localObject2 = f.get();
      if ((localObject1 != null) || (localFragment != null) || (localObject2 != null))
      {
        ca.a(a).b(b);
        String str = ca.a(a).c().toString();
        cr.a("new session:" + str);
        DataCore.instance().putSession(str);
        if (g != 1) {
          break label177;
        }
        DataCore.instance().flush((Context)localObject1);
      }
    }
    for (;;)
    {
      ca.a(a).b();
      ca.a(a, (Context)localObject1);
      if (localObject1 != null) {
        bs.a().b((Context)localObject1);
      }
      return;
      label177:
      if (g == 2)
      {
        localObject1 = localFragment.getActivity();
        DataCore.instance().flush((Context)localObject1);
      }
      else if (g == 3)
      {
        localObject1 = ca.a(localObject2);
        DataCore.instance().flush((Context)localObject1);
      }
      else
      {
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */