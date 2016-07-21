package android.support.v4.e;

public class p<T>
  implements o<T>
{
  private final Object[] a;
  private int b;
  
  public p(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("The max pool size must be > 0");
    }
    a = new Object[paramInt];
  }
  
  private boolean b(T paramT)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < b)
      {
        if (a[i] == paramT) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public T a()
  {
    if (b > 0)
    {
      int i = b - 1;
      Object localObject = a[i];
      a[i] = null;
      b -= 1;
      return (T)localObject;
    }
    return null;
  }
  
  public boolean a(T paramT)
  {
    if (b(paramT)) {
      throw new IllegalStateException("Already in the pool!");
    }
    if (b < a.length)
    {
      a[b] = paramT;
      b += 1;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.e.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */