package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.dd;
import com.estrongs.android.ui.dialog.fs;
import com.estrongs.android.ui.dialog.gs;
import com.estrongs.android.ui.dialog.gu;
import com.estrongs.android.ui.dialog.gz;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.util.am;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.j.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class w
  extends c
{
  private String[] A;
  private String[] B;
  private String[] C;
  private String[] D;
  private String[] E;
  private String[] F;
  private String[] G;
  private boolean H = true;
  private boolean I = false;
  private gu J;
  private gz K;
  private cg L;
  private com.estrongs.android.ui.dialog.az M;
  private gs N;
  private dd O;
  private fs P;
  private com.estrongs.android.ui.dialog.bf Q;
  private q R;
  private n S = new bu(this);
  public cp j;
  FileExplorerActivity k = null;
  protected Map<String, com.estrongs.android.view.a.a> l;
  boolean m = false;
  private com.estrongs.android.ui.view.by n;
  private View o;
  private int p = 0;
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
  
  public w(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    o();
  }
  
  public static void a(Context paramContext)
  {
    if (!ao.a().d())
    {
      Handler localHandler = new Handler();
      ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
      localHandler.postDelayed(new bv(arrayOfProgressDialog, paramContext), 500L);
      new bw(localHandler, arrayOfProgressDialog, paramContext).start();
      return;
    }
    paramContext.startActivity(new Intent(paramContext, PopAudioPlayer.class));
  }
  
  private void a(String paramString)
  {
    Object localObject = com.estrongs.fs.impl.m.a.a(b, "net://");
    String str1 = am.ai(paramString);
    localObject = ((List)localObject).iterator();
    String str2;
    if (((Iterator)localObject).hasNext()) {
      str2 = ((h)((Iterator)localObject).next()).getAbsolutePath();
    }
    for (;;)
    {
      try
      {
        if (!am.an(str2).equals("pcs")) {
          break;
        }
        boolean bool = am.ai(str2).equals(str1);
        if (bool) {
          break;
        }
        i = 1;
        if (i != 0) {
          b.m(paramString);
        }
        return;
      }
      catch (Exception localException) {}
      break;
      int i = 0;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    paramString1 = new com.estrongs.android.ui.pcs.w(k);
    paramString1.a(S);
    paramString1.show();
  }
  
  private void o()
  {
    m = cl.a(b);
    k = ((FileExplorerActivity)b);
    RelativeLayout localRelativeLayout = (RelativeLayout)k.findViewById(2131361914);
    o = localRelativeLayout;
    localRelativeLayout.setBackgroundDrawable(f.a(2130838154));
    FileExplorerActivity localFileExplorerActivity = k;
    if (d) {}
    for (int i = 1;; i = 3)
    {
      n = new com.estrongs.android.ui.view.by(localFileExplorerActivity, localRelativeLayout, i);
      R = new x(this);
      FexApplication.a().a(R);
      H = ad.a(b).ak();
      I = ad.a(b).am();
      k();
      n.a("normal_mode", this);
      n.a("paste_mode", new is(n, k, d));
      a(q);
      return;
    }
  }
  
  public void a(String paramString, List<h> paramList)
  {
    if (!"edit_mode".equals(n.b())) {}
    while (j == null) {
      return;
    }
    j.a(paramString, paramList);
  }
  
  public void b(boolean paramBoolean)
  {
    com.estrongs.android.view.aw localaw = k.y();
    if ((localaw != null) && (localaw.o()))
    {
      localaw.R();
      if ((k.q) && (am.aX(localaw.c()))) {
        k.f(false);
      }
    }
    if (j == null)
    {
      j = new bt(this, k, d, null);
      n.a("edit_mode", j);
    }
    n.a(true);
    n.a("edit_mode", Boolean.valueOf(paramBoolean));
    k.j = "edit_mode";
    k.v();
    if (localaw != null)
    {
      localaw.a(true);
      k.a(0, localaw.d());
    }
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected void c()
  {
    if (FileExplorerActivity.J() != null)
    {
      if (e.b()) {
        FileExplorerActivity.J().l();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.J().n();
  }
  
  public void c(boolean paramBoolean)
  {
    a(paramBoolean);
    n.a(paramBoolean);
  }
  
  protected void d()
  {
    if (FileExplorerActivity.J() != null)
    {
      if (e.b()) {
        FileExplorerActivity.J().n();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.J().l();
  }
  
  public void d(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      p = paramInt;
      j();
      return;
      a(q);
      b(new String[] { "new", "search", "view" });
      continue;
      a(s);
      if (com.estrongs.android.pop.z.r)
      {
        b(new String[] { "player" });
        continue;
        a(t);
        b(new String[] { "new" });
        continue;
        if (!am.aN(k.z()))
        {
          if ((!H) && (!I))
          {
            a(t);
            b(new String[] { "view_pic" });
          }
          for (;;)
          {
            b(new String[] { "new" });
            break;
            a(a(t, "view_pic", "sort"));
          }
        }
        a(t);
        b(new String[] { "new" });
        continue;
        a(u);
        b(new String[] { "new", "search" });
        try
        {
          b(new String[] { "view_pic" });
        }
        catch (Exception localException) {}
        continue;
        a(q);
        b(new String[] { "new" });
        continue;
        a(q);
        b(new String[] { "new", "view" });
        continue;
        a(q);
        continue;
        a(q);
        b(new String[] { "new", "search" });
        continue;
        a(r);
        continue;
        a(q);
        b(new String[] { "search" });
        continue;
        a(r);
        continue;
        a(G);
        continue;
        a(v);
        continue;
        a(q);
        b(new String[] { "search" });
        continue;
        a(y);
        continue;
        a(x);
        continue;
        a(w);
        continue;
        Object localObject1 = r.a();
        if (((r)localObject1).b())
        {
          if (((r)localObject1).d() == 2) {
            a(A);
          } else {
            a(B);
          }
        }
        else
        {
          a(z);
          continue;
          a(C);
          continue;
          localObject1 = k.y();
          if ((localObject1 != null) && ((localObject1 instanceof WebViewWrapper)))
          {
            WebViewWrapper localWebViewWrapper = (WebViewWrapper)localObject1;
            if (k.f.f()) {}
            for (localObject1 = a(D, "unlock_page", 3);; localObject1 = a(D, "lock_page", 3))
            {
              Object localObject2 = localObject1;
              if (!localWebViewWrapper.q()) {
                localObject2 = a((String[])localObject1, "forward");
              }
              a((String[])localObject2);
              if ((!localWebViewWrapper.ap()) || (localWebViewWrapper.o()) || (!localWebViewWrapper.al())) {
                b(new String[] { "zoom_in" });
              }
              if ((localWebViewWrapper.ap()) && (!localWebViewWrapper.o()) && (localWebViewWrapper.am())) {
                break;
              }
              b(new String[] { "zoom_out" });
              break;
            }
            a(E);
            if (com.estrongs.fs.impl.l.a.b())
            {
              b(new String[] { "clear_recycle" });
              continue;
              a(F);
              continue;
              a(q);
              b(new String[] { "new" });
            }
          }
        }
      }
    }
  }
  
  public boolean f()
  {
    return false;
  }
  
  public void g()
  {
    super.g();
    FexApplication.a().b(R);
  }
  
  protected void h()
  {
    l = new HashMap();
    com.estrongs.android.view.a.a locala1 = new com.estrongs.android.view.a.a(2130838230, 2131427370).a(new ar(this));
    com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838149, 2131428013).a(new bd(this));
    com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838212, 2131427361).a(new bo(this));
    com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838212, 2131427361).a(new by(this));
    com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838162, 2131428138).a(new ca(this));
    com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838156, 2131428016).a(new cb(this));
    com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838196, 2131427393).a(new cd(this));
    com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838227, 2131427360).a(new ce(this));
    com.estrongs.android.view.a.a locala9 = new com.estrongs.android.view.a.a(2130838227, 2131428333).a(new y(this));
    com.estrongs.android.view.a.a locala10 = new com.estrongs.android.view.a.a(2130838223, 2131427375).a(new z(this));
    com.estrongs.android.view.a.a locala11 = new com.estrongs.android.view.a.a(2130838236, 2131427391).a(new aa(this));
    com.estrongs.android.view.a.a locala12 = new com.estrongs.android.view.a.a(2130838253, 2131427364).a(new ae(this));
    com.estrongs.android.view.a.a locala13 = new com.estrongs.android.view.a.a(2130838253, 2131427364).a(new ah(this));
    com.estrongs.android.view.a.a locala14 = new com.estrongs.android.view.a.a(2130838216, 2131428014).a(new ak(this));
    com.estrongs.android.view.a.a locala15 = new com.estrongs.android.view.a.a(2130838202, 2131428201).a(new al(this));
    com.estrongs.android.view.a.a locala16 = new com.estrongs.android.view.a.a(2130838213, 2131427901).a(new an(this));
    com.estrongs.android.view.a.a locala17 = new com.estrongs.android.view.a.a(2130838246, 2131428554).a(new ap(this));
    com.estrongs.android.view.a.a locala18 = new com.estrongs.android.view.a.a(2130838194, b.getString(2131428559)).a(new aq(this));
    com.estrongs.android.view.a.a locala19 = new com.estrongs.android.view.a.a(2130838233, b.getString(2131428597)).a(new as(this));
    com.estrongs.android.view.a.a locala20 = new com.estrongs.android.view.a.a(2130838202, 2131428627).a(new au(this));
    com.estrongs.android.view.a.a locala21 = new com.estrongs.android.view.a.a(2130838181, 2131428694).a(new av(this));
    new com.estrongs.android.view.a.a(2130838195, 2131428652).a(new aw(this));
    com.estrongs.android.view.a.a locala22 = new com.estrongs.android.view.a.a(2130838246, 2131428645).a(new ax(this));
    com.estrongs.android.view.a.a locala23 = new com.estrongs.android.view.a.a(2130838233, 2131427439).a(new ay(this));
    com.estrongs.android.view.a.a locala24 = new com.estrongs.android.view.a.a(2130838264, 2131428034).a(new az(this));
    com.estrongs.android.view.a.a locala25 = new com.estrongs.android.view.a.a(2130838225, 2131428370).a(new ba(this));
    com.estrongs.android.view.a.a locala26 = new com.estrongs.android.view.a.a(2130838197, 2131428369).a(new bb(this));
    com.estrongs.android.view.a.a locala27 = new com.estrongs.android.view.a.a(2130838190, 2131428024).a(new bc(this));
    com.estrongs.android.view.a.a locala28 = new com.estrongs.android.view.a.a(2130838201, 2131428371).a(new be(this));
    com.estrongs.android.view.a.a locala29 = new com.estrongs.android.view.a.a(2130838251, 2131428372).a(new bf(this));
    com.estrongs.android.view.a.a locala30 = new com.estrongs.android.view.a.a(2130838189, 2131427485).a(new bg(this));
    com.estrongs.android.view.a.a locala31 = new com.estrongs.android.view.a.a(2130838192, 2131428449).a(new bh(this));
    com.estrongs.android.view.a.a locala32 = new com.estrongs.android.view.a.a(2130838211, 2131428450).a(new bi(this));
    com.estrongs.android.view.a.a locala33 = new com.estrongs.android.view.a.a(2130838188, 2131427388).a(new bj(this));
    com.estrongs.android.view.a.a locala34 = new com.estrongs.android.view.a.a(2130838159, 2131427377).a(new bk(this));
    new com.estrongs.android.view.a.a(2130838233, 2131427439).a(new bl(this));
    com.estrongs.android.view.a.a locala35 = new com.estrongs.android.view.a.a(2130838179, 2131428486).a(new bm(this));
    com.estrongs.android.view.a.a locala36 = new com.estrongs.android.view.a.a(2130838248, 2131428487).a(new bn(this));
    com.estrongs.android.view.a.a locala37 = new com.estrongs.android.view.a.a(2130838248, 2131427612).a(new br(this));
    l.put("analyse", locala2);
    l.put("bt_discoverable", locala5);
    l.put("charset", locala6);
    l.put("extract", locala7);
    l.put("new", locala3);
    l.put("new_window", locala4);
    l.put("refresh", locala10);
    l.put("search", locala8);
    l.put("scan", locala9);
    l.put("select", locala1);
    l.put("sort", locala11);
    l.put("view", locala12);
    l.put("view_pic", locala13);
    l.put("recommend", locala36);
    l.put("player", locala14);
    l.put("pcs_login", locala15);
    l.put("pcs_register", locala16);
    l.put("pcs_directly", locala17);
    l.put("pcs_logout", locala18);
    l.put("pcs_set_path", locala19);
    l.put("remote_settings", locala23);
    l.put("windows", locala24);
    l.put("pcs_chg_account", locala20);
    l.put("pcs_verify_account", locala21);
    l.put("pcs_change_password", locala22);
    l.put("clear_recycle", locala34);
    l.put("back", locala25);
    l.put("forward", locala26);
    l.put("lock_page", locala28);
    l.put("unlock_page", locala29);
    l.put("open_in_browser", locala35);
    l.put("add_fav", locala27);
    l.put("add_to_desk", locala30);
    l.put("zoom_in", locala31);
    l.put("zoom_out", locala32);
    l.put("share", locala33);
    l.put("adb_install", locala37);
  }
  
  protected Map<String, com.estrongs.android.view.a.a> i()
  {
    return l;
  }
  
  public void k()
  {
    if ((H) && (I))
    {
      q = new String[] { "select", "new", "search", "refresh", "view", "windows" };
      r = new String[] { "select", "new", "scan", "refresh", "view", "windows" };
      s = new String[] { "select", "player", "search", "refresh", "view", "windows" };
      t = new String[] { "select", "new", "search", "refresh", "view_pic", "windows" };
      u = new String[] { "select", "new", "search", "refresh", "sort", "windows" };
      v = new String[] { "select", "bt_discoverable", "scan", "refresh", "view", "windows" };
      w = new String[] { "select", "charset", "extract", "refresh", "view", "windows" };
      x = new String[] { "select", "analyse", "refresh", "sort", "windows" };
      y = new String[] { "select", "new", "refresh", "windows" };
      A = new String[] { "select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout" };
      B = new String[] { "select", "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout" };
      z = new String[] { "pcs_login", "pcs_register", "pcs_directly", "windows" };
      C = new String[] { "remote_settings", "windows" };
      E = new String[] { "select", "clear_recycle", "refresh", "view", "windows" };
      F = new String[] { "new_window", "search", "refresh", "recommend", "windows" };
      D = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "windows" };
      G = new String[] { "select", "adb_install", "search", "refresh", "view", "windows" };
    }
    for (;;)
    {
      if (!com.estrongs.android.pop.z.f) {
        F = a(F, "recommend");
      }
      return;
      if ((!H) && (I))
      {
        q = new String[] { "new", "search", "refresh", "view", "windows" };
        r = new String[] { "new", "scan", "refresh", "view", "windows" };
        s = new String[] { "player", "search", "refresh", "view", "windows" };
        t = new String[] { "new", "search", "refresh", "view_pic", "windows" };
        u = new String[] { "new", "search", "refresh", "sort", "windows" };
        v = new String[] { "bt_discoverable", "scan", "refresh", "view", "windows" };
        w = new String[] { "charset", "extract", "refresh", "view", "windows" };
        x = new String[] { "analyse", "refresh", "sort", "windows" };
        y = new String[] { "new", "refresh", "windows" };
        A = new String[] { "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout" };
        B = new String[] { "new", "search", "refresh", "view", "windows", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout" };
        z = new String[] { "pcs_login", "pcs_register", "pcs_directly", "windows" };
        C = new String[] { "remote_settings", "windows" };
        E = new String[] { "clear_recycle", "refresh", "view", "windows" };
        F = new String[] { "new_window", "search", "refresh", "recommend", "windows" };
        D = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk", "windows" };
        G = new String[] { "adb_install", "search", "refresh", "view", "windows" };
      }
      else if ((H) && (!I))
      {
        q = new String[] { "select", "new", "search", "refresh", "view" };
        r = new String[] { "select", "new", "scan", "refresh", "view" };
        s = new String[] { "select", "player", "search", "refresh", "view" };
        t = new String[] { "select", "new", "search", "refresh", "view_pic" };
        u = new String[] { "select", "new", "search", "refresh", "sort" };
        v = new String[] { "select", "bt_discoverable", "scan", "refresh", "view" };
        w = new String[] { "select", "charset", "extract", "refresh", "view" };
        x = new String[] { "select", "analyse", "refresh", "sort" };
        y = new String[] { "select", "new", "refresh" };
        A = new String[] { "select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout" };
        B = new String[] { "select", "new", "search", "refresh", "view", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout" };
        z = new String[] { "pcs_login", "pcs_register", "pcs_directly" };
        C = new String[] { "remote_settings" };
        E = new String[] { "select", "clear_recycle", "refresh", "view" };
        F = new String[] { "new_window", "search", "refresh", "recommend" };
        D = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk" };
        G = new String[] { "select", "adb_install", "search", "refresh", "view", "windows" };
      }
      else
      {
        q = new String[] { "new", "search", "refresh", "sort", "view" };
        r = new String[] { "new", "scan", "refresh", "sort", "view" };
        s = new String[] { "player", "search", "refresh", "sort", "view" };
        t = new String[] { "new", "search", "refresh", "sort", "view_pic" };
        u = new String[] { "new", "search", "refresh", "sort", "view_pic" };
        v = new String[] { "bt_discoverable", "scan", "refresh", "sort", "view" };
        w = new String[] { "charset", "extract", "refresh", "sort", "view" };
        x = new String[] { "analyse", "refresh", "sort" };
        y = new String[] { "new", "refresh" };
        A = new String[] { "new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_verify_account", "pcs_chg_account", "pcs_logout" };
        B = new String[] { "new", "search", "refresh", "sort", "view", "pcs_set_path", "pcs_change_password", "pcs_chg_account", "pcs_logout" };
        z = new String[] { "pcs_login", "pcs_register", "pcs_directly" };
        C = new String[] { "remote_settings" };
        E = new String[] { "clear_recycle", "refresh", "view" };
        F = new String[] { "new_window", "search", "refresh", "recommend" };
        D = new String[] { "zoom_out", "zoom_in", "refresh", "back", "forward", "add_fav", "share", "open_in_browser", "add_to_desk" };
        G = new String[] { "adb_install", "search", "refresh", "view", "windows" };
      }
    }
  }
  
  public com.estrongs.android.ui.view.by l()
  {
    return n;
  }
  
  public void m()
  {
    if (j != null)
    {
      j.j();
      k.s();
    }
  }
  
  public void n()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */