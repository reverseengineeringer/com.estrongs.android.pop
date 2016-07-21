package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nz;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@me
class p
  implements ae, Runnable
{
  CountDownLatch a = new CountDownLatch(1);
  private final List<Object[]> b = new Vector();
  private final AtomicReference<ae> c = new AtomicReference();
  private af d;
  
  public p(af paramaf)
  {
    d = paramaf;
    if (m.a().b())
    {
      nz.a(this);
      return;
    }
    run();
  }
  
  private Context b(Context paramContext)
  {
    if (!((Boolean)cz.m.c()).booleanValue()) {}
    Context localContext;
    do
    {
      return paramContext;
      localContext = paramContext.getApplicationContext();
    } while (localContext == null);
    return localContext;
  }
  
  private void b()
  {
    if (b.isEmpty()) {
      return;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object[] arrayOfObject = (Object[])localIterator.next();
      if (arrayOfObject.length == 1) {
        ((ae)c.get()).a((MotionEvent)arrayOfObject[0]);
      } else if (arrayOfObject.length == 3) {
        ((ae)c.get()).a(((Integer)arrayOfObject[0]).intValue(), ((Integer)arrayOfObject[1]).intValue(), ((Integer)arrayOfObject[2]).intValue());
      }
    }
    b.clear();
  }
  
  protected ae a(String paramString, Context paramContext, boolean paramBoolean)
  {
    return ag.a(paramString, paramContext, paramBoolean);
  }
  
  public String a(Context paramContext)
  {
    if (a())
    {
      ae localae = (ae)c.get();
      if (localae != null)
      {
        b();
        return localae.a(b(paramContext));
      }
    }
    return "";
  }
  
  public String a(Context paramContext, String paramString)
  {
    if (a())
    {
      ae localae = (ae)c.get();
      if (localae != null)
      {
        b();
        return localae.a(b(paramContext), paramString);
      }
    }
    return "";
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    ae localae = (ae)c.get();
    if (localae != null)
    {
      b();
      localae.a(paramInt1, paramInt2, paramInt3);
      return;
    }
    b.add(new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    ae localae = (ae)c.get();
    if (localae != null)
    {
      b();
      localae.a(paramMotionEvent);
      return;
    }
    b.add(new Object[] { paramMotionEvent });
  }
  
  protected void a(ae paramae)
  {
    c.set(paramae);
  }
  
  protected boolean a()
  {
    try
    {
      a.await();
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      b.d("Interrupted during GADSignals creation.", localInterruptedException);
    }
    return false;
  }
  
  public void run()
  {
    label94:
    for (;;)
    {
      try
      {
        if (((Boolean)cz.y.c()).booleanValue()) {
          if (d.e.f)
          {
            break label94;
            a(a(d.e.c, b(d.c), bool));
          }
          else
          {
            bool = false;
            continue;
          }
        }
        boolean bool = true;
      }
      finally
      {
        a.countDown();
        d = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */