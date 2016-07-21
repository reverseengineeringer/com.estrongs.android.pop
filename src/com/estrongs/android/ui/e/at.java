package com.estrongs.android.ui.e;

import android.content.DialogInterface.OnClickListener;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.bb;
import com.estrongs.android.ui.dialog.be;
import com.estrongs.android.ui.dialog.bh;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.ev;
import com.estrongs.android.ui.dialog.fv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.bx;
import com.estrongs.android.view.cr;

class at
  implements MenuItem.OnMenuItemClickListener
{
  at(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str1;
    try
    {
      m.a(a).o();
      paramMenuItem = m.a(a).O();
      if (paramMenuItem != null)
      {
        str1 = paramMenuItem.c();
        if (ap.cj(str1))
        {
          new be(m.a(a)).a();
          return true;
        }
        if ((ap.S(str1)) || (ap.T(str1)))
        {
          if ((m.b(a) != null) && (m.b(a).a())) {
            return true;
          }
          m.a(a, new bb(m.a(a)));
          m.b(a).b();
        }
        else if (ap.bs(str1))
        {
          if ((m.c(a) != null) && (m.c(a).a())) {
            return true;
          }
          m.a(a, new fv(m.a(a)));
          m.c(a).b();
        }
      }
    }
    catch (Throwable paramMenuItem)
    {
      paramMenuItem.printStackTrace();
      com.estrongs.android.util.l.d("", "newItemClickListener.onMenuItemClick() catchs " + paramMenuItem.getMessage());
    }
    for (;;)
    {
      return false;
      if (ap.aZ(str1))
      {
        if ((m.d(a) != null) && (m.d(a).a())) {
          return true;
        }
        m.a(a, new bh(m.a(a)));
        m.d(a).b();
        break;
      }
      String str2;
      Object localObject;
      if (ap.aL(str1))
      {
        if (ap.aN(str1))
        {
          ak.a(m.a(a), 2131231290, 0);
          break;
        }
        try
        {
          m.a(a).at().a("Local_new");
          paramMenuItem = new ci(m.a(a));
          paramMenuItem.setTitle(2131230867);
          paramMenuItem.setSelectable(false);
          str1 = m.a(a).getString(2131231131);
          str2 = m.a(a).getString(2131231133);
          localObject = new au(this);
          paramMenuItem.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
          paramMenuItem.show();
        }
        catch (Exception paramMenuItem)
        {
          for (;;)
          {
            paramMenuItem.printStackTrace();
          }
        }
      }
      if ((ap.M(str1)) && (ap.br(str1)))
      {
        new ev(m.a(a)).a();
        break;
      }
      if ((ap.bl(str1)) || (ap.bm(str1)) || (ap.w(str1)))
      {
        if ((m.e(a) != null) && (m.e(a).isShowing())) {
          return true;
        }
        m.a(a, new ci(m.a(a)));
        m.e(a).setTitle(2131230867);
        m.e(a).setSelectable(false);
        paramMenuItem = m.e(a);
        str1 = m.a(a).getString(2131231131);
        str2 = m.a(a).getString(2131231133);
        localObject = new av(this);
        paramMenuItem.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
        m.e(a).show();
        break;
      }
      if (ap.t(str1))
      {
        new com.estrongs.android.ui.b.l(m.a(a)).show();
        break;
      }
      if (ap.ad(str1))
      {
        ((bx)paramMenuItem).s();
        break;
      }
      ak.a(m.a(a), m.a(a).getString(2131231290), 0);
      return false;
      ak.a(m.a(a), m.a(a).getString(2131231290), 0);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */