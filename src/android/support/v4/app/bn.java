package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.o;
import android.support.v4.content.p;
import android.support.v4.content.q;
import android.support.v4.e.d;
import android.support.v4.e.s;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class bn
  implements p<Object>, q<Object>
{
  final int a;
  final Bundle b;
  bl<Object> c;
  o<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  bn n;
  
  public bn(int paramInt, Bundle paramBundle, bl<Object> parambl)
  {
    a = paramBundle;
    b = parambl;
    bl localbl;
    c = localbl;
  }
  
  void a()
  {
    if ((i) && (j)) {
      h = true;
    }
    do
    {
      do
      {
        return;
      } while (h);
      h = true;
      if (bm.a) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      if ((d == null) && (c != null)) {
        d = c.a(a, b);
      }
    } while (d == null);
    if ((d.getClass().isMemberClass()) && (!Modifier.isStatic(d.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + d);
    }
    if (!m)
    {
      d.a(a, this);
      d.a(this);
      m = true;
    }
    d.d();
  }
  
  public void a(o<Object> paramo)
  {
    if (bm.a) {
      Log.v("LoaderManager", "onLoadCanceled: " + this);
    }
    if (l) {
      if (bm.a) {
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!bm.a);
      Log.v("LoaderManager", "  Ignoring load canceled -- not active");
      return;
      paramo = n;
    } while (paramo == null);
    if (bm.a) {
      Log.v("LoaderManager", "  Switching to pending loader: " + paramo);
    }
    n = null;
    o.b.b(a, null);
    g();
    o.a(paramo);
  }
  
  public void a(o<Object> paramo, Object paramObject)
  {
    if (bm.a) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (l) {
      if (bm.a) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!bm.a);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      bn localbn = n;
      if (localbn != null)
      {
        if (bm.a) {
          Log.v("LoaderManager", "  Switching to pending loader: " + localbn);
        }
        n = null;
        o.b.b(a, null);
        g();
        o.a(localbn);
        return;
      }
      if ((g != paramObject) || (!e))
      {
        g = paramObject;
        e = true;
        if (h) {
          b(paramo, paramObject);
        }
      }
      paramo = (bn)o.c.a(a);
      if ((paramo != null) && (paramo != this))
      {
        f = false;
        paramo.g();
        o.c.c(a);
      }
    } while ((bm.a(o) == null) || (o.a()));
    ao).d.f();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(c);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(d);
    if (d != null) {
      d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if ((e) || (f))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(e);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(f);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(g);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(h);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(k);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(i);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(j);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(m);
    if (n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(n);
      paramPrintWriter.println(":");
      n.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  void b()
  {
    if (bm.a) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    i = true;
    j = h;
    h = false;
    c = null;
  }
  
  void b(o<Object> paramo, Object paramObject)
  {
    String str;
    if (c != null)
    {
      if (bm.a(o) == null) {
        break label161;
      }
      str = ao).d.v;
      ao).d.v = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (bm.a) {
          Log.v("LoaderManager", "  onLoadFinished in " + paramo + ": " + paramo.b(paramObject));
        }
        c.a(paramo, paramObject);
        if (bm.a(o) != null) {
          ao).d.v = str;
        }
        f = true;
        return;
      }
      finally
      {
        if (bm.a(o) != null) {
          ao).d.v = str;
        }
      }
      label161:
      str = null;
    }
  }
  
  void c()
  {
    if (i)
    {
      if (bm.a) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      i = false;
      if ((h != j) && (!h)) {
        e();
      }
    }
    if ((h) && (e) && (!k)) {
      b(d, g);
    }
  }
  
  void d()
  {
    if ((h) && (k))
    {
      k = false;
      if (e) {
        b(d, g);
      }
    }
  }
  
  void e()
  {
    if (bm.a) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    h = false;
    if ((!i) && (d != null) && (m))
    {
      m = false;
      d.a(this);
      d.b(this);
      d.h();
    }
  }
  
  void f()
  {
    if (bm.a) {
      Log.v("LoaderManager", "  Canceling: " + this);
    }
    if ((h) && (d != null) && (m) && (!d.f())) {
      a(d);
    }
  }
  
  void g()
  {
    if (bm.a) {
      Log.v("LoaderManager", "  Destroying: " + this);
    }
    l = true;
    boolean bool = f;
    f = false;
    String str;
    if ((c != null) && (d != null) && (e) && (bool))
    {
      if (bm.a) {
        Log.v("LoaderManager", "  Reseting: " + this);
      }
      if (bm.a(o) == null) {
        break label280;
      }
      str = ao).d.v;
      ao).d.v = "onLoaderReset";
    }
    for (;;)
    {
      try
      {
        c.a(d);
        if (bm.a(o) != null) {
          ao).d.v = str;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
          if (m)
          {
            m = false;
            d.a(this);
            d.b(this);
          }
          d.l();
        }
        if (n != null) {
          n.g();
        }
        return;
      }
      finally
      {
        if (bm.a(o) != null) {
          ao).d.v = str;
        }
      }
      label280:
      str = null;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(a);
    localStringBuilder.append(" : ");
    d.a(d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */