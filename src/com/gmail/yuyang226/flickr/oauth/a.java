package com.gmail.yuyang226.flickr.oauth;

import com.gmail.yuyang226.flickr.FlickrException;
import com.gmail.yuyang226.flickr.d.d;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = (byte[])null;
    Mac localMac = Mac.getInstance("HmacSHA1");
    localObject = paramString3;
    if (paramString3 == null) {
      localObject = "";
    }
    localMac.init(new SecretKeySpec((paramString2 + "&" + (String)localObject).getBytes(), "HmacSHA1"));
    return new String(com.gmail.yuyang226.flickr.d.a.a(localMac.doFinal(paramString1.getBytes("UTF-8"))));
  }
  
  public static String a(String paramString1, String paramString2, List<com.gmail.yuyang226.flickr.a> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString1);
    localStringBuffer.append("&");
    localStringBuffer.append(d.a(paramString2));
    localStringBuffer.append("&");
    Collections.sort(paramList, new b());
    return d.a(a(paramList, "UTF-8"));
  }
  
  public static String a(String paramString1, String paramString2, List<com.gmail.yuyang226.flickr.a> paramList, String paramString3, String paramString4)
  {
    try
    {
      paramString1 = a(a(paramString1, paramString2.toLowerCase(Locale.US), paramList), paramString3, paramString4);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new FlickrException(paramString1);
    }
    catch (InvalidKeyException paramString1)
    {
      throw new FlickrException(paramString1);
    }
    catch (IllegalStateException paramString1)
    {
      throw new FlickrException(paramString1);
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      throw new FlickrException(paramString1);
    }
  }
  
  public static String a(List<com.gmail.yuyang226.flickr.a> paramList, String paramString)
  {
    paramString = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        return paramString.toString();
      }
      localObject = (com.gmail.yuyang226.flickr.a)localIterator.next();
      paramList = ((com.gmail.yuyang226.flickr.a)localObject).b();
    } while ((localObject instanceof com.gmail.yuyang226.flickr.c.a));
    Object localObject = d.a(((com.gmail.yuyang226.flickr.a)localObject).a());
    paramList = String.valueOf(paramList);
    if (paramList != null) {}
    for (paramList = d.a(paramList);; paramList = "")
    {
      if (paramString.length() > 0) {
        paramString.append("&");
      }
      paramString.append((String)localObject);
      paramString.append("=");
      paramString.append(paramList);
      break;
    }
  }
  
  public static void a(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    b(paramList);
    d(paramList);
    c(paramList);
    e(paramList);
  }
  
  private static void b(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_nonce", Long.toString(System.nanoTime())));
  }
  
  private static void c(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_signature_method", "HMAC-SHA1"));
  }
  
  private static void d(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_timestamp", String.valueOf(System.currentTimeMillis() / 1000L)));
  }
  
  private static void e(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_version", "1.0"));
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.oauth.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */