package com.flurry.sdk;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Pattern;

public class dz
{
  private static final String a = dz.class.getName();
  private static String b = "UTF-8";
  private static final Map<String, String> c;
  
  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("*", "%2A");
    localHashMap.put("+", "%20");
    localHashMap.put("%7E", "~");
    c = Collections.unmodifiableMap(localHashMap);
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      kg.a(5, a, "Cannot encode null string.");
    }
    try
    {
      paramString = URLEncoder.encode(paramString, b);
      Iterator localIterator = c.entrySet().iterator();
      Object localObject;
      for (;;)
      {
        localObject = paramString;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
        paramString = a(paramString, (String)((Map.Entry)localObject).getKey(), (String)((Map.Entry)localObject).getValue());
      }
      return (String)localObject;
    }
    catch (UnsupportedEncodingException paramString)
    {
      kg.a(5, a, "Error while encoding " + paramString);
      localObject = null;
    }
  }
  
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    return paramString1.replaceAll(Pattern.quote(paramString2), paramString3);
  }
  
  public static String b(String paramString)
  {
    if (paramString != null) {
      try
      {
        paramString = URLDecoder.decode(paramString, b);
        return paramString;
      }
      catch (UnsupportedEncodingException paramString)
      {
        kg.a(5, a, "Exception while decode: " + paramString);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */