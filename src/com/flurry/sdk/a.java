package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  private static final String a = a.class.getSimpleName();
  private final az b;
  private final Map<String, String> c;
  private final b d;
  
  public a(az paramaz, Map<String, String> paramMap, b paramb)
  {
    b = paramaz;
    c = paramMap;
    d = paramb;
  }
  
  public static az c(String paramString)
  {
    az[] arrayOfaz = az.values();
    int j = arrayOfaz.length;
    int i = 0;
    while (i < j)
    {
      az localaz = arrayOfaz[i];
      if (localaz.toString().equals(paramString))
      {
        kg.a(5, a, "Action Type for name: " + paramString + " is " + localaz);
        return localaz;
      }
      i += 1;
    }
    return az.a;
  }
  
  public az a()
  {
    return b;
  }
  
  public String a(String paramString)
  {
    if ((c == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    return (String)c.get(paramString);
  }
  
  public String a(String paramString1, String paramString2)
  {
    if ((c == null) || (TextUtils.isEmpty(paramString1))) {
      return null;
    }
    return (String)c.put(paramString1, paramString2);
  }
  
  public String b(String paramString)
  {
    if ((c == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    return (String)c.remove(paramString);
  }
  
  public Map<String, String> b()
  {
    return c;
  }
  
  public b c()
  {
    return d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("action=");
    localStringBuilder.append(b.toString());
    localStringBuilder.append(",params=");
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(",key=" + (String)localEntry.getKey() + ",value=" + (String)localEntry.getValue());
    }
    localStringBuilder.append(",");
    localStringBuilder.append(",fTriggeringEvent=");
    localStringBuilder.append(d);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */