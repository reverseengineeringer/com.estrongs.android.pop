package com.estrongs.android.pop.app.messagebox;

import java.io.FilterInputStream;
import java.io.InputStream;

public class am
  extends FilterInputStream
{
  public am(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public long skip(long paramLong)
  {
    long l2;
    for (long l1 = 0L;; l1 = l2 + l1)
    {
      if (l1 < paramLong)
      {
        long l3 = in.skip(paramLong - l1);
        l2 = l3;
        if (l3 != 0L) {
          continue;
        }
        if (read() >= 0) {}
      }
      else
      {
        return l1;
      }
      l2 = 1L;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */