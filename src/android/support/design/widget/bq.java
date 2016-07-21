package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class bq
{
  private static bq a;
  private final Object b = new Object();
  private final Handler c = new Handler(Looper.getMainLooper(), new br(this));
  private bt d;
  private bt e;
  
  static bq a()
  {
    if (a == null) {
      a = new bq();
    }
    return a;
  }
  
  private void a(bt parambt)
  {
    if (bt.b(parambt) == -2) {
      return;
    }
    int i = 2750;
    if (bt.b(parambt) > 0) {
      i = bt.b(parambt);
    }
    for (;;)
    {
      c.removeCallbacksAndMessages(parambt);
      c.sendMessageDelayed(Message.obtain(c, 0, parambt), i);
      return;
      if (bt.b(parambt) == -1) {
        i = 1500;
      }
    }
  }
  
  private boolean a(bt parambt, int paramInt)
  {
    bs localbs = (bs)bt.a(parambt).get();
    if (localbs != null)
    {
      c.removeCallbacksAndMessages(parambt);
      localbs.a(paramInt);
      return true;
    }
    return false;
  }
  
  private void b()
  {
    if (e != null)
    {
      d = e;
      e = null;
      bs localbs = (bs)bt.a(d).get();
      if (localbs != null) {
        localbs.a();
      }
    }
    else
    {
      return;
    }
    d = null;
  }
  
  private void b(bt parambt)
  {
    synchronized (b)
    {
      if ((d == parambt) || (e == parambt)) {
        a(parambt, 2);
      }
      return;
    }
  }
  
  private boolean f(bs parambs)
  {
    return (d != null) && (d.a(parambs));
  }
  
  private boolean g(bs parambs)
  {
    return (e != null) && (e.a(parambs));
  }
  
  public void a(int paramInt, bs parambs)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (f(parambs))
        {
          bt.a(d, paramInt);
          c.removeCallbacksAndMessages(d);
          a(d);
          return;
        }
        if (g(parambs))
        {
          bt.a(e, paramInt);
          if ((d == null) || (!a(d, 4))) {
            break;
          }
          return;
        }
      }
      e = new bt(paramInt, parambs);
    }
    d = null;
    b();
  }
  
  public void a(bs parambs)
  {
    synchronized (b)
    {
      if (f(parambs))
      {
        d = null;
        if (e != null) {
          b();
        }
      }
      return;
    }
  }
  
  public void a(bs parambs, int paramInt)
  {
    synchronized (b)
    {
      if (f(parambs)) {
        a(d, paramInt);
      }
      while (!g(parambs)) {
        return;
      }
      a(e, paramInt);
    }
  }
  
  public void b(bs parambs)
  {
    synchronized (b)
    {
      if (f(parambs)) {
        a(d);
      }
      return;
    }
  }
  
  public void c(bs parambs)
  {
    synchronized (b)
    {
      if (f(parambs)) {
        c.removeCallbacksAndMessages(d);
      }
      return;
    }
  }
  
  public void d(bs parambs)
  {
    synchronized (b)
    {
      if (f(parambs)) {
        a(d);
      }
      return;
    }
  }
  
  public boolean e(bs parambs)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (!f(parambs))
        {
          if (!g(parambs)) {
            break label40;
          }
          break label35;
          return bool;
        }
      }
      label35:
      boolean bool = true;
      continue;
      label40:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */