package com.flurry.sdk;

import android.content.Context;
import java.util.Map;

public abstract class bi
  extends hf
{
  private static final String b = bi.class.getSimpleName();
  
  public bi(Context paramContext, s params)
  {
    super(paramContext, params);
  }
  
  private void a(bb parambb, Map<String, String> paramMap)
  {
    s locals = d();
    au localau = locals.l();
    if ((d() != null) && (localau.a() != null)) {
      fa.a(parambb, paramMap, c(), locals, localau, 0);
    }
  }
  
  public void a(Map<String, String> paramMap)
  {
    a(bb.f, paramMap);
  }
  
  public void b(Map<String, String> paramMap)
  {
    a(bb.h, paramMap);
  }
  
  public void c(Map<String, String> paramMap)
  {
    a(bb.v, paramMap);
  }
  
  public void d(Map<String, String> paramMap)
  {
    a(bb.g, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */