package com.estrongs.fs;

import com.estrongs.android.scanner.f;

public class p
  extends k
{
  private final long a = 604800000L;
  
  public Boolean a(f paramf)
  {
    paramf.a(Long.valueOf(System.currentTimeMillis() - 604800000L), null);
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return paramh.createdTime() >= System.currentTimeMillis() - 604800000L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */