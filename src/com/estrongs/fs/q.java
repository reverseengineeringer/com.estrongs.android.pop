package com.estrongs.fs;

import com.estrongs.android.scanner.f;

public class q
  extends k
{
  private final long a = 259200000L;
  
  public Boolean a(f paramf)
  {
    paramf.b(Long.valueOf(System.currentTimeMillis() - 259200000L), null);
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return paramh.lastAccessed() >= System.currentTimeMillis() - 259200000L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */