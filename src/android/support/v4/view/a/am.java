package android.support.v4.view.a;

import android.os.Build.VERSION;

public class am
{
  private static final ap a = new ar();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new aq();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      a = new ao();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new an();
      return;
    }
  }
  
  public am(Object paramObject)
  {
    b = paramObject;
  }
  
  public void a(int paramInt)
  {
    a.b(b, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void c(int paramInt)
  {
    a.e(b, paramInt);
  }
  
  public void d(int paramInt)
  {
    a.c(b, paramInt);
  }
  
  public void e(int paramInt)
  {
    a.d(b, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (am)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(int paramInt)
  {
    a.f(b, paramInt);
  }
  
  public void g(int paramInt)
  {
    a.g(b, paramInt);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */