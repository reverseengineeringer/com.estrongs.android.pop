package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class bh
{
  private static final String a = bh.class.getSimpleName();
  private final HashMap<String, bg> b = new HashMap();
  
  public List<bg> a()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(b.values());
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(b paramb)
  {
    if (paramb == null) {}
    for (;;)
    {
      return;
      try
      {
        cv localcv = paramb.c().f();
        if (localcv == null) {
          continue;
        }
        String str = b;
        if (TextUtils.isEmpty(str)) {
          continue;
        }
        bg localbg2 = (bg)b.get(str);
        bg localbg1 = localbg2;
        if (localbg2 == null)
        {
          localbg1 = new bg(str, e);
          b.put(str, localbg1);
        }
        localbg1.a(a.a());
        localbg1.b(System.currentTimeMillis());
        if (bb.f.equals(a)) {
          localbg1.a(System.currentTimeMillis());
        }
        localbg1.b(a.a());
      }
      finally {}
    }
  }
  
  public void b()
  {
    try
    {
      Iterator localIterator = a().iterator();
      while (localIterator.hasNext())
      {
        bg localbg = (bg)localIterator.next();
        if (System.currentTimeMillis() > localbg.d() + localbg.b()) {
          b.remove(localbg.a());
        }
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */