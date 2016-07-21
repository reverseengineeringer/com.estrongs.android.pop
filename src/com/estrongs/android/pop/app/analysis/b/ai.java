package com.estrongs.android.pop.app.analysis.b;

import com.estrongs.android.a.b.f;
import com.estrongs.android.pop.app.analysis.a.ac;
import com.estrongs.android.pop.app.analysis.o;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import java.util.concurrent.atomic.AtomicLong;

class ai
  implements o
{
  ai(ag paramag, boolean paramBoolean1, boolean paramBoolean2, f paramf) {}
  
  public void a()
  {
    d.e();
  }
  
  public void a(boolean paramBoolean, int paramInt, long paramLong1, long paramLong2)
  {
    boolean bool = true;
    if (a) {
      if (paramBoolean)
      {
        ag.b(d).a(ag.a(d));
        paramInt = 1;
      }
    }
    for (;;)
    {
      Object localObject;
      if (paramInt != 0)
      {
        d.v.addAndGet(d.u - paramLong2);
        d.o.addAndGet(d.t - paramLong1);
        d.h();
        localObject = d;
        if (ag.b(d).getItemCount() != 0)
        {
          paramBoolean = true;
          label106:
          ((ag)localObject).a(paramBoolean);
        }
      }
      else
      {
        label112:
        localObject = d;
        if (ag.b(d).getItemCount() == 0) {
          break label330;
        }
      }
      label310:
      label330:
      for (paramBoolean = bool;; paramBoolean = false)
      {
        ((ag)localObject).a(paramBoolean);
        return;
        if ((d.s == paramInt) && (d.t <= paramLong1) && ((d.u == 0L) || (paramLong2 != 0L))) {
          break label335;
        }
        paramInt = 1;
        break;
        paramBoolean = false;
        break label106;
        d.s = paramInt;
        d.t = paramLong1;
        d.u = paramLong2;
        if (b)
        {
          localObject = c.m();
          if ((bk.l()) && (c.b(d.getActivity(), (String)localObject))) {
            if (c.a(d.getActivity(), (String)localObject))
            {
              l.a("open app permisssions page success !");
              paramInt = 1;
            }
          }
          for (;;)
          {
            if (paramInt != 0) {
              break label310;
            }
            c.a(d.getActivity(), c.h());
            break;
            paramInt = 0;
            continue;
            paramInt = 0;
          }
          break label112;
        }
        d.a(d.r, true);
        break label112;
      }
      label335:
      paramInt = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */