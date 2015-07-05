package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import java.util.Arrays;

class t
  extends Thread
{
  int a = 1000;
  final int b = 30000 / a;
  long[] c = new long[b];
  int d = 0;
  int e = 0;
  long f = 0L;
  
  t(r paramr) {}
  
  public void run()
  {
    Arrays.fill(c, 0L);
    for (;;)
    {
      if (!r.b(g)) {}
      try
      {
        Thread.sleep(a);
        d += 1;
        if (r.c(g))
        {
          Long localLong = Long.valueOf(g.processData.f - g.z.longValue());
          f += localLong.longValue() - c[e];
          c[e] = localLong.longValue();
          g.z = Long.valueOf(g.processData.f);
          if ((localLong.longValue() != 0L) || (d <= 3)) {
            break label375;
          }
          i = (e - 1 + b) % b;
          long l1 = c[i];
          i = (i - 1 + b) % b;
          long l2 = c[i];
          int j = b;
          int k = b;
          long l3 = c[((i - 1 + j) % k)];
          if ((l1 != 0L) || (l2 != 0L) || (l3 != 0L)) {
            break label322;
          }
          i = 1;
          label242:
          if ((g.processData.f < g.processData.e) && (i == 0)) {
            break label327;
          }
        }
        label322:
        label327:
        for (g.processData.b = 0;; g.processData.b = ((int)((float)f / (Math.min(d, b) * a / 1000.0D))))
        {
          if (g.getTaskStatus() == 2) {
            g.onProgress(g.processData);
          }
          e = (d % b);
          break;
          i = 0;
          break label242;
        }
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          continue;
          label375:
          int i = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */