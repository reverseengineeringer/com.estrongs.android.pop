package com.flurry.sdk;

import android.content.Context;
import java.util.Map;

public class fa
{
  public static void a(bb parambb, Map<String, String> paramMap, Context paramContext, s params, au paramau, int paramInt)
  {
    if ((paramContext == null) || (params == null) || (paramau == null)) {
      return;
    }
    parambb = new b(parambb, paramMap, paramContext, params, paramau);
    paramMap = new c();
    a = parambb;
    b = paramInt;
    paramMap.b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */