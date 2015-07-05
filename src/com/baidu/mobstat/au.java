package com.baidu.mobstat;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.support.v4.app.Fragment;
import com.baidu.mobstat.util.e;
import java.lang.ref.WeakReference;

class au
  implements Runnable
{
  private long b;
  private WeakReference<Context> c;
  private WeakReference<Fragment> d;
  private WeakReference<Object> e;
  private long f;
  private WeakReference<Context> g;
  private WeakReference<Fragment> h;
  private WeakReference<Object> i;
  private int j;
  private String k = null;
  
  public au(ao paramao, long paramLong1, Context paramContext1, Fragment paramFragment1, long paramLong2, Context paramContext2, Fragment paramFragment2, int paramInt, String paramString, Object paramObject1, Object paramObject2)
  {
    b = paramLong1;
    if (paramContext1 != null) {
      c = new WeakReference(paramContext1);
    }
    f = paramLong2;
    if (paramContext2 != null) {
      g = new WeakReference(paramContext2);
    }
    if (paramFragment1 != null) {
      d = new WeakReference(paramFragment1);
    }
    if (paramFragment2 != null) {
      h = new WeakReference(paramFragment2);
    }
    if (paramObject1 != null) {
      i = new WeakReference(paramObject1);
    }
    if (paramObject2 != null) {
      e = new WeakReference(paramObject2);
    }
    j = paramInt;
    k = paramString;
  }
  
  public void run()
  {
    if (j == 1)
    {
      localObject1 = (Context)c.get();
      localObject2 = (Context)g.get();
      if ((localObject1 == null) || (localObject2 == null)) {
        e.c(new Object[] { "sdkstat", "onPause, WeakReference is already been released" });
      }
    }
    label441:
    do
    {
      return;
      if (localObject1 != localObject2)
      {
        if (k != null)
        {
          e.b(new Object[] { "sdkstat", "onPageStart() or onPageEnd() install error." });
          return;
        }
        e.b(new Object[] { "sdkstat", "onPause() or onResume() install error." });
        return;
      }
      l1 = b - f;
      localObject2 = new StringBuilder();
      long l2;
      if (k != null)
      {
        ((StringBuilder)localObject2).append(k);
        localObject3 = a.b(k);
        if (localObject3 != null)
        {
          l2 = d - c;
          e.c(new Object[] { "sdkstat", "page time = " + a + "; time = " + l2 });
          l1 = l2;
          if (l2 < 20L)
          {
            e.c(new Object[] { "sdkstat", "page time little than 20 mills." });
            return;
          }
        }
        l2 = l1;
      }
      for (;;)
      {
        e.a("sdkstat", "new page view, page name = " + ((StringBuilder)localObject2).toString() + ", stay time = " + l2 + "(ms)");
        ao.a(a).a(((StringBuilder)localObject2).toString(), l2, f);
        if (k == null) {
          break label441;
        }
        localObject2 = a.b(k);
        if (localObject2 == null) {
          break;
        }
        ao.a(a, (Context)localObject1, d);
        a.c(k);
        return;
        if (!(localObject1 instanceof Activity))
        {
          e.c(new Object[] { "sdkstat", "onPause, pause is not a Activity" });
          return;
        }
        ((StringBuilder)localObject2).append(((Activity)localObject1).getComponentName().getShortClassName());
        l2 = l1;
        if (((StringBuilder)localObject2).charAt(0) == '.')
        {
          ((StringBuilder)localObject2).deleteCharAt(0);
          l2 = l1;
        }
      }
      ao.a(a, (Context)localObject1, b);
      return;
      if (j == 2)
      {
        localObject1 = (Fragment)d.get();
        localObject2 = (Fragment)h.get();
        if ((localObject1 == null) || (localObject2 == null))
        {
          e.c(new Object[] { "sdkstat", "onPause, WeakReference is already been released" });
          return;
        }
        if (localObject1 != localObject2)
        {
          e.c(new Object[] { "sdkstat", "onPause() or onResume() install error." });
          return;
        }
        l1 = b - f;
        localObject2 = localObject1.getClass().getName();
        localObject3 = ((String)localObject2).substring(((String)localObject2).lastIndexOf(".") + 1);
        e.a("sdkstat", "Fragment new page view, page name = " + ((String)localObject2).toString() + ", stay time = " + l1 + "(ms)");
        ao.a(a).a((String)localObject3, l1, f);
        ao.a(a, ((Fragment)localObject1).b(), b);
        return;
      }
    } while (j != 3);
    Object localObject2 = e.get();
    Object localObject1 = i.get();
    if ((localObject2 == null) || (localObject1 == null))
    {
      e.c(new Object[] { "sdkstat", "onPause, WeakReference is already been released" });
      return;
    }
    if (localObject2 != localObject1)
    {
      e.c(new Object[] { "sdkstat", "onPause() or onResume() install error." });
      return;
    }
    long l1 = b - f;
    localObject1 = ao.a(localObject2);
    if (localObject1 == null)
    {
      e.c("getContxtFromReverse faild.");
      return;
    }
    localObject2 = localObject2.getClass().getName();
    Object localObject3 = ((String)localObject2).substring(((String)localObject2).lastIndexOf(".") + 1);
    e.a("sdkstat", "android.app.Fragment new page view, page name = " + ((String)localObject2).toString() + "; stay time = " + l1 + "(ms)");
    ao.a(a).a((String)localObject3, l1, f);
    ao.a(a, (Context)localObject1, b);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */