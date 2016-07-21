package com.estrongs.android.cleaner;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public class i
{
  private ConcurrentHashMap<String, Boolean> a = new ConcurrentHashMap();
  private AtomicLong b = new AtomicLong(0L);
  private AtomicLong c = new AtomicLong(0L);
  
  public long a()
  {
    return b.get();
  }
  
  public void a(String paramString, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramString = (Boolean)a.put(paramString, Boolean.TRUE);
      if (paramString == null)
      {
        b.addAndGet(paramLong);
        c.addAndGet(paramLong);
      }
      while (paramString.booleanValue()) {
        return;
      }
      c.addAndGet(paramLong);
      return;
    }
    synchronized (a)
    {
      if ((Boolean)a.get(paramString) == null)
      {
        b.addAndGet(paramLong);
        a.put(paramString, Boolean.FALSE);
      }
      return;
    }
  }
  
  public long b()
  {
    return c.get();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */