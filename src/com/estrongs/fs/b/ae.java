package com.estrongs.fs.b;

import com.estrongs.a.a.m;

class ae
  extends Thread
{
  int a = 1000;
  int b = 30000 / a;
  long[] c = new long[b];
  long d = 0L;
  
  ae(ad paramad) {}
  
  public void run()
  {
    for (;;)
    {
      if (e.c) {
        return;
      }
      d += 1L;
      try
      {
        Thread.sleep(a);
        if (!ad.a(e)) {
          continue;
        }
        int i = 1;
        while (i < b)
        {
          c[(i - 1)] = c[i];
          i += 1;
        }
        long l1 = e.processData.f;
        long l2 = e.i.longValue();
        c[(b - 1)] = Long.valueOf(l1 - l2).longValue();
        e.i = Long.valueOf(e.processData.f);
        i = 0;
        int j = 0;
        while (i < b)
        {
          j = (int)(j + c[i]);
          i += 1;
        }
        if (e.processData.f >= e.processData.e)
        {
          e.processData.b = 0;
          if (e.getTaskStatus() != 2) {
            continue;
          }
          e.onProgress(e.processData);
          continue;
        }
        m localm = e.processData;
        double d1 = j;
        if (d < b) {}
        for (l1 = d;; l1 = b)
        {
          b = ((int)(d1 / (l1 * a / 1000.0D)));
          break;
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */