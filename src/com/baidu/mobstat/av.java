package com.baidu.mobstat;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.baidu.mobstat.util.e;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

class av
  implements Runnable
{
  private long b;
  private long c;
  private WeakReference<Context> d;
  private WeakReference<Fragment> e;
  private WeakReference<Object> f;
  private int g = 1;
  
  public av(ao paramao, long paramLong1, long paramLong2, Context paramContext, Fragment paramFragment, Object paramObject, int paramInt)
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
        ao.a(a).b(b);
        String str = ao.a(a).c().toString();
        e.a("sdkstat", "new session:" + str);
        DataCore.getInstance().putSession(str);
        if (g != 1) {
          break label182;
        }
        DataCore.getInstance().flush((Context)localObject1);
      }
    }
    for (;;)
    {
      ao.a(a).b();
      ao.a(a, (Context)localObject1);
      if (localObject1 != null) {
        ag.a().a((Context)localObject1, "onresume");
      }
      return;
      label182:
      if (g == 2)
      {
        localObject1 = localFragment.b();
        DataCore.getInstance().flush((Context)localObject1);
      }
      else if (g == 3)
      {
        localObject1 = ao.a(localObject2);
        DataCore.getInstance().flush((Context)localObject1);
      }
      else
      {
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */