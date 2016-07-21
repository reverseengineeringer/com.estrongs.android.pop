package com.flurry.sdk;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

public class ev
  extends et
{
  private String e;
  private String f;
  
  public ev(Bundle paramBundle)
  {
    super(et.a.b);
    a(paramBundle.getString("com.flurry.android.post_title"));
    b(paramBundle.getString("com.flurry.android.post_body"));
    c(paramBundle.getString("com.flurry.android.post_ios_deeplinks"));
    e(paramBundle.getString("com.flurry.android.post_android_deeplinks"));
    f(paramBundle.getString("com.flurry.android.post_weblink"));
    a(paramBundle.getInt("com.flurry.android.post_id"));
  }
  
  protected Map<String, String> a()
  {
    HashMap localHashMap = new HashMap();
    a(localHashMap, "title", e);
    a(localHashMap, "body", f);
    a(localHashMap, "deep_link_ios", a);
    a(localHashMap, "deep_link_android", b);
    a(localHashMap, "deep_link_web", c);
    a(localHashMap, "type", "text");
    a(localHashMap, "syndication_id", jd.a(b));
    return localHashMap;
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public String b()
  {
    return e;
  }
  
  public void b(String paramString)
  {
    f = paramString;
  }
  
  public String c()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */