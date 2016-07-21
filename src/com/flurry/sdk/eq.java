package com.flurry.sdk;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class eq
  extends el
{
  private String b = "";
  
  private void c(String paramString)
  {
    b = ea.a(paramString);
  }
  
  protected kp.a a()
  {
    return kp.a.c;
  }
  
  public void a(String paramString, Map<String, String> paramMap, eq.a parama)
  {
    c(paramString);
    paramString = paramMap.entrySet().iterator();
    while (paramString.hasNext())
    {
      paramMap = (Map.Entry)paramString.next();
      localObject = (String)paramMap.getKey();
      String str = (String)paramMap.getValue();
      if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(str))) {
        b((String)paramMap.getKey(), (String)paramMap.getValue());
      }
    }
    paramMap = new ef(e()).b();
    paramString = null;
    try
    {
      paramMap = paramMap.getBytes(Charset.defaultCharset().name());
      paramString = paramMap;
    }
    catch (UnsupportedEncodingException paramMap)
    {
      for (;;)
      {
        paramMap.printStackTrace();
      }
    }
    paramMap = dy.b();
    Object localObject = new kn();
    ((kn)localObject).a(b());
    ((kn)localObject).a(a());
    ((kn)localObject).a(paramString);
    ((kn)localObject).d(20000);
    ((kn)localObject).a(new kx());
    ((kn)localObject).b(new lc());
    ((kn)localObject).a("Content-Type", em.f());
    ((kn)localObject).a("Content-Length", String.valueOf(paramString.length));
    a((kn)localObject, paramMap);
    ((kn)localObject).a(new eq.1(this, parama));
    jq.a().a(this, (lz)localObject);
  }
  
  protected String b()
  {
    return b;
  }
  
  public void c()
  {
    jq.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */