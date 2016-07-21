package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ef
{
  private final List<ee> a;
  
  public ef()
  {
    a = new ArrayList();
  }
  
  ef(List<ee> paramList)
  {
    a = new ArrayList(paramList);
  }
  
  public ef(Map<String, String> paramMap)
  {
    this();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      a.add(new ee((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
  }
  
  public String a()
  {
    return dz.a(b());
  }
  
  public void a(ef paramef)
  {
    a.addAll(a);
  }
  
  public String b()
  {
    if (a.size() == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ee localee = (ee)localIterator.next();
      localStringBuilder.append('&').append(localee.a());
    }
    return localStringBuilder.toString().substring(1);
  }
  
  public ef c()
  {
    ef localef = new ef(a);
    Collections.sort(a);
    return localef;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */