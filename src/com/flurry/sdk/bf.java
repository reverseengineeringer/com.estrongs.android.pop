package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bf
{
  private static final String a = bf.class.getSimpleName();
  private final jx<String, be> b = new jx();
  
  public List<be> a()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(b.d());
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public List<be> a(String paramString)
  {
    try
    {
      paramString = new ArrayList(b.a(paramString));
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(be parambe)
  {
    if (parambe == null) {}
    for (;;)
    {
      return;
      try
      {
        if ((parambe.b() == null) || (TextUtils.isEmpty(parambe.c()))) {
          continue;
        }
        a(parambe.b(), parambe.c());
        if (parambe.g() == -1) {
          continue;
        }
        b.a(parambe.c(), parambe);
      }
      finally {}
    }
  }
  
  public void a(cw paramcw, String paramString)
  {
    if (paramcw != null) {}
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        Iterator localIterator = b.a(paramString).iterator();
        if (localIterator.hasNext())
        {
          be localbe = (be)localIterator.next();
          if (localbe.b().equals(paramcw))
          {
            paramcw = localbe;
            if (paramcw != null) {
              b.b(paramString, paramcw);
            }
          }
        }
        else
        {
          paramcw = null;
        }
      }
      finally {}
    }
  }
  
  public boolean a(long paramLong)
  {
    return paramLong <= System.currentTimeMillis();
  }
  
  public void b()
  {
    try
    {
      Iterator localIterator = a().iterator();
      while (localIterator.hasNext())
      {
        be localbe = (be)localIterator.next();
        if (a(localbe.e()))
        {
          kg.a(3, a, "expiring freq cap for id: " + localbe.c() + " capType:" + localbe.b() + " expiration: " + localbe.e() + " epoch" + System.currentTimeMillis());
          b(localbe.c());
        }
      }
    }
    finally {}
  }
  
  public void b(String paramString)
  {
    try
    {
      b.b(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */