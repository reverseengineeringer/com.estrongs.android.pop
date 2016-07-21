package com.flurry.sdk;

import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class gx$e
  extends gx.c
{
  private static final Map<String, Integer> a = ;
  
  gx$e()
  {
    super(null);
  }
  
  private static Integer a(String paramString)
  {
    return (Integer)a.get(paramString);
  }
  
  private static Map<String, Integer> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("b", Integer.valueOf(12));
    localHashMap.put("t", Integer.valueOf(10));
    localHashMap.put("m", Integer.valueOf(15));
    localHashMap.put("c", Integer.valueOf(14));
    localHashMap.put("l", Integer.valueOf(9));
    localHashMap.put("r", Integer.valueOf(11));
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public ViewGroup.LayoutParams a(cn paramcn)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(b(paramcn), c(paramcn));
    paramcn = e.split("-");
    if (paramcn.length == 2)
    {
      Integer localInteger = a(paramcn[0]);
      if (localInteger != null) {
        localLayoutParams.addRule(localInteger.intValue());
      }
      paramcn = a(paramcn[1]);
      if (paramcn != null) {
        localLayoutParams.addRule(paramcn.intValue());
      }
    }
    return localLayoutParams;
  }
  
  public int g(cn paramcn)
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gx.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */