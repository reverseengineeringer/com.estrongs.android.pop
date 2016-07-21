package com.flurry.sdk;

import android.os.Bundle;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class es
  extends et
{
  private String e;
  private String f;
  
  public es(Bundle paramBundle)
  {
    super(et.a.a);
    a(paramBundle.getString("com.flurry.android.post_caption"));
    b(paramBundle.getString("com.flurry.android.post_url"));
    c(paramBundle.getString("com.flurry.android.post_ios_deeplinks"));
    e(paramBundle.getString("com.flurry.android.post_android_deeplinks"));
    f(paramBundle.getString("com.flurry.android.post_weblink"));
    a(paramBundle.getInt("com.flurry.android.post_id"));
  }
  
  protected Map<String, String> a()
  {
    try
    {
      URI localURI = new URI(f);
      HashMap localHashMap = new HashMap();
      if ((localURI.getScheme() != null) && ((localURI.getScheme().equalsIgnoreCase("http")) || (localURI.getScheme().equalsIgnoreCase("https")))) {
        a(localHashMap, "source", f);
      }
      for (;;)
      {
        a(localHashMap, "deep_link_ios", a);
        a(localHashMap, "deep_link_android", b);
        a(localHashMap, "deep_link_web", c);
        a(localHashMap, "type", "photo");
        a(localHashMap, "caption", e);
        a(localHashMap, "syndication_id", jd.a(b));
        return localHashMap;
        if (new File(f).exists()) {
          a(localHashMap, "data", f);
        }
      }
      return Collections.emptyMap();
    }
    catch (URISyntaxException localURISyntaxException) {}
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
 * Qualified Name:     com.flurry.sdk.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */