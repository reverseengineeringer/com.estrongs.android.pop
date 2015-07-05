package android.support.v4.app;

import android.support.v4.b.a;
import android.support.v4.b.d;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class y
  extends w
{
  static boolean a = false;
  final d<z> b = new d();
  final d<z> c = new d();
  final String d;
  FragmentActivity e;
  boolean f;
  boolean g;
  
  y(String paramString, FragmentActivity paramFragmentActivity, boolean paramBoolean)
  {
    d = paramString;
    e = paramFragmentActivity;
    f = paramBoolean;
  }
  
  void a(FragmentActivity paramFragmentActivity)
  {
    e = paramFragmentActivity;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    z localz;
    if (b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < b.a())
      {
        localz = (z)b.b(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(b.a(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz.toString());
        localz.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < c.a())
      {
        localz = (z)c.b(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(c.a(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz.toString());
        localz.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public boolean a()
  {
    int j = b.a();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      z localz = (z)b.b(i);
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
  
  void b()
  {
    if (a) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      f = true;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((z)b.b(i)).a();
        i -= 1;
      }
    }
  }
  
  void c()
  {
    if (a) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = b.a() - 1;
    while (i >= 0)
    {
      ((z)b.b(i)).e();
      i -= 1;
    }
    f = false;
  }
  
  void d()
  {
    if (a) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      g = true;
      f = false;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((z)b.b(i)).b();
        i -= 1;
      }
    }
  }
  
  void e()
  {
    if (g)
    {
      if (a) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      g = false;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((z)b.b(i)).c();
        i -= 1;
      }
    }
  }
  
  void f()
  {
    int i = b.a() - 1;
    while (i >= 0)
    {
      b.b(i)).k = true;
      i -= 1;
    }
  }
  
  void g()
  {
    int i = b.a() - 1;
    while (i >= 0)
    {
      ((z)b.b(i)).d();
      i -= 1;
    }
  }
  
  void h()
  {
    if (!g)
    {
      if (a) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = b.a() - 1;
      while (i >= 0)
      {
        ((z)b.b(i)).f();
        i -= 1;
      }
    }
    if (a) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = c.a() - 1;
    while (i >= 0)
    {
      ((z)c.b(i)).f();
      i -= 1;
    }
    c.b();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    a.a(e, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */