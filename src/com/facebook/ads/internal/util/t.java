package com.facebook.ads.internal.util;

import java.util.Iterator;
import java.util.Set;

public class t
{
  public static String a(Set<String> paramSet, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      localStringBuilder.append((String)paramSet.next());
      localStringBuilder.append(paramString);
    }
    if (localStringBuilder.length() > 0) {
      return localStringBuilder.substring(0, localStringBuilder.length() - 1);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */