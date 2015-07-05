package android.support.v4.content;

import android.support.v4.b.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class c<D>
{
  int a;
  d<D> b;
  boolean c;
  boolean d;
  boolean e;
  boolean f;
  
  public String a(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public final void a()
  {
    c = true;
    e = false;
    d = false;
    b();
  }
  
  public void a(int paramInt, d<D> paramd)
  {
    if (b != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    b = paramd;
    a = paramInt;
  }
  
  public void a(d<D> paramd)
  {
    if (b == null) {
      throw new IllegalStateException("No listener register");
    }
    if (b != paramd) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    b = null;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(c);
    paramPrintWriter.print(" mContentChanged=");
    paramPrintWriter.print(f);
    paramPrintWriter.print(" mAbandoned=");
    paramPrintWriter.print(d);
    paramPrintWriter.print(" mReset=");
    paramPrintWriter.println(e);
  }
  
  protected void b() {}
  
  public void c()
  {
    c = false;
    d();
  }
  
  protected void d() {}
  
  public void e()
  {
    f();
    e = true;
    c = false;
    d = false;
    f = false;
  }
  
  protected void f() {}
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */