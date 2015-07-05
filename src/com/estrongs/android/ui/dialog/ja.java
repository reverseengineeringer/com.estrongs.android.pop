package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.ui.notification.e;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ba;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;

class ja
  implements com.estrongs.a.a.p
{
  ja(ix paramix) {}
  
  public void a(com.estrongs.a.a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4)
    {
      ix.a(a, false);
      if ((!(parama instanceof ad)) && (getTaskResulta != 3))
      {
        localObject = a.a();
        if (!bd.a((CharSequence)localObject)) {
          ix.a(a, (String)localObject);
        }
      }
      ix.h(a);
      a.b(parama);
      if ((parama instanceof ad))
      {
        if (ix.i(a) != null) {
          ix.i(a).a();
        }
        if (f)
        {
          parama = ((ad)parama).b();
          localObject = new Intent(a.mContext, ShowDialogActivity.class);
          str = a.mContext.getString(2131427723, new Object[] { "" }) + "!\n" + a.mContext.getString(2131428108) + am.bL(parama);
          ((Intent)localObject).setData(Uri.parse(parama));
          ((Intent)localObject).putExtra("title", a.mContext.getString(2131427359));
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
      } while ((ix.i(a) == null) || (((!(ix.a(a) instanceof r)) || (((r)ix.a(a)).d())) && (((!(ix.a(a) instanceof ab)) && (!(ix.a(a) instanceof bm)) && (!(ix.a(a) instanceof ba)) && (!(ix.a(a) instanceof i)) && (!(ix.a(a) instanceof com.estrongs.fs.b.p)) && (!(ix.a(a) instanceof ag)) && (!(ix.a(a) instanceof y)) && (!(ix.a(a) instanceof com.estrongs.fs.b.a))) || (!FexApplication.a().b()))));
      ix.i(a).a();
      return;
    }
    ix.k(a).post(new jb(this, parama));
    if ((!(parama instanceof r)) && (!(parama instanceof ab)) && (!(parama instanceof bm)) && (!(parama instanceof com.estrongs.fs.b.p)) && (!(parama instanceof ad)) && (!(parama instanceof ag)) && (!(parama instanceof y))) {
      ix.a(a, false);
    }
    com.estrongs.a.p localp = parama.getTaskResult();
    String str = a.a(localp);
    Object localObject = str;
    if (a != 1)
    {
      if (a != 15) {
        break label692;
      }
      ix.k(a).post(new jc(this));
      localObject = str;
    }
    while (!bd.a((CharSequence)localObject)) {
      if ((a != 16) && (ix.l(a)) && (aa).processData != null) && ((aa).processData.d > 0L) || (aa).processData.f > 0L) || ((ix.a(a) instanceof r))))
      {
        ix.k(a).post(new je(this, parama, (String)localObject));
        return;
        label692:
        a.c(parama);
        localObject = str;
        if (str == null) {
          localObject = a.getString(2131428117);
        }
      }
      else
      {
        ix.a(a, (String)localObject);
      }
    }
    ix.h(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */