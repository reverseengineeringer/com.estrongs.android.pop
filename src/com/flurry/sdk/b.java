package com.flurry.sdk;

import android.content.Context;
import java.util.Map;

public class b
{
  public final bb a;
  public final Map<String, String> b;
  private final Context c;
  private final s d;
  private final au e;
  
  public b(bb parambb, Map<String, String> paramMap, Context paramContext, s params, au paramau)
  {
    a = parambb;
    b = paramMap;
    c = paramContext;
    d = params;
    e = paramau;
  }
  
  public static bb a(String paramString)
  {
    bb[] arrayOfbb = bb.values();
    int j = arrayOfbb.length;
    int i = 0;
    while (i < j)
    {
      bb localbb = arrayOfbb[i];
      if (localbb.a().equals(paramString)) {
        return localbb;
      }
      i += 1;
    }
    return bb.a;
  }
  
  public Context a()
  {
    return c;
  }
  
  public s b()
  {
    return d;
  }
  
  public au c()
  {
    return e;
  }
  
  public cj d()
  {
    return e.j();
  }
  
  public co e()
  {
    return e.a();
  }
  
  public ay f()
  {
    return e.b();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("event=").append(a.toString());
    localStringBuilder.append(",params=").append(b);
    if (e.p() != null) {
      localStringBuilder.append(",adspace=").append(e.a().b);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */