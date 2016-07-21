package com.flurry.sdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class km
{
  private final HashMap<String, String> a = new HashMap();
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = a.entrySet();
    if (((Set)localObject).size() > 0)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        localStringBuilder.append(lt.c((String)localEntry.getKey()));
        localStringBuilder.append("=");
        localStringBuilder.append(lt.c((String)localEntry.getValue()));
        localStringBuilder.append("&");
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    }
    return localStringBuilder.toString();
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    a.put(paramString1, paramString2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (km)paramObject;
      if (a == null) {
        break;
      }
    } while (a.equals(a));
    while (a != null) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    if (a != null) {
      return a.hashCode();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */