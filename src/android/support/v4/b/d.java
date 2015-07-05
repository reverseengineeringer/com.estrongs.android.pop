package android.support.v4.b;

public class d<E>
{
  private static final Object a = new Object();
  private boolean b = false;
  private int[] c;
  private Object[] d;
  private int e;
  
  public d()
  {
    this(10);
  }
  
  public d(int paramInt)
  {
    paramInt = d(paramInt);
    c = new int[paramInt];
    d = new Object[paramInt];
    e = 0;
  }
  
  static int c(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  private void c()
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
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  static int d(int paramInt)
  {
    return c(paramInt * 4) / 4;
  }
  
  public int a()
  {
    if (b) {
      c();
    }
    return e;
  }
  
  public int a(int paramInt)
  {
    if (b) {
      c();
    }
    return c[paramInt];
  }
  
  public E b(int paramInt)
  {
    if (b) {
      c();
    }
    return (E)d[paramInt];
  }
  
  public void b()
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
}

/* Location:
 * Qualified Name:     android.support.v4.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */