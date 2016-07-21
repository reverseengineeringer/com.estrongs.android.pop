package com.estrongs.android.pop.app.analysis.b;

import com.estrongs.android.a.b.f;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.pop.utils.c;
import java.util.concurrent.atomic.AtomicLong;

class p
  implements com.estrongs.android.pop.app.analysis.o
{
  p(o paramo, boolean paramBoolean1, boolean paramBoolean2, f paramf) {}
  
  public void a()
  {
    d.e();
  }
  
  public void a(boolean paramBoolean, int paramInt, long paramLong1, long paramLong2)
  {
    int i;
    int j;
    o localo;
    if (a)
    {
      i = 0;
      if (paramBoolean)
      {
        i = 1;
        j = d.w.c(d.r);
        paramInt = i;
        if (j != -1)
        {
          d.w.notifyItemRemoved(j);
          paramInt = i;
        }
        if (paramInt != 0)
        {
          d.v.addAndGet(d.u - paramLong2);
          d.o.addAndGet(d.t - paramLong1);
          d.h();
          localo = d;
          if (d.w.getItemCount() == 0) {
            break label321;
          }
          paramBoolean = true;
          label133:
          localo.a(paramBoolean);
        }
        label139:
        localo = d;
        if (d.w.getItemCount() == 0) {
          break label402;
        }
      }
    }
    label321:
    label402:
    for (paramBoolean = true;; paramBoolean = false)
    {
      localo.a(paramBoolean);
      return;
      if ((d.s == paramInt) && (d.t <= paramLong1))
      {
        paramInt = i;
        if (d.u == 0L) {
          break;
        }
        paramInt = i;
        if (paramLong2 != 0L) {
          break;
        }
      }
      i = 1;
      j = d.w.a(d.r);
      int k = d.w.getItemCount();
      paramInt = i;
      if (j == -1) {
        break;
      }
      d.w.b(j);
      d.w.b(d.r);
      d.w.notifyItemMoved(j, k - 1);
      d.w.notifyItemChanged(j);
      paramInt = i;
      break;
      paramBoolean = false;
      break label133;
      d.s = paramInt;
      d.t = paramLong1;
      d.u = paramLong2;
      if (b)
      {
        try
        {
          c.a(d.getActivity(), c.h());
        }
        catch (Exception localException) {}
        break label139;
      }
      d.a(d.r, true);
      break label139;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */