package com.baidu.mobstat;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.support.v4.app.Fragment;
import java.lang.ref.WeakReference;

class cg
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
  
  public cg(ca paramca, long paramLong1, Context paramContext1, Fragment paramFragment1, long paramLong2, Context paramContext2, Fragment paramFragment2, int paramInt, String paramString, Object paramObject1, Object paramObject2)
  {
    b = paramLong1;
    f = paramLong2;
    c = new WeakReference(paramContext1);
    g = new WeakReference(paramContext2);
    d = new WeakReference(paramFragment1);
    h = new WeakReference(paramFragment2);
    i = new WeakReference(paramObject1);
    e = new WeakReference(paramObject2);
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
        cr.c("onPause, WeakReference is already been released");
      }
    }
    label360:
    do
    {
      return;
      if (localObject1 != localObject2)
      {
        if (k != null)
        {
          cr.b("onPageStart() or onPageEnd() install error.");
          return;
        }
        cr.b("onPause() or onResume() install error.");
        return;
      }
      l1 = b - f;
      localObject2 = new StringBuilder();
      long l2;
      if (k != null)
      {
        ((StringBuilder)localObject2).append(k);
        localObject3 = ca.a(a, k);
        if (localObject3 != null)
        {
          l2 = d - c;
          cr.c("page time = " + a + "; time = " + l2);
          l1 = l2;
          if (l2 < 20L)
          {
            cr.c("page time little than 20 mills.");
            return;
          }
        }
        l2 = l1;
      }
      for (;;)
      {
        cr.a("new page view, page name = " + ((StringBuilder)localObject2).toString() + ", stay time = " + l2 + "(ms)");
        ca.a(a).a(((StringBuilder)localObject2).toString(), l2, f);
        if (k == null) {
          break label360;
        }
        localObject2 = ca.a(a, k);
        if (localObject2 == null) {
          break;
        }
        ca.a(a, (Context)localObject1, d);
        ca.b(a, k);
        return;
        if (!(localObject1 instanceof Activity))
        {
          cr.c("onPause, pause is not a Activity");
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
      ca.a(a, (Context)localObject1, b);
      return;
      if (j == 2)
      {
        localObject1 = (Fragment)d.get();
        localObject2 = (Fragment)h.get();
        if ((localObject1 == null) || (localObject2 == null))
        {
          cr.c("onPause, WeakReference is already been released");
          return;
        }
        if (localObject1 != localObject2)
        {
          cr.c("onPause() or onResume() install error.");
          return;
        }
        l1 = b - f;
        localObject2 = localObject1.getClass().getName();
        localObject3 = ((String)localObject2).substring(((String)localObject2).lastIndexOf(".") + 1);
        cr.a("Fragment new page view, page name = " + ((String)localObject2).toString() + ", stay time = " + l1 + "(ms)");
        ca.a(a).a((String)localObject3, l1, f);
        ca.a(a, ((Fragment)localObject1).getActivity(), b);
        return;
      }
    } while (j != 3);
    Object localObject2 = e.get();
    Object localObject1 = i.get();
    if ((localObject2 == null) || (localObject1 == null))
    {
      cr.c("onPause, WeakReference is already been released");
      return;
    }
    if (localObject2 != localObject1)
    {
      cr.c("onPause() or onResume() install error.");
      return;
    }
    long l1 = b - f;
    localObject1 = ca.a(localObject2);
    if (localObject1 == null)
    {
      cr.c("getContxtFromReverse faild.");
      return;
    }
    localObject2 = localObject2.getClass().getName();
    Object localObject3 = ((String)localObject2).substring(((String)localObject2).lastIndexOf(".") + 1);
    cr.a("android.app.Fragment new page view, page name = " + ((String)localObject2).toString() + "; stay time = " + l1 + "(ms)");
    ca.a(a).a((String)localObject3, l1, f);
    ca.a(a, (Context)localObject1, b);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */