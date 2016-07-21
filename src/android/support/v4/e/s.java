package android.support.v4.e;

public class s<E>
  implements Cloneable
{
  private static final Object a = new Object();
  private boolean b = false;
  private int[] c;
  private Object[] d;
  private int e;
  
  public s()
  {
    this(10);
  }
  
  public s(int paramInt)
  {
    if (paramInt == 0) {
      c = c.a;
    }
    for (d = c.c;; d = new Object[paramInt])
    {
      e = 0;
      return;
      paramInt = c.a(paramInt);
      c = new int[paramInt];
    }
  }
  
  private void d()
  {
    int m = e;
    int[] arrayOfInt = c;
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
          arrayOfInt[j] = arrayOfInt[i];
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
  
  public s<E> a()
  {
    try
    {
      s locals = (s)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        c = ((int[])c.clone());
        d = ((Object[])d.clone());
        return locals;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  public E a(int paramInt)
  {
    return (E)a(paramInt, null);
  }
  
  public E a(int paramInt, E paramE)
  {
    paramInt = c.a(c, e, paramInt);
    if ((paramInt < 0) || (d[paramInt] == a)) {
      return paramE;
    }
    return (E)d[paramInt];
  }
  
  public int b()
  {
    if (b) {
      d();
    }
    return e;
  }
  
  public void b(int paramInt)
  {
    paramInt = c.a(c, e, paramInt);
    if ((paramInt >= 0) && (d[paramInt] != a))
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public void b(int paramInt, E paramE)
  {
    int i = c.a(c, e, paramInt);
    if (i >= 0)
    {
      d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramInt;
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
        i = c.a(c, e, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = c.a(e + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfInt;
      d = arrayOfObject;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramInt;
    d[i] = paramE;
    e += 1;
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
  
  public void c(int paramInt)
  {
    b(paramInt);
  }
  
  public void d(int paramInt)
  {
    if (d[paramInt] != a)
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public int e(int paramInt)
  {
    if (b) {
      d();
    }
    return c[paramInt];
  }
  
  public E f(int paramInt)
  {
    if (b) {
      d();
    }
    return (E)d[paramInt];
  }
  
  public int g(int paramInt)
  {
    if (b) {
      d();
    }
    return c.a(c, e, paramInt);
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
      localStringBuilder.append(e(i));
      localStringBuilder.append('=');
      Object localObject = f(i);
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
 * Qualified Name:     android.support.v4.e.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */