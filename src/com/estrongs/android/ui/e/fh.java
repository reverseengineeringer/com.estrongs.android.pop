package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.b;
import com.estrongs.android.ui.dialog.ev;
import com.estrongs.android.ui.dialog.fb;
import com.estrongs.android.ui.dialog.fk;
import com.estrongs.android.ui.dialog.fv;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

class fh
  implements MenuItem.OnMenuItemClickListener
{
  fh(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cr.a(a).size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return true;
    }
    paramMenuItem = (h)cr.a(a).get(0);
    String str2 = paramMenuItem.getAbsolutePath();
    if ((ap.L(str2)) || (ap.K(str2)) || (ap.r(str2)) || (ap.o(str2))) {
      new fb(cr.b(a), str2, paramMenuItem.getName(), false).a();
    }
    Object localObject1;
    for (;;)
    {
      cr.b(a).B();
      return true;
      if (ap.J(str2))
      {
        new fv(cr.b(a), str2, paramMenuItem.getName()).b();
      }
      else if (ap.M(str2))
      {
        new ev(cr.b(a), str2, paramMenuItem.getName()).a();
      }
      else if (ap.aG(str2))
      {
        localObject1 = ap.ax(str2);
        if ((!((String)localObject1).equals("box")) && (!((String)localObject1).equals("onedrive")) && (!((String)localObject1).equals("gdrive")) && (!((String)localObject1).equals("dropbox")) && (!((String)localObject1).equals("vdisk")) && (!((String)localObject1).equals("kuaipan"))) {
          break;
        }
        paramMenuItem = new Intent(cr.b(a), CreateOAuthNetDisk.class);
        paramMenuItem.putExtra("nettype", (String)localObject1);
        paramMenuItem.putExtra("editServer", true);
        paramMenuItem.putExtra("originalPath", str2);
        cr.b(a).startActivity(paramMenuItem);
      }
    }
    paramMenuItem = new b(cr.b(a));
    int i = 0;
    label349:
    if (i < paramMenuItem.getCount()) {
      if (!((String)localObject1).equals(paramMenuItem.c(i))) {}
    }
    for (;;)
    {
      if (i == -1)
      {
        ak.a(cr.b(a), "Unknown netdisk type", 0);
        cr.b(a).B();
        return true;
        i += 1;
        break label349;
      }
      String str1 = ap.as(str2);
      if (((String)localObject1).equals("pcs"))
      {
        localObject1 = new fi(this);
        localObject2 = new l(cr.b(a), true, str2);
        ((l)localObject2).a((q)localObject1);
        ((l)localObject2).a(paramMenuItem.b(i), paramMenuItem.a(i));
        ((l)localObject2).a(str1, ad.a(cr.b(a)).h(str2));
        ((l)localObject2).show();
        return true;
      }
      Object localObject2 = new fk(cr.b(a)).b(paramMenuItem.a(i), (String)localObject1);
      paramMenuItem = str1;
      if (((String)localObject1).equals("vdisk"))
      {
        if (!str1.startsWith("s_")) {
          break label591;
        }
        paramMenuItem = str1.substring(2);
      }
      for (;;)
      {
        ((fk)localObject2).a(paramMenuItem, ad.a(cr.b(a)).h(str2));
        ((fk)localObject2).a(str2);
        ((fk)localObject2).a();
        break;
        label591:
        paramMenuItem = str1;
        if (str1.startsWith("l_")) {
          paramMenuItem = str1.substring(2);
        }
      }
      i = -1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */