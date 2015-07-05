package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.b.a;
import android.support.v4.content.c;
import android.support.v4.content.d;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class z
  implements d<Object>
{
  final int a;
  final Bundle b;
  x<Object> c;
  c<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  z n;
  
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
      if (y.a) {
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
      m = true;
    }
    d.a();
  }
  
  void a(c<Object> paramc, Object paramObject)
  {
    String str;
    if (c != null)
    {
      if (o.e == null) {
        break label158;
      }
      str = o.e.b.u;
      o.e.b.u = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (y.a) {
          Log.v("LoaderManager", "  onLoadFinished in " + paramc + ": " + paramc.a(paramObject));
        }
        c.a(paramc, paramObject);
        if (o.e != null) {
          o.e.b.u = str;
        }
        f = true;
        return;
      }
      finally
      {
        if (o.e != null) {
          o.e.b.u = str;
        }
      }
      label158:
      str = null;
    }
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
    if (y.a) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    i = true;
    j = h;
    h = false;
    c = null;
  }
  
  void c()
  {
    if (i)
    {
      if (y.a) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      i = false;
      if ((h != j) && (!h)) {
        e();
      }
    }
    if ((h) && (e) && (!k)) {
      a(d, g);
    }
  }
  
  void d()
  {
    if ((h) && (k))
    {
      k = false;
      if (e) {
        a(d, g);
      }
    }
  }
  
  void e()
  {
    if (y.a) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    h = false;
    if ((!i) && (d != null) && (m))
    {
      m = false;
      d.a(this);
      d.c();
    }
  }
  
  void f()
  {
    if (y.a) {
      Log.v("LoaderManager", "  Destroying: " + this);
    }
    l = true;
    boolean bool = f;
    f = false;
    String str;
    if ((c != null) && (d != null) && (e) && (bool))
    {
      if (y.a) {
        Log.v("LoaderManager", "  Reseting: " + this);
      }
      if (o.e == null) {
        break label269;
      }
      str = o.e.b.u;
      o.e.b.u = "onLoaderReset";
    }
    for (;;)
    {
      try
      {
        c.a(d);
        if (o.e != null) {
          o.e.b.u = str;
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
          }
          d.e();
        }
        if (n != null) {
          n.f();
        }
        return;
      }
      finally
      {
        if (o.e != null) {
          o.e.b.u = str;
        }
      }
      label269:
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
    a.a(d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */