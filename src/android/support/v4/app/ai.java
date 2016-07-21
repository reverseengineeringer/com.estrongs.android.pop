package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.e.r;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class ai<E>
  extends ag
{
  private final Activity a;
  final Context b;
  final int c;
  final al d = new al();
  private final Handler e;
  private r<String, bk> f;
  private boolean g;
  private bm h;
  private boolean i;
  private boolean j;
  
  ai(Activity paramActivity, Context paramContext, Handler paramHandler, int paramInt)
  {
    a = paramActivity;
    b = paramContext;
    e = paramHandler;
    c = paramInt;
  }
  
  ai(FragmentActivity paramFragmentActivity)
  {
    this(paramFragmentActivity, paramFragmentActivity, mHandler, 0);
  }
  
  bm a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f == null) {
      f = new r();
    }
    bm localbm = (bm)f.get(paramString);
    if (localbm == null)
    {
      if (paramBoolean2)
      {
        localbm = new bm(paramString, this, paramBoolean1);
        f.put(paramString, localbm);
      }
      return localbm;
    }
    localbm.a(this);
    return localbm;
  }
  
  public View a(int paramInt)
  {
    return null;
  }
  
  public void a(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (paramInt != -1) {
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    b.startActivity(paramIntent);
  }
  
  public void a(Fragment paramFragment, String[] paramArrayOfString, int paramInt) {}
  
  void a(r<String, bk> paramr)
  {
    f = paramr;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  void a(boolean paramBoolean)
  {
    g = paramBoolean;
    if (h == null) {}
    while (!j) {
      return;
    }
    j = false;
    if (paramBoolean)
    {
      h.d();
      return;
    }
    h.c();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public boolean a(Fragment paramFragment)
  {
    return true;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public LayoutInflater b()
  {
    return (LayoutInflater)b.getSystemService("layout_inflater");
  }
  
  void b(Fragment paramFragment) {}
  
  void b(String paramString)
  {
    if (f != null)
    {
      bm localbm = (bm)f.get(paramString);
      if ((localbm != null) && (!f))
      {
        localbm.h();
        f.remove(paramString);
      }
    }
  }
  
  void b(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(j);
    if (h != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(h)));
      paramPrintWriter.println(":");
      h.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public void d() {}
  
  public boolean e()
  {
    return true;
  }
  
  public int f()
  {
    return c;
  }
  
  public abstract E g();
  
  Activity h()
  {
    return a;
  }
  
  Context i()
  {
    return b;
  }
  
  Handler j()
  {
    return e;
  }
  
  al k()
  {
    return d;
  }
  
  bm l()
  {
    if (h != null) {
      return h;
    }
    i = true;
    h = a("(root)", j, true);
    return h;
  }
  
  boolean m()
  {
    return g;
  }
  
  void n()
  {
    if (j) {
      return;
    }
    j = true;
    if (h != null) {
      h.b();
    }
    for (;;)
    {
      i = true;
      return;
      if (!i)
      {
        h = a("(root)", j, false);
        if ((h != null) && (!h.e)) {
          h.b();
        }
      }
    }
  }
  
  void o()
  {
    if (h == null) {
      return;
    }
    h.h();
  }
  
  void p()
  {
    if (f != null)
    {
      int m = f.size();
      bm[] arrayOfbm = new bm[m];
      int k = m - 1;
      while (k >= 0)
      {
        arrayOfbm[k] = ((bm)f.c(k));
        k -= 1;
      }
      k = 0;
      while (k < m)
      {
        bm localbm = arrayOfbm[k];
        localbm.e();
        localbm.g();
        k += 1;
      }
    }
  }
  
  r<String, bk> q()
  {
    int m = 0;
    int n;
    if (f != null)
    {
      int i1 = f.size();
      bm[] arrayOfbm = new bm[i1];
      int k = i1 - 1;
      while (k >= 0)
      {
        arrayOfbm[k] = ((bm)f.c(k));
        k -= 1;
      }
      k = 0;
      n = k;
      if (m < i1)
      {
        bm localbm = arrayOfbm[m];
        if (f) {
          k = 1;
        }
        for (;;)
        {
          m += 1;
          break;
          localbm.h();
          f.remove(d);
        }
      }
    }
    else
    {
      n = 0;
    }
    if (n != 0) {
      return f;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */