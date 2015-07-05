package com.estrongs.android.ui.e;

import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.l;
import com.estrongs.android.ui.dialog.az;
import com.estrongs.android.ui.dialog.bc;
import com.estrongs.android.ui.dialog.bf;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.es;
import com.estrongs.android.ui.dialog.fs;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;

class bo
  implements MenuItem.OnMenuItemClickListener
{
  bo(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        if (w.b(a).a()) {
          return true;
        }
        a.k.k();
        paramMenuItem = a.k.y();
        if (paramMenuItem == null) {
          break label665;
        }
        paramMenuItem = paramMenuItem.c();
        if (am.bR(paramMenuItem))
        {
          new bc(a.k).a();
          return true;
        }
      }
      catch (Throwable paramMenuItem)
      {
        Log.w("", "newItemClickListener.onMenuItemClick() catchs " + paramMenuItem.getMessage());
        return false;
      }
      if ((am.Q(paramMenuItem)) || (am.R(paramMenuItem)))
      {
        if ((w.c(a) != null) && (w.c(a).a())) {
          break;
        }
        w.a(a, new az(a.b));
        w.c(a).b();
        return true;
      }
      if (am.bh(paramMenuItem))
      {
        if ((w.d(a) != null) && (w.d(a).a())) {
          break;
        }
        w.a(a, new fs(a.b));
        w.d(a).b();
        return true;
      }
      if (am.aP(paramMenuItem))
      {
        if ((w.e(a) != null) && (w.e(a).a())) {
          break;
        }
        w.a(a, new bf(a.b));
        w.e(a).b();
        return true;
      }
      String str1;
      String str2;
      Object localObject;
      if (am.aB(paramMenuItem))
      {
        if (am.aD(paramMenuItem))
        {
          ag.a(a.b, 2131427779, 0);
          return true;
        }
        paramMenuItem = new cg(a.k);
        paramMenuItem.setTitle(2131427361);
        paramMenuItem.setSelectable(false);
        str1 = a.k.getString(2131427426);
        str2 = a.k.getString(2131427427);
        localObject = new bp(this);
        paramMenuItem.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
        paramMenuItem.show();
        return true;
      }
      if ((am.K(paramMenuItem)) && (am.bg(paramMenuItem)))
      {
        new es(a.k).a();
        return true;
      }
      if ((am.ba(paramMenuItem)) || (am.bb(paramMenuItem)) || (am.u(paramMenuItem)))
      {
        if ((w.f(a) != null) && (w.f(a).isShowing())) {
          break;
        }
        w.a(a, new cg(a.k));
        w.f(a).setTitle(2131427361);
        w.f(a).setSelectable(false);
        paramMenuItem = w.f(a);
        str1 = a.k.getString(2131427426);
        str2 = a.k.getString(2131427427);
        localObject = new bq(this);
        paramMenuItem.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
        w.f(a).show();
        return true;
      }
      if (am.r(paramMenuItem))
      {
        new l(a.k).show();
        return true;
      }
      ag.a(a.k, a.k.getString(2131427779), 0);
      return false;
      label665:
      ag.a(a.k, a.k.getString(2131427779), 0);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */