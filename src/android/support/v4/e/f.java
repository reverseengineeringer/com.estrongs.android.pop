package android.support.v4.e;

public class f<E>
  implements Cloneable
{
  private static final Object a = new Object();
  private boolean b = false;
  private long[] c;
  private Object[] d;
  private int e;
  
  public f()
  {
    this(10);
  }
  
  public f(int paramInt)
  {
    if (paramInt == 0) {
      c = c.b;
    }
    for (d = c.c;; d = new Object[paramInt])
    {
      e = 0;
      return;
      paramInt = c.b(paramInt);
      c = new long[paramInt];
    }
  }
  
  private void d()
  {
    int m = e;
    long[] arrayOfLong = c;
    Object[] arrayOfObject = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != a)
      {
        if (i != j)
        {
          arrayOfLong[j] = arrayOfLong[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  public f<E> a()
  {
    try
    {
      f localf = (f)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        c = ((long[])c.clone());
        d = ((Object[])d.clone());
        return localf;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  public E a(long paramLong)
  {
    return (E)a(paramLong, null);
  }
  
  public E a(long paramLong, E paramE)
  {
    int i = c.a(c, e, paramLong);
    if ((i < 0) || (d[i] == a)) {
      return paramE;
    }
    return (E)d[i];
  }
  
  public void a(int paramInt)
  {
    if (d[paramInt] != a)
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public int b()
  {
    if (b) {
      d();
    }
    return e;
  }
  
  public long b(int paramInt)
  {
    if (b) {
      d();
    }
    return c[paramInt];
  }
  
  public void b(long paramLong)
  {
    int i = c.a(c, e, paramLong);
    if ((i >= 0) && (d[i] != a))
    {
      d[i] = a;
      b = true;
    }
  }
  
  public void b(long paramLong, E paramE)
  {
    int i = c.a(c, e, paramLong);
    if (i >= 0)
    {
      d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramLong;
      d[j] = paramE;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        d();
        i = c.a(c, e, paramLong) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = c.b(e + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfLong, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfLong;
      d = arrayOfObject;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramLong;
    d[i] = paramE;
    e += 1;
  }
  
  public E c(int paramInt)
  {
    if (b) {
      d();
    }
    return (E)d[paramInt];
  }
  
  public void c()
  {
    int j = e;
    Object[] arrayOfObject = d;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    e = 0;
    b = false;
  }
  
  public String toString()
  {
    if (b() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(e * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < e)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(b(i));
      localStringBuilder.append('=');
      Object localObject = c(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.e.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */