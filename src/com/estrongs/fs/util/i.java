package com.estrongs.fs.util;

import java.io.File;

public class i
  extends g
{
  private long q;
  
  public i(h paramh, long paramLong)
  {
    super(paramh);
    q = paramLong;
  }
  
  public i(File paramFile, long paramLong)
  {
    super(paramFile);
    q = paramLong;
  }
  
  protected long b(File paramFile)
  {
    long l1;
    if (q == 0L) {
      l1 = paramFile.length();
    }
    long l2;
    do
    {
      return l1;
      l2 = paramFile.length();
      l1 = l2;
    } while (l2 % q == 0L);
    return (l2 / q + 1L) * q;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */