package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@me
public class ji
{
  private final qa a;
  private final boolean b;
  private final String c;
  
  public ji(qa paramqa, Map<String, String> paramMap)
  {
    a = paramqa;
    c = ((String)paramMap.get("forceOrientation"));
    if (paramMap.containsKey("allowOrientationChange"))
    {
      b = Boolean.parseBoolean((String)paramMap.get("allowOrientationChange"));
      return;
    }
    b = true;
  }
  
  public void a()
  {
    if (a == null)
    {
      b.e("AdWebView is null");
      return;
    }
    int i;
    if ("portrait".equalsIgnoreCase(c)) {
      i = ae.g().b();
    }
    for (;;)
    {
      a.setRequestedOrientation(i);
      return;
      if ("landscape".equalsIgnoreCase(c)) {
        i = ae.g().a();
      } else if (b) {
        i = -1;
      } else {
        i = ae.g().c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */