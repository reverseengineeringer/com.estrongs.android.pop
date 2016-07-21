package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.i;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.g;
import java.util.Map;

@me
public class go
  implements fq
{
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    gj localgj = ae.r();
    if (paramMap.containsKey("abort"))
    {
      if (!localgj.a(paramqa)) {
        b.e("Precache abort but no preload task running.");
      }
      return;
    }
    String str = (String)paramMap.get("src");
    if (str == null)
    {
      b.e("Precache video action is missing the src parameter.");
      return;
    }
    try
    {
      i = Integer.parseInt((String)paramMap.get("player"));
      if (paramMap.containsKey("mimetype"))
      {
        paramMap = (String)paramMap.get("mimetype");
        if (!localgj.b(paramqa)) {
          break label121;
        }
        b.e("Precache task already running.");
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      int i;
      for (;;)
      {
        i = 0;
        continue;
        paramMap = "";
      }
      label121:
      g.a(paramqa.e());
      new gh(paramqa, ea.a(paramqa, i, paramMap), str).g();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */