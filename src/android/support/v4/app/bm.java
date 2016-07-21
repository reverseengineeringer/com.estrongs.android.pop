package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.o;
import android.support.v4.e.d;
import android.support.v4.e.s;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class bm
  extends bk
{
  static boolean a = false;
  final s<bn> b = new s();
  final s<bn> c = new s();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  private ai h;
  
  bm(String paramString, ai paramai, boolean paramBoolean)
  {
    d = paramString;
    h = paramai;
    e = paramBoolean;
  }
  
  private bn c(int paramInt, Bundle paramBundle, bl<Object> parambl)
  {
    bn localbn = new bn(this, paramInt, paramBundle, parambl);
    d = parambl.a(paramInt, paramBundle);
    return localbn;
  }
  
  private bn d(int paramInt, Bundle paramBundle, bl<Object> parambl)
  {
    try
    {
      g = true;
      paramBundle = c(paramInt, paramBundle, parambl);
      a(paramBundle);
      return paramBundle;
    }
    finally
    {
      g = false;
    }
  }
  
  public <D> o<D> a(int paramInt, Bundle paramBundle, bl<D> parambl)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    bn localbn = (bn)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    }
    if (localbn == null)
    {
      parambl = d(paramInt, paramBundle, parambl);
      paramBundle = parambl;
      if (a) {
        Log.v("LoaderManager", "  Created new loader " + parambl);
      }
    }
    for (paramBundle = parambl;; paramBundle = localbn)
    {
      if ((e) && (e)) {
        paramBundle.b(d, g);
      }
      return d;
      if (a) {
        Log.v("LoaderManager", "  Re-using existing loader " + localbn);
      }
      c = parambl;
    }
  }
  
  public void a(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    if (a) {
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt);
    }
    int i = b.g(paramInt);
    bn localbn;
    if (i >= 0)
    {
      localbn = (bn)b.f(i);
      b.d(i);
      localbn.g();
    }
    paramInt = c.g(paramInt);
    if (paramInt >= 0)
    {
      localbn = (bn)c.f(paramInt);
      c.d(paramInt);
      localbn.g();
    }
    if ((h != null) && (!a())) {
      h.d.f();
    }
  }
  
  void a(ai paramai)
  {
    h = paramai;
  }
  
  void a(bn parambn)
  {
    b.b(a, parambn);
    if (e) {
      parambn.a();
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    bn localbn;
    if (b.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < b.b())
      {
        localbn = (bn)b.f(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(b.e(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localbn.toString());
        localbn.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (c.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < c.b())
      {
        localbn = (bn)c.f(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(c.e(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localbn.toString());
        localbn.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public boolean a()
  {
    int j = b.b();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      bn localbn = (bn)b.f(i);
      if ((h) && (!f)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  public <D> o<D> b(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    bn localbn = (bn)b.a(paramInt);
    if (localbn != null)
    {
      if (n != null) {
        return n.d;
      }
      return d;
    }
    return null;
  }
  
  public <D> o<D> b(int paramInt, Bundle paramBundle, bl<D> parambl)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    bn localbn1 = (bn)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    }
    if (localbn1 != null)
    {
      bn localbn2 = (bn)c.a(paramInt);
      if (localbn2 == null) {
        break label323;
      }
      if (!e) {
        break label173;
      }
      if (a) {
        Log.v("LoaderManager", "  Removing last inactive loader: " + localbn1);
      }
      f = false;
      localbn2.g();
      d.j();
      c.b(paramInt, localbn1);
    }
    for (;;)
    {
      return dd;
      label173:
      if (!h)
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is stopped; replacing");
        }
        b.b(paramInt, null);
        localbn1.g();
      }
      else
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is running; attempting to cancel");
        }
        localbn1.f();
        if (n != null)
        {
          if (a) {
            Log.v("LoaderManager", "  Removing pending loader: " + n);
          }
          n.g();
          n = null;
        }
        if (a) {
          Log.v("LoaderManager", "  Enqueuing as new pending loader");
        }
        n = c(paramInt, paramBundle, parambl);
        return n.d;
        label323:
        if (a) {
          Log.v("LoaderManager", "  Making last loader inactive: " + localbn1);
        }
        d.j();
        c.b(paramInt, localbn1);
      }
    }
  }
  
  void b()
  {
    if (a) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      e = true;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((bn)b.f(i)).a();
        i -= 1;
      }
    }
  }
  
  void c()
  {
    if (a) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((bn)b.f(i)).e();
      i -= 1;
    }
    e = false;
  }
  
  void d()
  {
    if (a) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      f = true;
      e = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((bn)b.f(i)).b();
        i -= 1;
      }
    }
  }
  
  void e()
  {
    if (f)
    {
      if (a) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      f = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((bn)b.f(i)).c();
        i -= 1;
      }
    }
  }
  
  void f()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      b.f(i)).k = true;
      i -= 1;
    }
  }
  
  void g()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((bn)b.f(i)).d();
      i -= 1;
    }
  }
  
  void h()
  {
    if (!f)
    {
      if (a) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = b.b() - 1;
      while (i >= 0)
      {
        ((bn)b.f(i)).g();
        i -= 1;
      }
      b.c();
    }
    if (a) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = c.b() - 1;
    while (i >= 0)
    {
      ((bn)c.f(i)).g();
      i -= 1;
    }
    c.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    d.a(h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */