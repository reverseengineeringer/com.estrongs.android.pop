package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.ad.DuSpeedBoosterController;
import com.estrongs.android.pop.app.ad.DuSpeedBoosterController.LocationType;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.df;
import com.estrongs.android.ui.dialog.fv;
import com.estrongs.android.ui.dialog.gv;
import com.estrongs.android.ui.dialog.gx;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.cr;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.o.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class m
  extends c
{
  private boolean A = true;
  private boolean B = false;
  private gx C;
  private hc D;
  private ci E;
  private com.estrongs.android.ui.dialog.bb F;
  private gv G;
  private df H;
  private fv I;
  private com.estrongs.android.ui.dialog.bh J;
  private int K = 0;
  private FileExplorerActivity L = null;
  private q M = new br(this);
  boolean c = false;
  private String[] d;
  private String[] e;
  private String[] f;
  private String[] g;
  private String[] h;
  private String[] i;
  private String[] j;
  private String[] k;
  private String[] l;
  private String[] m;
  private String[] n;
  private String[] o;
  private String[] p;
  private String[] q;
  private String[] r;
  private String[] s;
  private String[] t;
  private String[] u;
  private String[] v;
  private String[] w;
  private String[] x;
  private String[] y;
  private String[] z;
  
  public m(FileExplorerActivity paramFileExplorerActivity)
  {
    L = paramFileExplorerActivity;
    c = cu.a(L);
    b = d;
  }
  
  public static void a(Context paramContext)
  {
    if (!com.estrongs.android.pop.app.c.m.a().d())
    {
      Handler localHandler = new Handler();
      ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
      localHandler.postDelayed(new bs(arrayOfProgressDialog, paramContext), 500L);
      new bu(localHandler, arrayOfProgressDialog, paramContext).start();
      return;
    }
    paramContext.startActivity(new Intent(paramContext, PopAudioPlayer.class));
  }
  
  private void a(String paramString)
  {
    Object localObject = com.estrongs.fs.impl.r.a.a(L, "net://");
    String str1 = com.estrongs.android.util.ap.as(paramString);
    localObject = ((List)localObject).iterator();
    String str2;
    if (((Iterator)localObject).hasNext()) {
      str2 = ((h)((Iterator)localObject).next()).getAbsolutePath();
    }
    for (;;)
    {
      try
      {
        if (!com.estrongs.android.util.ap.ax(str2).equals("pcs")) {
          break;
        }
        boolean bool = com.estrongs.android.util.ap.as(str2).equals(str1);
        if (bool) {
          break;
        }
        i1 = 1;
        if (i1 != 0) {
          b.m(paramString);
        }
        return;
      }
      catch (Exception localException) {}
      break;
      int i1 = 0;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    paramString1 = new com.estrongs.android.ui.pcs.z(L);
    paramString1.a(M);
    paramString1.show();
  }
  
  private void c(String[] paramArrayOfString)
  {
    b = paramArrayOfString;
  }
  
  private String[] d(String[] paramArrayOfString)
  {
    Object localObject = L.O();
    String str = "";
    if (localObject != null) {
      str = ((cr)localObject).c();
    }
    localObject = paramArrayOfString;
    if (!com.estrongs.android.util.ap.bC(str)) {
      localObject = a(paramArrayOfString, "disk_analysis");
    }
    return (String[])localObject;
  }
  
  public void a(int paramInt)
  {
    Object localObject1;
    if (a != null)
    {
      localObject1 = a.values().iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((com.estrongs.android.view.a.a)((Iterator)localObject1).next()).d(true);
      }
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      K = paramInt;
      return;
      c(d(a(d, "quick_finder")));
      a(new String[] { "new", "search", "view" });
      continue;
      if (!com.estrongs.android.util.ap.W(L.P())) {}
      for (localObject1 = a(f, "disk_analysis");; localObject1 = f)
      {
        c((String[])localObject1);
        if (!com.estrongs.android.pop.z.r) {
          break;
        }
        a(new String[] { "player" });
        break;
      }
      if (!com.estrongs.android.util.ap.Y(L.P())) {}
      for (localObject1 = a(g, "disk_analysis");; localObject1 = g)
      {
        c((String[])localObject1);
        a(new String[] { "new" });
        break;
      }
      if (!com.estrongs.android.util.ap.aX(L.P()))
      {
        if ((!A) && (!B))
        {
          c(g);
          a(new String[] { "view_pic" });
        }
        for (;;)
        {
          a(new String[] { "new" });
          break;
          c(a(g, "view_pic", "sort"));
        }
      }
      c(g);
      a(new String[] { "new" });
      continue;
      c(h);
      a(new String[] { "new", "search" });
      try
      {
        a(new String[] { "view_pic" });
      }
      catch (Exception localException) {}
      continue;
      if ((com.estrongs.android.util.ap.aa(L.P())) || (com.estrongs.android.util.ap.af(L.P()))) {}
      for (Object localObject2 = d;; localObject2 = a(d, "disk_analysis"))
      {
        c((String[])localObject2);
        a(new String[] { "new" });
        break;
      }
      c(a(a(d, "new", "app_locker"), "quick_finder"));
      continue;
      Object localObject3 = a(a(d, "new", "app_locker"), "quick_finder");
      Object localObject4 = L.O();
      localObject2 = "";
      if (localObject4 != null) {
        localObject2 = ((cr)localObject4).c();
      }
      if (!com.estrongs.android.util.ap.ap((String)localObject2))
      {
        c(a((String[])localObject3, "disk_analysis"));
      }
      else
      {
        c((String[])localObject3);
        continue;
        c(a(d, "quick_finder"));
        a(new String[] { "new", "view" });
        continue;
        if (!com.estrongs.android.util.ap.bC(L.P())) {}
        for (localObject2 = a(d, "disk_analysis");; localObject2 = d)
        {
          localObject3 = localObject2;
          if (com.estrongs.android.util.ap.bd(L.P())) {
            localObject3 = a((String[])localObject2, "view", "sort");
          }
          c(d(a((String[])localObject3, "quick_finder")));
          break;
        }
        c(d(a(d, "quick_finder")));
        a(new String[] { "new", "search" });
        continue;
        c(e);
        continue;
        c(d(a(d, "quick_finder")));
        a(new String[] { "search" });
        continue;
        if ((com.estrongs.android.util.ap.L(L.P())) || (com.estrongs.android.util.ap.J(L.P()))) {}
        for (localObject2 = a(e, "new");; localObject2 = e)
        {
          c((String[])localObject2);
          break;
        }
        c(t);
        continue;
        if (com.estrongs.android.util.ap.bg(L.P())) {}
        for (localObject2 = a(i, "scan");; localObject2 = i)
        {
          c((String[])localObject2);
          break;
        }
        localObject3 = a(d, "quick_finder");
        localObject2 = localObject3;
        if (com.estrongs.android.util.ap.aZ(L.P())) {
          localObject2 = a((String[])localObject3, "new");
        }
        c(d((String[])localObject2));
        a(new String[] { "search" });
        continue;
        c(l);
        continue;
        c(k);
        continue;
        c(j);
        continue;
        localObject2 = u.a();
        if (((u)localObject2).b())
        {
          if (((u)localObject2).d() == 2) {
            c(n);
          } else {
            c(o);
          }
        }
        else
        {
          c(m);
          continue;
          c(p);
          continue;
          localObject2 = L.O();
          if ((localObject2 != null) && ((localObject2 instanceof WebViewWrapper)))
          {
            localObject4 = (WebViewWrapper)localObject2;
            if (L.h.e()) {}
            for (localObject2 = a(q, "unlock_page", 3);; localObject2 = a(q, "lock_page", 3))
            {
              localObject3 = localObject2;
              if (!((WebViewWrapper)localObject4).t()) {
                localObject3 = a((String[])localObject2, "forward");
              }
              c((String[])localObject3);
              if ((!((WebViewWrapper)localObject4).z()) || (((WebViewWrapper)localObject4).p()) || (!((WebViewWrapper)localObject4).v())) {
                a(new String[] { "zoom_in" });
              }
              if ((((WebViewWrapper)localObject4).z()) && (!((WebViewWrapper)localObject4).p()) && (((WebViewWrapper)localObject4).w())) {
                break;
              }
              a(new String[] { "zoom_out" });
              break;
            }
            c(r);
            if (com.estrongs.fs.impl.q.a.b())
            {
              a(new String[] { "clear_recycle" });
              continue;
              c(s);
              continue;
              c(d(a(d, "quick_finder")));
              a(new String[] { "new" });
              continue;
              c(u);
              continue;
              c(v);
              continue;
              c(w);
              continue;
              c(x);
              continue;
              c(y);
              continue;
              c(z);
            }
          }
        }
      }
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (paramBoolean2))
    {
      d = new String[] { "select", "new", "search", "refresh", "view", "windows", "disk_analysis", "quick_finder", "history" };
      e = new String[] { "select", "new", "refresh", "view", "windows", "history" };
      f = new String[] { "select", "player", "search", "refresh", "view", "windows", "disk_analysis", "quick_finder", "history" };
      g = new String[] { "select", "new", "search", "refresh", "sort", "windows", "disk_analysis", "quick_finder", "history" };
      h = new String[] { "select", "new", "search", "refresh", "sort", "windows", "history" };
      i = new String[] { "select", "bt_discoverable", "scan", "refresh", "view", "windows", "history" };
      j = new String[] { "select", "charset", "extract", "refresh", "sort", "windows", "history" };
      k = new String[] { "select", "analyse", "refresh", "sort", "windows", "history" };
      l = new String[] { "select", "new", "refresh", "windows", "history" };
      n = new String[] { "select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout", "history" };
      o = new String[] { "select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout", "history" };
      m = new String[] { "pcs_login", "pcs_register", "pcs_directly", "windows", "history" };
      p = new String[] { "remote_settings", "windows", "history" };
      r = new String[] { "select", "clear_recycle", "refresh", "view", "windows", "history" };
      s = new String[] { "new_window", "search", "refresh", "windows", "history", "message_box" };
      q = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "windows", "history" };
      t = new String[] { "select", "adb_install", "search", "refresh", "view", "windows", "disk_analysis", "history" };
      u = new String[] { "select", "search", "refresh", "windows", "history" };
      v = new String[] { "windows" };
      w = new String[] { "search", "refresh", "log_clear", "windows" };
      x = new String[] { "refresh", "view", "windows" };
      y = new String[] { "new", "search", "refresh", "sort", "windows" };
      z = new String[] { "refresh", "sort", "windows" };
    }
    for (;;)
    {
      if (DuSpeedBoosterController.a(DuSpeedBoosterController.LocationType.TOOLBAR)) {
        k = a(k, "du_sb", 0);
      }
      if (com.estrongs.android.util.bk.p())
      {
        s = a(s, "clean_ram");
        d = a(d, "clean_ram");
      }
      if (!com.estrongs.android.pop.app.analysis.a.c())
      {
        d = a(d, "disk_analysis");
        t = a(t, "disk_analysis");
      }
      return;
      if ((!paramBoolean1) && (paramBoolean2))
      {
        d = new String[] { "new", "search", "refresh", "view", "windows", "disk_analysis", "quick_finder", "history" };
        e = new String[] { "new", "refresh", "view", "windows", "history" };
        f = new String[] { "player", "search", "refresh", "view", "windows", "disk_analysis", "quick_finder", "history" };
        g = new String[] { "new", "search", "refresh", "sort", "windows", "disk_analysis", "quick_finder", "history" };
        h = new String[] { "new", "search", "refresh", "sort", "windows", "history" };
        i = new String[] { "bt_discoverable", "scan", "refresh", "view", "windows", "history" };
        j = new String[] { "charset", "extract", "refresh", "sort", "windows", "history" };
        k = new String[] { "analyse", "refresh", "sort", "windows", "history" };
        l = new String[] { "new", "refresh", "windows", "history" };
        n = new String[] { "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout", "history" };
        o = new String[] { "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout", "history" };
        m = new String[] { "pcs_login", "pcs_register", "pcs_directly", "windows", "history" };
        p = new String[] { "remote_settings", "windows", "history" };
        r = new String[] { "clear_recycle", "refresh", "view", "windows", "history" };
        s = new String[] { "new_window", "search", "refresh", "windows", "history", "message_box" };
        q = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "windows", "history" };
        t = new String[] { "adb_install", "search", "refresh", "view", "windows", "disk_analysis", "history" };
        u = new String[] { "search", "refresh", "windows", "history" };
        v = new String[] { "windows" };
        w = new String[] { "search", "refresh", "log_clear", "windows" };
        x = new String[] { "refresh", "view", "windows" };
        y = new String[] { "new", "search", "refresh", "sort", "windows" };
        z = new String[] { "refresh", "sort", "windows" };
      }
      else if ((paramBoolean1) && (!paramBoolean2))
      {
        d = new String[] { "select", "new", "search", "refresh", "view", "disk_analysis", "quick_finder", "history" };
        e = new String[] { "select", "new", "refresh", "view", "history" };
        f = new String[] { "select", "player", "search", "refresh", "view", "disk_analysis", "quick_finder", "history" };
        g = new String[] { "select", "new", "search", "refresh", "sort", "disk_analysis", "quick_finder", "history" };
        h = new String[] { "select", "new", "search", "refresh", "sort", "history" };
        i = new String[] { "select", "bt_discoverable", "scan", "refresh", "view", "history" };
        j = new String[] { "select", "charset", "extract", "refresh", "sort", "history" };
        k = new String[] { "select", "analyse", "refresh", "sort", "history" };
        l = new String[] { "select", "new", "refresh", "history" };
        n = new String[] { "select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout", "history" };
        o = new String[] { "select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout", "history" };
        m = new String[] { "pcs_login", "pcs_register", "pcs_directly", "history" };
        p = new String[] { "remote_settings", "history" };
        r = new String[] { "select", "clear_recycle", "refresh", "view", "history" };
        s = new String[] { "new_window", "search", "refresh", "history", "message_box" };
        q = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "history" };
        t = new String[] { "select", "adb_install", "search", "refresh", "view", "windows", "disk_analysis", "history" };
        u = new String[] { "select", "search", "refresh", "history" };
        v = new String[0];
        w = new String[] { "search", "refresh", "log_clear" };
        x = new String[] { "refresh", "view", "windows" };
        y = new String[] { "new", "search", "refresh", "sort", "windows" };
        z = new String[] { "refresh", "sort", "windows" };
      }
      else
      {
        d = new String[] { "new", "search", "refresh", "sort", "view", "disk_analysis", "quick_finder", "history" };
        e = new String[] { "new", "refresh", "sort", "view", "history" };
        f = new String[] { "player", "search", "refresh", "sort", "view", "disk_analysis", "quick_finder", "history" };
        g = new String[] { "new", "search", "refresh", "sort", "sort", "disk_analysis", "quick_finder", "history" };
        h = new String[] { "new", "search", "refresh", "sort", "view_pic", "history" };
        i = new String[] { "bt_discoverable", "scan", "refresh", "sort", "view", "history" };
        j = new String[] { "charset", "extract", "refresh", "sort", "history" };
        k = new String[] { "analyse", "refresh", "sort", "history" };
        l = new String[] { "new", "refresh", "history" };
        n = new String[] { "new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout", "history" };
        o = new String[] { "new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout", "history" };
        m = new String[] { "pcs_login", "pcs_register", "pcs_directly", "history" };
        p = new String[] { "remote_settings", "history" };
        r = new String[] { "clear_recycle", "refresh", "view", "history" };
        s = new String[] { "new_window", "search", "refresh", "history", "message_box" };
        q = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "history" };
        t = new String[] { "adb_install", "search", "refresh", "view", "windows", "disk_analysis", "history" };
        u = new String[] { "search", "refresh", "history" };
        v = new String[0];
        w = new String[] { "search", "refresh", "log_clear" };
        x = new String[] { "refresh", "view", "windows" };
        y = new String[] { "new", "search", "refresh", "sort", "windows" };
        z = new String[] { "refresh", "sort", "windows" };
      }
    }
  }
  
  public void e()
  {
    a = new HashMap();
    com.estrongs.android.view.a.a locala1 = new com.estrongs.android.view.a.a(2130838529, 2131230720).a(new n(this));
    com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838519, 2131232460).a(new ai(this));
    com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838572, 2131230867).a(new at(this));
    com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838572, 2131230867).a(new bh(this));
    com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838524, 2131231701).a(new bt(this));
    com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838526, 2131232461).a(new bw(this));
    com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838551, 2131230852).a(new by(this));
    com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838597, 2131230886).a(new bz(this));
    com.estrongs.android.view.a.a locala9 = new com.estrongs.android.view.a.a(2130838596, 2131230885).a(new ca(this));
    com.estrongs.android.view.a.a locala10 = new com.estrongs.android.view.a.a(2130838588, 2131230880).a(new o(this));
    com.estrongs.android.view.a.a locala11 = new com.estrongs.android.view.a.a(2130838609, 2131230895).a(new p(this));
    com.estrongs.android.view.a.a locala12 = new com.estrongs.android.view.a.a(2130838628, 2131230902).a(new t(this));
    com.estrongs.android.view.a.a locala13 = new com.estrongs.android.view.a.a(2130838628, 2131230902).a(new w(this));
    com.estrongs.android.view.a.a locala14 = new com.estrongs.android.view.a.a(2130838570, 2131232465).a(new z(this));
    com.estrongs.android.view.a.a locala15 = new com.estrongs.android.view.a.a(2130838625, 2131230863).a(new aa(this));
    com.estrongs.android.view.a.a locala16 = new com.estrongs.android.view.a.a(2130838626, 2131232267).a(new ac(this));
    com.estrongs.android.view.a.a locala17 = new com.estrongs.android.view.a.a(2130838575, 2131232468).a(new ae(this));
    com.estrongs.android.view.a.a locala18 = new com.estrongs.android.view.a.a(2130838549, L.getString(2131231970)).a(new af(this));
    com.estrongs.android.view.a.a locala19 = new com.estrongs.android.view.a.a(2130838603, L.getString(2131231918)).a(new ag(this));
    com.estrongs.android.view.a.a locala20 = new com.estrongs.android.view.a.a(2130838625, 2131230831).a(new aj(this));
    com.estrongs.android.view.a.a locala21 = new com.estrongs.android.view.a.a(2130838585, 2131231972).a(new ak(this));
    new com.estrongs.android.view.a.a(2130838550, 2131231926).a(new al(this));
    com.estrongs.android.view.a.a locala22 = new com.estrongs.android.view.a.a(2130838575, 2131231974).a(new am(this));
    com.estrongs.android.view.a.a locala23 = new com.estrongs.android.view.a.a(2130838603, 2131231617).a(new an(this));
    com.estrongs.android.view.a.a locala24 = new com.estrongs.android.view.a.a(2130838641, 2131232464).a(new ao(this));
    com.estrongs.android.view.a.a locala25 = new com.estrongs.android.view.a.a(2130838592, 2131230829).a(new ap(this));
    com.estrongs.android.view.a.a locala26 = new com.estrongs.android.view.a.a(2130838553, 2131230855).a(new aq(this));
    com.estrongs.android.view.a.a locala27 = new com.estrongs.android.view.a.a(2130838552, 2131231280).a(new ar(this));
    com.estrongs.android.view.a.a locala28 = new com.estrongs.android.view.a.a(2130838639, 2131232471).a(new as(this));
    com.estrongs.android.view.a.a locala29 = new com.estrongs.android.view.a.a(2130838640, 2131232475).a(new aw(this));
    com.estrongs.android.view.a.a locala30 = new com.estrongs.android.view.a.a(2130838605, 2131231711).a(new ax(this));
    com.estrongs.android.view.a.a locala31 = new com.estrongs.android.view.a.a(2130838547, 2131232476).a(new ay(this));
    com.estrongs.android.view.a.a locala32 = new com.estrongs.android.view.a.a(2130838571, 2131232477).a(new az(this));
    com.estrongs.android.view.a.a locala33 = new com.estrongs.android.view.a.a(2130838604, 2131230892).a(new ba(this));
    com.estrongs.android.view.a.a locala34 = new com.estrongs.android.view.a.a(2130838539, 2131230834).a(new bb(this));
    new com.estrongs.android.view.a.a(2130838603, 2131231617).a(new bc(this));
    com.estrongs.android.view.a.a locala35 = new com.estrongs.android.view.a.a(2130838574, 2131231888).a(new bd(this));
    com.estrongs.android.view.a.a locala36 = new com.estrongs.android.view.a.a(2130838621, 2131232474).a(new be(this));
    com.estrongs.android.view.a.a locala37 = new com.estrongs.android.view.a.a(2130838621, 2131231096).a(new bf(this));
    com.estrongs.android.view.a.a locala38 = new com.estrongs.android.view.a.a(2130838532, 2131231399).a(new bj(this));
    com.estrongs.android.view.a.a locala39 = new com.estrongs.android.view.a.a(2130838561, 2131231003).a(new bk(this));
    locala39.d(com.estrongs.android.ui.theme.at.a(L).c(2131558719));
    com.estrongs.android.view.a.a locala40 = new com.estrongs.android.view.a.a(2130838532, 2131231573).a(new bl(this));
    locala40.e(false);
    com.estrongs.android.view.a.a locala41 = new com.estrongs.android.view.a.a(2130838519, 2131231349).a(new bm(this));
    com.estrongs.android.view.a.a locala42 = new com.estrongs.android.view.a.a(2130838564, 2131230864).a(new bn(this));
    com.estrongs.android.view.a.a locala43 = new com.estrongs.android.view.a.a(2130838028, 2131230854).a(new bo(this));
    com.estrongs.android.view.a.a locala44 = new com.estrongs.android.view.a.a(2130838027, 2131231667).a(new bp(this));
    com.estrongs.android.view.a.a locala45 = new com.estrongs.android.view.a.a(2130838556, 2131231655).a(new bq(this));
    a.put("analyse", locala2);
    a.put("bt_discoverable", locala5);
    a.put("charset", locala6);
    a.put("extract", locala7);
    a.put("new", locala3);
    a.put("new_window", locala4);
    a.put("refresh", locala10);
    a.put("search", locala8);
    a.put("scan", locala9);
    a.put("select", locala1);
    a.put("sort", locala11);
    a.put("view", locala12);
    a.put("view_pic", locala13);
    a.put("recommend", locala36);
    a.put("player", locala14);
    a.put("pcs_login", locala15);
    a.put("pcs_register", locala16);
    a.put("pcs_directly", locala17);
    a.put("pcs_logout", locala18);
    a.put("pcs_set_path", locala19);
    a.put("remote_settings", locala23);
    a.put("windows", locala24);
    a.put("pcs_chg_account", locala20);
    a.put("pcs_verify_account", locala21);
    a.put("pcs_change_password", locala22);
    a.put("clear_recycle", locala34);
    a.put("back", locala25);
    a.put("forward", locala26);
    a.put("lock_page", locala28);
    a.put("unlock_page", locala29);
    a.put("open_in_browser", locala35);
    a.put("add_fav", locala27);
    a.put("add_to_desk", locala30);
    a.put("zoom_in", locala31);
    a.put("zoom_out", locala32);
    a.put("share", locala33);
    a.put("adb_install", locala37);
    a.put("du_sb", locala38);
    a.put("app_locker", locala39);
    a.put("clean_ram", locala40);
    a.put("disk_analysis", locala41);
    a.put("message_box", locala42);
    a.put("quick_finder", locala43);
    a.put("log_clear", locala44);
    a.put("history", locala45);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */