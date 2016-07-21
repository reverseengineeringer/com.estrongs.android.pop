package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;

class br
  implements l
{
  br(bo parambo) {}
  
  public void a(a parama, m paramm)
  {
    if ((i == 1) || (i == 4)) {
      if (a.a)
      {
        parama = j.c(f);
        if (!l) {
          break label944;
        }
      }
    }
    label92:
    label131:
    label771:
    label938:
    label944:
    for (parama = a.ag.getString(2131232404, new Object[] { parama });; parama = "")
    {
      if (i == 4) {
        if (e < 1L)
        {
          parama = a.ag.getString(2131232182);
          a.a(a.ag.getString(2131232170), a.ag.getString(2131232405, new Object[] { parama }));
          a.c((int)d);
          a.d.post(new bs(this, paramm));
        }
      }
      do
      {
        do
        {
          return;
          parama = String.valueOf(f);
          break;
          parama = j.c(e);
          break label92;
          a.a(a.ag.getString(2131231100), a.ag.getString(2131232403, new Object[] { Long.valueOf(d), parama }));
          break label131;
        } while (i == 3);
        if (!p) {
          a.d.post(new bt(this));
        }
        if (l)
        {
          if (e > 0L) {
            a.a(e);
          }
          if (f >= 0L) {
            a.b(f);
          }
        }
        Object localObject1;
        Object localObject2;
        for (;;)
        {
          if ((g > 0L) && (l)) {
            a.c(g);
          }
          if (h > 0L) {
            a.d(h);
          }
          if (c > 0L) {
            a.c((int)c);
          }
          if (d > 0L) {
            a.a((int)d);
          }
          localObject1 = ap.d(a);
          if (!ap.aQ(a))
          {
            parama = (a)localObject1;
            if (!ap.aY(a)) {}
          }
          else
          {
            localObject2 = b.a().h(a);
            parama = (a)localObject1;
            if (localObject2 != null) {
              parama = ((h)localObject2).getName();
            }
          }
          if (q != null) {
            parama = q;
          }
          if (o) {
            break;
          }
          bo.a(a, parama);
          a.d.post(new bu(this));
          a.a(a.ag.getString(2131232402, new Object[] { j }), null);
          return;
          if (c > 0L) {
            a.a(c);
          }
          if (d >= 0L) {
            a.b(d);
          }
        }
        if (c == 1L)
        {
          parama = a.j(2131232182);
          if ((e > 0L) && (bo.m(a) <= 0L)) {
            a.c(e);
          }
          if (bo.m(a) > 0L)
          {
            if (a.a) {
              parama = j.c(bo.m(a));
            }
          }
          else
          {
            localObject1 = a;
            localObject2 = a.ag.getString(2131232402, new Object[] { j });
            if (!l) {
              break label771;
            }
          }
          for (parama = a.ag.getString(2131232405, new Object[] { parama });; parama = null)
          {
            ((bo)localObject1).a((String)localObject2, parama);
            a.d.post(new bv(this, paramm));
            return;
            parama = String.valueOf(bo.m(a));
            break;
          }
        }
      } while (c <= 1L);
      bo.a(a, parama);
      a.d.post(new bw(this, paramm));
      if (a.a)
      {
        parama = j.c(bo.c(a));
        if (!l) {
          break label938;
        }
      }
      for (parama = a.ag.getString(2131232404, new Object[] { parama });; parama = "")
      {
        a.a(a.ag.getString(2131232402, new Object[] { j }), a.ag.getString(2131232403, new Object[] { Long.valueOf(c), parama }));
        return;
        parama = String.valueOf(bo.c(a));
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */