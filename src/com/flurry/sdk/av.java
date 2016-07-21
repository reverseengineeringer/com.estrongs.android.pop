package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class av
{
  private fm a;
  private gk b;
  private List<String> c;
  private List<String> d = Arrays.asList(new String[] { bb.h.a(), bb.f.a(), bb.Z.a() });
  private final Map<String, Boolean> e = new HashMap();
  private List<String> f;
  
  public av()
  {
    e.put(bb.v.a(), Boolean.FALSE);
    e.put(bb.f.a(), Boolean.FALSE);
    e.put(bb.g.a(), Boolean.FALSE);
    f = new ArrayList();
    b = new gk();
  }
  
  public fm a()
  {
    return a;
  }
  
  public void a(fm paramfm)
  {
    a = paramfm;
  }
  
  public void a(gk paramgk)
  {
    b = paramgk;
  }
  
  public void a(List<String> paramList)
  {
    c = paramList;
  }
  
  public boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((d.contains(paramString)) && (f.contains(paramString))) {
      return false;
    }
    return true;
  }
  
  public gk b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!d.contains(paramString)) {
      return;
    }
    f.add(paramString);
  }
  
  public List<String> c()
  {
    if (c == null) {
      return Collections.emptyList();
    }
    return c;
  }
  
  public boolean c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return (!e.containsKey(paramString)) || (!((Boolean)e.get(paramString)).equals(Boolean.TRUE));
  }
  
  public void d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!e.containsKey(paramString)) {
      return;
    }
    e.put(paramString, Boolean.TRUE);
  }
  
  public void e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!e.containsKey(paramString)) {
      return;
    }
    e.put(paramString, Boolean.FALSE);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */