package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;

@me
public class bw
{
  private final int a;
  private final int b;
  private final int c;
  private final cf d;
  private final Object e = new Object();
  private ArrayList<String> f = new ArrayList();
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private int j;
  private String k = "";
  
  public bw(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = new cf(paramInt4);
  }
  
  private String a(ArrayList<String> paramArrayList, int paramInt)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList = "";
    }
    Object localObject;
    do
    {
      return paramArrayList;
      localObject = new StringBuffer();
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        ((StringBuffer)localObject).append((String)paramArrayList.next());
        ((StringBuffer)localObject).append(' ');
      } while (((StringBuffer)localObject).length() <= paramInt);
      ((StringBuffer)localObject).deleteCharAt(((StringBuffer)localObject).length() - 1);
      localObject = ((StringBuffer)localObject).toString();
      paramArrayList = (ArrayList<String>)localObject;
    } while (((String)localObject).length() < paramInt);
    return ((String)localObject).substring(0, paramInt);
  }
  
  private void c(String paramString)
  {
    if ((paramString == null) || (paramString.length() < c)) {
      return;
    }
    synchronized (e)
    {
      f.add(paramString);
      g += paramString.length();
      return;
    }
  }
  
  int a(int paramInt1, int paramInt2)
  {
    return a * paramInt1 + b * paramInt2;
  }
  
  public void a(int paramInt)
  {
    h = paramInt;
  }
  
  public void a(String arg1)
  {
    c(???);
    synchronized (e)
    {
      if (i < 0) {
        b.a("ActivityContent: negative number of WebViews.");
      }
      f();
      return;
    }
  }
  
  public boolean a()
  {
    for (;;)
    {
      synchronized (e)
      {
        if (i == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public String b()
  {
    return k;
  }
  
  public void b(String paramString)
  {
    c(paramString);
  }
  
  public void c()
  {
    synchronized (e)
    {
      j -= 100;
      return;
    }
  }
  
  public void d()
  {
    synchronized (e)
    {
      i -= 1;
      return;
    }
  }
  
  public void e()
  {
    synchronized (e)
    {
      i += 1;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bw)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (bw)paramObject;
    } while ((((bw)paramObject).b() == null) || (!((bw)paramObject).b().equals(b())));
    return true;
  }
  
  public void f()
  {
    synchronized (e)
    {
      int m = a(g, h);
      if (m > j)
      {
        j = m;
        k = d.a(f);
      }
      return;
    }
  }
  
  public int g()
  {
    return j;
  }
  
  int h()
  {
    return g;
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  public String toString()
  {
    return "ActivityContent fetchId: " + h + " score:" + j + " total_length:" + g + "\n text: " + a(f, 200) + "\n signture: " + k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */