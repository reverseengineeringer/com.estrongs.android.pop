package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.ui.notification.f;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.bc;
import com.estrongs.fs.b.bo;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;

class jk
  implements com.estrongs.a.a.p
{
  jk(jh paramjh) {}
  
  public void a(com.estrongs.a.a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4)
    {
      jh.a(a, false);
      if ((!(parama instanceof ad)) && (getTaskResulta != 3))
      {
        localObject = a.a();
        if (!bk.a((CharSequence)localObject)) {
          jh.a(a, (String)localObject);
        }
      }
      jh.h(a);
      a.b(parama);
      if ((parama instanceof ad))
      {
        if (jh.i(a) != null) {
          jh.i(a).a();
        }
        if (f)
        {
          parama = ((ad)parama).b();
          localObject = new Intent(a.mContext, ShowDialogActivity.class);
          str = a.mContext.getString(2131231397, new Object[] { "" }) + "!\n" + a.mContext.getString(2131232398) + ap.cc(parama);
          ((Intent)localObject).setData(Uri.parse(parama));
          ((Intent)localObject).putExtra("title", a.mContext.getString(2131230847));
          ((Intent)localObject).putExtra("message", str);
          ((Intent)localObject).putExtra("openfileOrFolder", true);
          ((Intent)localObject).putExtra("pathIsDir", false);
          a.mContext.startActivity((Intent)localObject);
        }
      }
    }
    while (paramInt2 != 5)
    {
      do
      {
        return;
      } while ((jh.i(a) == null) || (((!(jh.a(a) instanceof r)) || (((r)jh.a(a)).d())) && (((!(jh.a(a) instanceof ab)) && (!(jh.a(a) instanceof bo)) && (!(jh.a(a) instanceof bc)) && (!(jh.a(a) instanceof i)) && (!(jh.a(a) instanceof com.estrongs.fs.b.p)) && (!(jh.a(a) instanceof ag)) && (!(jh.a(a) instanceof y)) && (!(jh.a(a) instanceof com.estrongs.fs.b.a))) || (!FexApplication.a().b()))));
      jh.i(a).a();
      return;
    }
    jh.k(a).post(new jl(this, parama));
    if ((!(parama instanceof r)) && (!(parama instanceof ab)) && (!(parama instanceof bo)) && (!(parama instanceof com.estrongs.fs.b.p)) && (!(parama instanceof ad)) && (!(parama instanceof ag)) && (!(parama instanceof y))) {
      jh.a(a, false);
    }
    com.estrongs.a.p localp = parama.getTaskResult();
    String str = a.a(localp);
    Object localObject = str;
    if (a != 1)
    {
      if (a != 15) {
        break label692;
      }
      jh.k(a).post(new jm(this));
      localObject = str;
    }
    while (!bk.a((CharSequence)localObject)) {
      if ((a != 16) && (jh.l(a)) && (aa).processData != null) && ((aa).processData.d > 0L) || (aa).processData.f > 0L) || ((jh.a(a) instanceof r))))
      {
        jh.k(a).post(new jo(this, parama, (String)localObject));
        return;
        label692:
        a.c(parama);
        localObject = str;
        if (str == null) {
          localObject = a.getString(2131232400);
        }
      }
      else
      {
        jh.a(a, (String)localObject);
      }
    }
    jh.h(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */