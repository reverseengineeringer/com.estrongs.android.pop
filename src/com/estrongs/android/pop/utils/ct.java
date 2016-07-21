package com.estrongs.android.pop.utils;

class ct<T>
{
  protected Object[] a;
  
  public ct(int paramInt)
  {
    a = new Object[paramInt];
  }
  
  public T a()
  {
    for (;;)
    {
      try
      {
        int i;
        synchronized (a)
        {
          int j = a.length;
          i = 0;
          if (i < j)
          {
            if (a[i] != null)
            {
              Object localObject1 = a[i];
              a[i] = null;
              return (T)localObject1;
            }
          }
          else {
            return null;
          }
        }
        i += 1;
      }
      catch (Exception localException)
      {
        return null;
      }
    }
  }
  
  public void a(T paramT)
  {
    for (;;)
    {
      try
      {
        Object[] arrayOfObject = a;
        int i = 0;
        try
        {
          int j = a.length;
          if (i < j)
          {
            if (a[i] == null) {
              a[i] = paramT;
            }
          }
          else {
            return;
          }
        }
        finally {}
        i += 1;
      }
      catch (Exception paramT)
      {
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */