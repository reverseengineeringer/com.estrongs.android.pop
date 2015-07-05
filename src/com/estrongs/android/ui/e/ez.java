package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.b;
import com.estrongs.android.ui.dialog.es;
import com.estrongs.android.ui.dialog.ey;
import com.estrongs.android.ui.dialog.fh;
import com.estrongs.android.ui.dialog.fs;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

class ez
  implements MenuItem.OnMenuItemClickListener
{
  ez(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cp.b(a).size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return true;
    }
    paramMenuItem = (h)cp.b(a).get(0);
    String str2 = paramMenuItem.getAbsolutePath();
    if ((am.J(str2)) || (am.I(str2)) || (am.p(str2)) || (am.m(str2))) {
      new ey(cp.a(a), str2, paramMenuItem.getName(), false).a();
    }
    Object localObject1;
    for (;;)
    {
      cp.a(a).s();
      return true;
      if (am.H(str2))
      {
        new fs(cp.a(a), str2, paramMenuItem.getName()).b();
      }
      else if (am.K(str2))
      {
        new es(cp.a(a), str2, paramMenuItem.getName()).a();
      }
      else if (am.aw(str2))
      {
        localObject1 = am.an(str2);
        if ((!((String)localObject1).equals("box")) && (!((String)localObject1).equals("onedrive")) && (!((String)localObject1).equals("gdrive")) && (!((String)localObject1).equals("dropbox")) && (!((String)localObject1).equals("kanbox")) && (!((String)localObject1).equals("vdisk")) && (!((String)localObject1).equals("kuaipan"))) {
          break;
        }
        paramMenuItem = new Intent(a.b, CreateOAuthNetDisk.class);
        paramMenuItem.putExtra("nettype", (String)localObject1);
        paramMenuItem.putExtra("editServer", true);
        paramMenuItem.putExtra("originalPath", str2);
        a.b.startActivity(paramMenuItem);
      }
    }
    paramMenuItem = new b(cp.a(a));
    int i = 0;
    label359:
    if (i < paramMenuItem.getCount()) {
      if (!((String)localObject1).equals(paramMenuItem.c(i))) {}
    }
    for (;;)
    {
      if (i == -1)
      {
        ag.a(a.b, "Unknown netdisk type", 0);
        cp.a(a).s();
        return true;
        i += 1;
        break label359;
      }
      String str1 = am.ai(str2);
      if (((String)localObject1).equals("pcs"))
      {
        localObject1 = new fa(this);
        localObject2 = new j(a.b, true, str2);
        ((j)localObject2).a((n)localObject1);
        ((j)localObject2).a(paramMenuItem.b(i), paramMenuItem.a(i));
        ((j)localObject2).a(str1, ad.a(a.b).h(str2));
        ((j)localObject2).show();
        return true;
      }
      Object localObject2 = new fh(a.b).b(paramMenuItem.a(i), (String)localObject1);
      paramMenuItem = str1;
      if (((String)localObject1).equals("vdisk"))
      {
        if (!str1.startsWith("s_")) {
          break label601;
        }
        paramMenuItem = str1.substring(2);
      }
      for (;;)
      {
        ((fh)localObject2).a(paramMenuItem, ad.a(a.b).h(str2));
        ((fh)localObject2).a(str2);
        ((fh)localObject2).a();
        break;
        label601:
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
 * Qualified Name:     com.estrongs.android.ui.e.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */