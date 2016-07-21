package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public abstract class el
{
  public static final eg a = new eg("", "");
  private static final String b = el.class.getName();
  private static final Pattern c = Pattern.compile("oauth_token=([^&]+)");
  private static final Pattern d = Pattern.compile("oauth_token_secret=([^&]*)");
  private Map<String, String> e = new HashMap();
  private Map<String, String> f = new HashMap();
  private Map<String, String> g = new HashMap();
  
  private String a(String paramString1, String paramString2, String paramString3)
  {
    return d(paramString1, dz.a(paramString2) + '&' + dz.a(paramString3));
  }
  
  private String a(String paramString, Pattern paramPattern)
  {
    paramString = paramPattern.matcher(paramString);
    if ((paramString.find()) && (paramString.groupCount() >= 1)) {
      return dz.b(paramString.group(1));
    }
    kg.a(5, b, "Cannot extract token from response");
    return null;
  }
  
  private String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new String(Base64.encode(paramArrayOfByte, 2), "UTF-8");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      kg.a(5, b, "Error while encoding." + paramArrayOfByte);
    }
    return null;
  }
  
  private void a(eg parameg)
  {
    eo localeo = new eo();
    if (!TextUtils.isEmpty(parameg.a())) {
      a("oauth_token", parameg.a());
    }
    a("oauth_callback", em.c());
    a("oauth_timestamp", localeo.b());
    a("oauth_nonce", localeo.a());
    a("oauth_consumer_key", em.a());
    a("oauth_signature_method", em.d());
    a("oauth_version", em.e());
    a("oauth_signature", a(a().toString(), a(b()), parameg));
    a("Authorization", f());
  }
  
  private String d(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(paramString2);
      paramString1 = a(localMac.doFinal(paramString1.getBytes("UTF-8"))).replace("\r\n", "");
      return paramString1;
    }
    catch (Exception paramString1)
    {
      kg.a(5, b, "Error while signing:" + paramString1);
    }
    return null;
  }
  
  private String g()
  {
    ef localef = new ef();
    localef.a(new ef(g));
    localef.a(new ef(f));
    localef.a(new ef(e));
    return localef.c().a();
  }
  
  protected abstract kp.a a();
  
  public String a(String paramString)
  {
    if ((paramString.startsWith("http://")) && ((paramString.endsWith(":80")) || (paramString.contains(":80/")))) {
      return paramString.replaceAll("\\?.*", "").replaceAll(":80", "");
    }
    if ((paramString.startsWith("https://")) && ((paramString.endsWith(":443")) || (paramString.contains(":443/")))) {
      return paramString.replaceAll("\\?.*", "").replaceAll(":443", "");
    }
    return paramString.replaceAll("\\?.*", "");
  }
  
  public String a(String paramString1, String paramString2, eg parameg)
  {
    return a(c(paramString1, paramString2), em.b(), parameg.b());
  }
  
  protected void a(kn<?, ?> paramkn, eg parameg)
  {
    a(parameg);
    parameg = e.entrySet().iterator();
    while (parameg.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)parameg.next();
      paramkn.a((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }
  
  protected void a(String paramString1, String paramString2)
  {
    e.put(paramString1, paramString2);
  }
  
  protected eg b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      kg.a(5, b, "Cannot extract token. Invalid response: " + paramString);
      return null;
    }
    return new eg(a(paramString, c), a(paramString, d));
  }
  
  protected abstract String b();
  
  protected void b(String paramString1, String paramString2)
  {
    f.put(paramString1, paramString2);
  }
  
  public String c(String paramString1, String paramString2)
  {
    return String.format("%s&%s&%s", new Object[] { dz.a(paramString1), dz.a(paramString2), g() });
  }
  
  public abstract void c();
  
  protected Map<String, String> d()
  {
    return e;
  }
  
  protected Map<String, String> e()
  {
    return f;
  }
  
  public String f()
  {
    Object localObject = e;
    StringBuilder localStringBuilder = new StringBuilder(((Map)localObject).size() * 20);
    localStringBuilder.append("OAuth ");
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      if (localStringBuilder.length() > "OAuth ".length()) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(String.format("%s=\"%s\"", new Object[] { localEntry.getKey(), dz.a((String)localEntry.getValue()) }));
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */