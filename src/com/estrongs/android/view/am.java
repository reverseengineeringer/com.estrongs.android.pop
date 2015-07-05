package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;

class am
  implements l
{
  am(ak paramak) {}
  
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
    for (parama = a.ad.getString(2131428122, new Object[] { parama });; parama = "")
    {
      if (i == 4) {
        if (e < 1L)
        {
          parama = a.ad.getString(2131427442);
          a.a(a.ad.getString(2131427447), a.ad.getString(2131428120, new Object[] { parama }));
          a.b((int)d);
          a.b.post(new an(this, paramm));
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
          a.a(a.ad.getString(2131428091), a.ad.getString(2131428121, new Object[] { Long.valueOf(d), parama }));
          break label131;
        } while (i == 3);
        if (!p) {
          a.b.post(new ao(this));
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
            a.b((int)c);
          }
          if (d > 0L) {
            a.a((int)d);
          }
          localObject1 = com.estrongs.android.util.am.d(a);
          if (!com.estrongs.android.util.am.aG(a))
          {
            parama = (a)localObject1;
            if (!com.estrongs.android.util.am.aO(a)) {}
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
          ak.a(a, parama);
          a.b.post(new ap(this));
          a.a(a.ad.getString(2131428119, new Object[] { j }), null);
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
          parama = a.l(2131427442);
          if ((e > 0L) && (ak.m(a) <= 0L)) {
            a.c(e);
          }
          if (ak.m(a) > 0L)
          {
            if (a.a) {
              parama = j.c(ak.m(a));
            }
          }
          else
          {
            localObject1 = a;
            localObject2 = a.ad.getString(2131428119, new Object[] { j });
            if (!l) {
              break label771;
            }
          }
          for (parama = a.ad.getString(2131428120, new Object[] { parama });; parama = null)
          {
            ((ak)localObject1).a((String)localObject2, parama);
            a.b.post(new aq(this, paramm));
            return;
            parama = String.valueOf(ak.m(a));
            break;
          }
        }
      } while (c <= 1L);
      ak.a(a, parama);
      a.b.post(new ar(this, paramm));
      if (a.a)
      {
        parama = j.c(ak.c(a));
        if (!l) {
          break label938;
        }
      }
      for (parama = a.ad.getString(2131428122, new Object[] { parama });; parama = "")
      {
        a.a(a.ad.getString(2131428119, new Object[] { j }), a.ad.getString(2131428121, new Object[] { Long.valueOf(c), parama }));
        return;
        parama = String.valueOf(ak.c(a));
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */