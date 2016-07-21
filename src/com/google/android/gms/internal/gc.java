package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.j;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Map;

@me
public class gc
  implements fq
{
  static final Map<String, Integer> a = new HashMap();
  private final j b;
  private final jg c;
  
  static
  {
    a.put("resize", Integer.valueOf(1));
    a.put("playVideo", Integer.valueOf(2));
    a.put("storePicture", Integer.valueOf(3));
    a.put("createCalendarEvent", Integer.valueOf(4));
    a.put("setOrientationProperties", Integer.valueOf(5));
    a.put("closeResizedAd", Integer.valueOf(6));
  }
  
  public gc(j paramj, jg paramjg)
  {
    b = paramj;
    c = paramjg;
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    int i = ((Integer)a.get(str)).intValue();
    if ((i != 5) && (b != null) && (!b.b()))
    {
      b.a(null);
      return;
    }
    switch (i)
    {
    case 2: 
    default: 
      b.c("Unknown MRAID command called.");
      return;
    case 1: 
      c.a(paramMap);
      return;
    case 4: 
      new jd(paramqa, paramMap).a();
      return;
    case 3: 
      new jj(paramqa, paramMap).a();
      return;
    case 5: 
      new ji(paramqa, paramMap).a();
      return;
    }
    c.a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */