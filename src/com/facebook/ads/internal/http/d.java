package com.facebook.ads.internal.http;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class d
{
  private static String d = "UTF-8";
  protected ConcurrentHashMap<String, String> a;
  protected ConcurrentHashMap<String, d.a> b;
  protected ConcurrentHashMap<String, ArrayList<String>> c;
  
  public d()
  {
    c();
  }
  
  public d(Map<String, String> paramMap)
  {
    c();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      a((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }
  
  private void c()
  {
    a = new ConcurrentHashMap();
    b = new ConcurrentHashMap();
    c = new ConcurrentHashMap();
  }
  
  public HttpEntity a()
  {
    Object localObject1;
    if (!b.isEmpty())
    {
      e locale = new e();
      localObject1 = a.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        locale.a((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      int j = b.entrySet().size();
      localObject1 = b.entrySet().iterator();
      int i = 0;
      Object localObject3;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = (d.a)((Map.Entry)localObject2).getValue();
        boolean bool;
        if (a != null)
        {
          if (i != j - 1) {
            break label209;
          }
          bool = true;
          label163:
          if (c == null) {
            break label214;
          }
          locale.a((String)((Map.Entry)localObject2).getKey(), ((d.a)localObject3).a(), a, c, bool);
        }
        for (;;)
        {
          i += 1;
          break;
          label209:
          bool = false;
          break label163;
          label214:
          locale.a((String)((Map.Entry)localObject2).getKey(), ((d.a)localObject3).a(), a, bool);
        }
      }
      Object localObject2 = c.entrySet().iterator();
      for (;;)
      {
        localObject1 = locale;
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        localObject1 = (Map.Entry)((Iterator)localObject2).next();
        localObject3 = ((ArrayList)((Map.Entry)localObject1).getValue()).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          String str = (String)((Iterator)localObject3).next();
          locale.a((String)((Map.Entry)localObject1).getKey(), str);
        }
      }
    }
    try
    {
      localObject1 = new UrlEncodedFormEntity(b(), d);
      return (HttpEntity)localObject1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      a.put(paramString1, paramString2);
    }
  }
  
  protected List<BasicNameValuePair> b()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator1 = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), str));
      }
    }
    return localLinkedList;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    localIterator1 = b.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      ArrayList localArrayList = (ArrayList)localEntry.getValue();
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        if (localArrayList.indexOf(str) != 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */