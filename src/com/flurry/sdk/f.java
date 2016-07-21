package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class f
{
  private static f a;
  private static final String b = f.class.getSimpleName();
  private final TreeMap<String, Integer> c = new TreeMap();
  
  public static f a()
  {
    try
    {
      if (a == null) {
        a = new f();
      }
      f localf = a;
      return localf;
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    kg.a(3, b, "========== PRINT " + paramString.toUpperCase() + " COUNTERS ==========");
    synchronized (c)
    {
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((String)localEntry.getKey()).startsWith(paramString)) {
          kg.a(3, b, (String)localEntry.getKey() + " " + localEntry.getValue());
        }
      }
    }
    kg.a(3, b, "========== FINALIZE PRINT " + paramString.toUpperCase() + " COUNTERS ==========");
  }
  
  public void a(String paramString, int paramInt)
  {
    synchronized (c)
    {
      Integer localInteger = (Integer)c.get(paramString);
      TreeMap localTreeMap2 = c;
      int i = paramInt;
      if (localInteger != null) {
        i = paramInt + localInteger.intValue();
      }
      localTreeMap2.put(paramString, Integer.valueOf(i));
      return;
    }
  }
  
  public void b()
  {
    c.clear();
  }
  
  public void c()
  {
    kg.a(3, b, "========== PRINT COUNTERS ==========");
    synchronized (c)
    {
      Iterator localIterator = c.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        kg.a(3, b, (String)localEntry.getKey() + " " + localEntry.getValue());
      }
    }
    kg.a(3, b, "========== FINALIZE PRINT COUNTERS ==========");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */