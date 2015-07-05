package com.gmail.yuyang226.flickr.d;

import com.gmail.yuyang226.flickr.a;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

public class d
{
  public static String a(String paramString)
  {
    StringBuffer localStringBuffer = null;
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      localStringBuffer = new StringBuffer(paramString.length());
      int i = 0;
      if (i >= paramString.length()) {
        return localStringBuffer.toString();
      }
      char c = paramString.charAt(i);
      if (c == '*') {
        localStringBuffer.append("%2A");
      }
      for (;;)
      {
        i += 1;
        break;
        if (c == '+')
        {
          localStringBuffer.append("%20");
        }
        else if ((c == '%') && (i + 1 < paramString.length()) && (paramString.charAt(i + 1) == '7') && (paramString.charAt(i + 2) == 'E'))
        {
          localStringBuffer.append('~');
          i += 2;
        }
        else
        {
          localStringBuffer.append(c);
        }
      }
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        paramString = localStringBuffer;
      }
    }
  }
  
  public static URL a(String paramString1, int paramInt, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://");
    localStringBuffer.append(paramString1);
    if (paramInt > 0)
    {
      localStringBuffer.append(":");
      localStringBuffer.append(paramInt);
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "/";
    }
    localStringBuffer.append(paramString1);
    return new URL(localStringBuffer.toString());
  }
  
  public static URL a(String paramString1, int paramInt, String paramString2, List<a> paramList)
  {
    int j = 1;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://");
    localStringBuffer.append(paramString1);
    int i;
    if (paramInt > 0)
    {
      i = 1;
      if (paramInt == 80) {
        break label131;
      }
      label40:
      if ((j & i) != 0)
      {
        localStringBuffer.append(":");
        localStringBuffer.append(paramInt);
      }
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = "/";
      }
      localStringBuffer.append(paramString1);
      paramString1 = paramList.iterator();
      if (paramString1.hasNext()) {
        localStringBuffer.append("?");
      }
    }
    for (;;)
    {
      if (!paramString1.hasNext())
      {
        return new URL(localStringBuffer.toString());
        i = 0;
        break;
        label131:
        j = 0;
        break label40;
      }
      paramString2 = (a)paramString1.next();
      localStringBuffer.append(paramString2.a());
      localStringBuffer.append("=");
      paramString2 = paramString2.b();
      if (paramString2 != null) {
        localStringBuffer.append(a(paramString2.toString()));
      }
      if (paramString1.hasNext()) {
        localStringBuffer.append("&");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */