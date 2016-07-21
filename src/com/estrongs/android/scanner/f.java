package com.estrongs.android.scanner;

import android.database.DatabaseUtils;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class f
{
  private final List<Integer> a = new ArrayList();
  private final Long[] b = new Long[2];
  private final Long[] c = new Long[2];
  private final Long[] d = new Long[2];
  private int e = 0;
  private boolean f = true;
  private boolean g = false;
  private boolean h;
  private boolean i;
  private String j;
  private final List<String> k = new ArrayList();
  private Integer l;
  
  public void a(int paramInt)
  {
    a.add(Integer.valueOf(paramInt));
  }
  
  public void a(Integer paramInteger)
  {
    l = paramInteger;
  }
  
  public void a(Long paramLong1, Long paramLong2)
  {
    c[0] = paramLong1;
    c[1] = paramLong2;
  }
  
  public void a(String paramString)
  {
    k.add(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public Long[] a()
  {
    return d;
  }
  
  public void b(Long paramLong1, Long paramLong2)
  {
    d[0] = paramLong1;
    d[1] = paramLong2;
  }
  
  public void b(String paramString)
  {
    j = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public boolean b()
  {
    boolean bool = false;
    if ((d[0] != null) || (d[1] != null)) {
      bool = true;
    }
    return bool;
  }
  
  public List<Integer> c()
  {
    return a;
  }
  
  public Integer d()
  {
    return l;
  }
  
  public String e()
  {
    int i1 = 0;
    int i2 = 1;
    Object localObject1 = b[0];
    Object localObject2 = b[1];
    StringBuilder localStringBuilder = new StringBuilder();
    if (localObject1 != null) {
      localStringBuilder.append("size>").append(localObject1);
    }
    for (int n = 1;; n = 0)
    {
      int m = n;
      if (localObject2 != null)
      {
        if (n != 0)
        {
          localStringBuilder.append(" AND ");
          m = n;
          localStringBuilder.append("size<").append(localObject2);
        }
      }
      else
      {
        n = m;
        if (c[0] != null)
        {
          if (m == 0) {
            break label293;
          }
          localStringBuilder.append(" AND ");
          label107:
          localStringBuilder.append("lastmodified>").append(c[0]);
          n = m;
        }
        m = n;
        if (c[1] != null)
        {
          if (n == 0) {
            break label298;
          }
          localStringBuilder.append(" AND ");
          m = n;
          label151:
          localStringBuilder.append("lastmodified<").append(c[1]);
        }
        if (!g) {
          break label647;
        }
        localObject1 = x.a();
        if (m == 0) {
          break label303;
        }
        localStringBuilder.append(" AND (");
        i1 = 1;
      }
      label293:
      label298:
      label303:
      for (n = m;; n = 1)
      {
        m = ((List)localObject1).size();
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          localStringBuilder.append("path NOT LIKE ").append(DatabaseUtils.sqlEscapeString((String)localObject2 + "Android/data/%"));
          m -= 1;
          if (m > 0) {
            localStringBuilder.append(" AND ");
          }
        }
        m = 1;
        break;
        m = 1;
        break label107;
        m = 1;
        break label151;
      }
      m = n;
      if (i1 != 0)
      {
        localStringBuilder.append(")");
        m = n;
      }
      label403:
      label570:
      label575:
      label642:
      label647:
      for (;;)
      {
        n = m;
        if (h)
        {
          if (m != 0)
          {
            localStringBuilder.append(" AND ");
            localStringBuilder.append("pathtype != ").append(3);
            localStringBuilder.append(" AND ");
            localStringBuilder.append("pathtype != ").append(101);
            n = m;
          }
        }
        else
        {
          m = n;
          if (i)
          {
            if (n == 0) {
              break label570;
            }
            localStringBuilder.append(" AND ");
            m = n;
            localStringBuilder.append("pathtype != ").append(1);
            localStringBuilder.append(" AND ");
            localStringBuilder.append("pathtype != ").append(101);
          }
          n = m;
          if (!TextUtils.isEmpty(j))
          {
            if (m == 0) {
              break label575;
            }
            localStringBuilder.append(" AND ");
          }
        }
        for (;;)
        {
          localStringBuilder.append("groupname = '").append(j).append("'");
          n = m;
          if (k.isEmpty()) {
            break label642;
          }
          if (n != 0) {
            localStringBuilder.append(" AND (");
          }
          localObject1 = k.iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            localStringBuilder.append("extension = '").append((String)localObject2).append("'").append(" OR ");
          }
          m = 1;
          break;
          m = 1;
          break label403;
          m = 1;
        }
        localStringBuilder.delete(localStringBuilder.length() - 4, localStringBuilder.length());
        m = i2;
        if (n != 0) {
          localStringBuilder.append(")");
        }
        for (m = i2;; m = n)
        {
          if (m != 0) {
            localStringBuilder.append(" AND ");
          }
          localStringBuilder.append("filetype!= -1");
          return localStringBuilder.toString();
        }
      }
    }
  }
  
  public String f()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    switch (e)
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      localStringBuilder.append("size");
      if (f) {
        localStringBuilder.append(" ASC");
      }
      break;
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("lastmodified");
      break;
      localStringBuilder.append("name");
      break;
      localStringBuilder.append("filetype");
      break;
      localStringBuilder.append(" DESC");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */