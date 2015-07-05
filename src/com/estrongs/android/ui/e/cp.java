package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.widget.LinearLayout;
import com.estrongs.a.l;
import com.estrongs.android.pop.multicopy.MultiThreadCopy;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.f;
import com.estrongs.android.ui.b.u;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.b.w;
import com.estrongs.fs.d;
import com.estrongs.fs.o;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class cp
  extends c
{
  private String[] A;
  private String[] B;
  private boolean C = false;
  private FileExplorerActivity j;
  protected Map<String, com.estrongs.android.view.a.a> k;
  private List<com.estrongs.fs.h> l;
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
  
  public cp(Activity paramActivity, boolean paramBoolean, LinearLayout paramLinearLayout)
  {
    super(paramActivity, paramBoolean);
    k();
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean, List<String> paramList)
  {
    a(paramFileExplorerActivity, paramBoolean, paramList, false);
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean1, List<String> paramList, boolean paramBoolean2)
  {
    paramList = new w(d.a(paramFileExplorerActivity), 0, paramList, true);
    paramFileExplorerActivity.s();
    paramList.addTaskStatusChangeListener(new dk(paramFileExplorerActivity, ProgressDialog.a(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131428167), paramFileExplorerActivity.getString(2131428168), true, true, new cq(paramList, paramFileExplorerActivity)), paramList, paramBoolean1, paramBoolean2));
    paramList.execute();
  }
  
  public static void a(List<com.estrongs.fs.h> paramList)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity == null) {
      return;
    }
    Iterator localIterator = paramList.iterator();
    boolean bool = false;
    com.estrongs.fs.h localh;
    Object localObject2;
    Object localObject1;
    if (localIterator.hasNext())
    {
      localh = (com.estrongs.fs.h)localIterator.next();
      localObject2 = b(localh);
      if (localObject2 == null) {
        break label376;
      }
      if ((localObject2 instanceof com.estrongs.fs.b.ad))
      {
        localObject1 = (com.estrongs.fs.b.ad)localObject2;
        ((com.estrongs.fs.b.ad)localObject1).requestStop();
        paramList = ((com.estrongs.a.a)localObject2).summary().optString("target");
        if (((com.estrongs.a.a)localObject2).getTaskStatus() == 4) {
          break label379;
        }
        paramList = e;
      }
    }
    label376:
    label379:
    for (;;)
    {
      try
      {
        com.estrongs.fs.impl.local.h.a(localFileExplorerActivity, paramList, null);
        com.estrongs.fs.impl.local.h.a(localFileExplorerActivity, MultiThreadCopy.a(paramList).getPath(), null);
        if ((localFileExplorerActivity.y() instanceof u))
        {
          paramList = ((u)localFileExplorerActivity.y()).a((com.estrongs.a.a)localObject1);
          if (paramList != null)
          {
            localObject2 = new com.estrongs.fs.b.ad(d.a(), ((com.estrongs.fs.b.ad)localObject1).summary());
            ((com.estrongs.fs.b.ad)localObject2).reset();
            ((com.estrongs.fs.b.ad)localObject2).execute();
            paramList.a((com.estrongs.a.a)localObject2);
            localh.putExtra("task", localObject2);
            ((com.estrongs.fs.b.ad)localObject1).requestStop();
            l.a().b((com.estrongs.a.a)localObject1, false);
            l.a().a((com.estrongs.a.a)localObject2, false);
          }
        }
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        continue;
      }
      if ((localObject2 instanceof ap))
      {
        localObject1 = com.estrongs.android.pop.ad.a(localFileExplorerActivity).ae();
        bool = bd.a((CharSequence)localObject1);
        if ((!bool) && ((localFileExplorerActivity.y() instanceof u)))
        {
          paramList = ((u)localFileExplorerActivity.y()).a((com.estrongs.a.a)localObject2);
          if (paramList != null)
          {
            localObject1 = new ap(d.a(), (String)localObject1, ((com.estrongs.a.a)localObject2).summary().optString("source"), ((com.estrongs.a.a)localObject2).summary().optString("title"));
            ((ap)localObject1).reset();
            ((ap)localObject1).execute();
            paramList.a((com.estrongs.a.a)localObject1);
            localh.putExtra("task", localObject1);
            ((com.estrongs.a.a)localObject2).requestStop();
            l.a().b((com.estrongs.a.a)localObject2, false);
            l.a().a((com.estrongs.a.a)localObject1, false);
          }
        }
        continue;
        if (!bool) {
          break;
        }
        ag.a(localFileExplorerActivity, 2131428595, 1);
        return;
      }
    }
  }
  
  private void a(List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.estrongs.a.a locala = b((com.estrongs.fs.h)paramList.next());
      if (locala != null)
      {
        if ((locala instanceof ap)) {
          b = true;
        }
        locala.requestStop();
        Object localObject;
        if (paramBoolean)
        {
          localObject = locala.summary().optString("target");
          if (!(locala instanceof ap)) {
            break label125;
          }
          localLinkedList2.add(new o((String)localObject, true));
        }
        for (;;)
        {
          l.a().c(locala);
          break;
          label125:
          localLinkedList1.add(new o((String)localObject, true));
          localObject = MultiThreadCopy.a((String)localObject);
          if (((File)localObject).exists()) {
            localLinkedList1.add(new o(((File)localObject).getPath(), true));
          }
        }
      }
    }
    j.s();
    paramList = j.y();
    if (paramList != null) {
      paramList.g();
    }
    if ((localLinkedList1.size() > 0) || (localLinkedList2.size() > 0)) {
      new dw(this, "Del Downloads", localLinkedList1, localLinkedList2).start();
    }
  }
  
  private String[] a(co paramco)
  {
    Object localObject2 = new ArrayList();
    if (D) {
      localObject1 = A;
    }
    for (;;)
    {
      int i1 = localObject1.length;
      int i = 0;
      while (i < i1)
      {
        Object localObject3 = localObject1[i];
        if (((com.estrongs.android.view.a.a)k.get(localObject3)).a(paramco)) {
          ((ArrayList)localObject2).add(localObject3);
        }
        i += 1;
      }
      if (E) {
        localObject1 = B;
      } else if (v) {
        localObject1 = y;
      } else if (e) {
        localObject1 = m;
      } else if (B) {
        localObject1 = q;
      } else if ((A) || (m)) {
        localObject1 = r;
      } else if (l) {
        localObject1 = p;
      } else if ((h) || (z)) {
        localObject1 = o;
      } else if ((i) || (j) || (k)) {
        localObject1 = x;
      } else if (n) {
        localObject1 = s;
      } else if ((f) || (g) || (x)) {
        localObject1 = n;
      } else if (w) {
        localObject1 = u;
      } else if (o) {
        localObject1 = t;
      } else if (u) {
        localObject1 = w;
      } else if ((q) || (p)) {
        localObject1 = v;
      } else if (y) {
        localObject1 = z;
      } else {
        localObject1 = m;
      }
    }
    localObject2 = (String[])((ArrayList)localObject2).toArray(new String[0]);
    Object localObject1 = localObject2;
    if (F == 0)
    {
      localObject1 = localObject2;
      if (localObject2.length > 5) {
        localObject1 = new String[] { localObject2[0], localObject2[1], localObject2[2], localObject2[3], "extra" };
      }
    }
    return (String[])localObject1;
  }
  
  private static com.estrongs.a.a b(com.estrongs.fs.h paramh)
  {
    paramh = paramh.getExtra("task");
    if ((paramh instanceof com.estrongs.a.a)) {
      return (com.estrongs.a.a)paramh;
    }
    return null;
  }
  
  private String m()
  {
    return j.z();
  }
  
  private void n()
  {
    m = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "open", "extract_to", "compression", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    n = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "edit_server", "property", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "shortcut", "add_to_server_list", "chromecast_play", "hide", "stop_share" };
    o = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "send", "add_to_favorite", "play", "playing", "chromecast_play", "open_as", "share", "pcs_stop_share" };
    x = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "pcs_backup", "send", "add_to_favorite", "open_as", "play", "playing", "share", "play_to", "chromecast_play", "shortcut" };
    p = new String[] { "app_uninstall", "app_backup", "app_share", "send", "app_shortcut", "adb_app_install_to", "app_property", "app_check_update" };
    q = new String[] { "app_auto_check_update", "app_update" };
    r = new String[] { "copy", "cut", "delete", "copy_to", "move_to", "app_property", "property", "pcs_backup", "send", "add_to_favorite", "open", "extract_to", "open_as", "install", "share", "shortcut" };
    s = new String[] { "download_open_folder", "download_delete", "download_do_again", "download_property" };
    t = new String[] { "compression_extract" };
    u = new String[] { "delete" };
    v = new String[] { "copy_to", "image_jump_to", "delete", "rename", "move_to", "image_comment", "image_edit", "image_download", "share", "property", "send", "add_to_favorite", "chromecast_play", "open_as" };
    w = new String[] { "image_exit_account" };
    y = new String[] { "delete", "restore", "property" };
    z = new String[] { "save_res_to_my_pcs" };
    A = new String[] { "adb_app_uninstall", "copy", "copy_to", "send", "property" };
    B = new String[] { "copy", "rename", "copy_to", "property" };
  }
  
  public void a(String paramString, List<com.estrongs.fs.h> paramList)
  {
    l = paramList;
    co localco = new co(paramString, l);
    String[] arrayOfString = a(localco);
    a(arrayOfString);
    if (F == 0) {
      b(arrayOfString);
    }
    do
    {
      do
      {
        return;
        if (F != 1) {
          break;
        }
        if ((H) && ((Z) || (Y))) {
          b(new String[] { "copy", "cut", "rename", "extra" });
        }
      } while ((paramList == null) || (paramList.size() <= 0));
      paramList = (com.estrongs.fs.h)paramList.get(0);
      if (am.v(paramList.getAbsolutePath()))
      {
        b(new String[] { "delete" });
        b(new String[] { "rename" });
        b(new String[] { "edit_server" });
        return;
      }
      if (am.u(paramList.getAbsolutePath()))
      {
        b(new String[] { "rename" });
        b(new String[] { "edit_server" });
        return;
      }
    } while ((!bd.b(paramList.getExtra("item_is_scanned_server"))) && (!bd.b((String)paramList.getExtra("device_name"))) && (!am.u(paramString)));
    b(new String[] { "rename" });
    return;
    if (G) {
      if ((m) || (i) || (j) || (k) || (C)) {
        b(new String[] { "rename" });
      }
    }
    for (;;)
    {
      if ((F > 1) && (D))
      {
        b(new String[] { "rename" });
        b(new String[] { "adb_app_launch" });
      }
      if (!am.u(paramString)) {
        break;
      }
      b(new String[] { "rename" });
      return;
      if (p)
      {
        b(new String[] { "image_jump_to" });
        continue;
        if (P)
        {
          if (p) {
            b(new String[] { "image_jump_to" });
          } else if ((Z) || (Y)) {
            b(new String[] { "copy", "cut", "rename", "extra" });
          } else if (am.aW(paramString)) {
            b(new String[] { "rename" });
          }
        }
        else if (Q)
        {
          b(new String[] { "edit_server", "property" });
          if (F >= 1) {
            b(new String[] { "adb_app_launch" });
          }
        }
      }
    }
  }
  
  protected void h()
  {
    if ((b instanceof FileExplorerActivity))
    {
      j = ((FileExplorerActivity)b);
      k = new HashMap();
      com.estrongs.android.view.a.a locala1 = new com.estrongs.android.view.a.a(2130838168, b.getString(2131427348)).a(new ev(this)).a(new eh(this));
      com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838169, j.getString(2131427349)).a(new fs(this)).a(new fh(this));
      com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838170, b.getString(2131427352)).a(new gz(this)).a(new gg(this));
      com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838178, b.getString(2131427351)).a(new cy(this)).a(new cs(this));
      com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838172, b.getString(2131427347)).a(new db(this)).a(new da(this));
      com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838183, b.getString(2131427355)).a(new df(this)).a(new de(this));
      com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838188, b.getString(2131427388)).a(new dh(this)).a(new dg(this));
      com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838167, b.getString(2131427381)).a(new dj(this)).a(new di(this));
      com.estrongs.android.view.a.a locala9 = new com.estrongs.android.view.a.a(2130838174, b.getString(2131428478)).a(new dn(this)).a(new dm(this));
      com.estrongs.android.view.a.a locala10 = new com.estrongs.android.view.a.a(2130838171, b.getString(2131428479)).a(new dp(this)).a(new do(this));
      com.estrongs.android.view.a.a locala11 = new com.estrongs.android.view.a.a(2130838189, b.getString(2131427485)).a(new dr(this)).a(new dq(this));
      com.estrongs.android.view.a.a locala12 = new com.estrongs.android.view.a.a(2130838165, b.getString(2131427936)).a(new dt(this)).a(new ds(this));
      com.estrongs.android.view.a.a locala13 = new com.estrongs.android.view.a.a(2130838190, b.getString(2131428024)).a(new dv(this)).a(new du(this));
      com.estrongs.android.view.a.a locala14 = new com.estrongs.android.view.a.a(2130838182, b.getString(2131428025)).a(new dy(this)).a(new dx(this));
      com.estrongs.android.view.a.a locala15 = new com.estrongs.android.view.a.a(2130838187, b.getString(2131427362)).a(new ea(this)).a(new dz(this));
      com.estrongs.android.view.a.a locala16 = new com.estrongs.android.view.a.a(2130838219, b.getString(2131427357)).a(new ec(this)).a(new eb(this));
      com.estrongs.android.view.a.a locala17 = new com.estrongs.android.view.a.a(2130838179, b.getString(2131427369)).a(new ee(this)).a(new ed(this));
      com.estrongs.android.view.a.a locala18 = new com.estrongs.android.view.a.a(2130838180, b.getString(2131427356)).a(new eg(this)).a(new ef(this));
      com.estrongs.android.view.a.a locala19 = new com.estrongs.android.view.a.a(2130838165, b.getString(2131427935)).a(new ej(this)).a(new ei(this));
      com.estrongs.android.view.a.a locala20 = new com.estrongs.android.view.a.a(2130838196, b.getString(2131427394)).a(new el(this)).a(new ek(this));
      com.estrongs.android.view.a.a locala21 = new com.estrongs.android.view.a.a(2130838191, b.getString(2131427368)).a(new en(this)).a(new em(this));
      com.estrongs.android.view.a.a locala22 = new com.estrongs.android.view.a.a(2130838231, b.getString(2131427982)).a(new eo(this));
      com.estrongs.android.view.a.a locala23 = new com.estrongs.android.view.a.a(2130838176, b.getString(2131427612)).a(new er(this)).a(new eq(this));
      com.estrongs.android.view.a.a locala24 = new com.estrongs.android.view.a.a(2130838175, b.getString(2131427367)).a(new ew(this)).a(new eu(this));
      com.estrongs.android.view.a.a locala25 = new com.estrongs.android.view.a.a(2130838164, b.getString(2131427353)).a(new ex(this));
      com.estrongs.android.view.a.a locala26 = new com.estrongs.android.view.a.a(2130838164, b.getString(2131428134)).a(new ez(this)).a(new ey(this));
      com.estrongs.android.view.a.a locala27 = new com.estrongs.android.view.a.a(2130838172, 2131427378).a(new fc(this)).a(new fb(this));
      com.estrongs.android.view.a.a locala28 = new com.estrongs.android.view.a.a(2130838166, j.getString(2131427379)).a(new fe(this)).a(new fd(this));
      com.estrongs.android.view.a.a locala29 = new com.estrongs.android.view.a.a(2130838188, j.getString(2131427388)).a(new fg(this)).a(new ff(this));
      com.estrongs.android.view.a.a locala30 = new com.estrongs.android.view.a.a(2130838189, j.getString(2131427485)).a(new fj(this)).a(new fi(this));
      com.estrongs.android.view.a.a locala31 = new com.estrongs.android.view.a.a(2130838182, j.getString(2131428025)).a(new fl(this)).a(new fk(this));
      com.estrongs.android.view.a.a locala32 = new com.estrongs.android.view.a.a(2130838252, j.getString(2131428664)).a(new fn(this)).a(new fm(this));
      com.estrongs.android.view.a.a locala33 = new com.estrongs.android.view.a.a(2130838151, j.getString(2131428665)).a(new fp(this)).a(new fo(this));
      com.estrongs.android.view.a.a locala34 = new com.estrongs.android.view.a.a(2130838252, j.getString(2131428624)).a(new fr(this)).a(new fq(this));
      com.estrongs.android.view.a.a locala35 = new com.estrongs.android.view.a.a(2130838214, j.getString(2131428131)).a(new fv(this)).a(new fu(this));
      com.estrongs.android.view.a.a locala36 = new com.estrongs.android.view.a.a(2130838222, j.getString(2131428234)).a(new fw(this));
      com.estrongs.android.view.a.a locala37 = new com.estrongs.android.view.a.a(2130838172, j.getString(2131427347)).a(new fx(this));
      com.estrongs.android.view.a.a locala38 = new com.estrongs.android.view.a.a(2130838182, j.getString(2131428025)).a(new gb(this)).a(new ga(this));
      com.estrongs.android.view.a.a locala39 = new com.estrongs.android.view.a.a(2130838196, 2131427393).a(new gc(this));
      com.estrongs.android.view.a.a locala40 = new com.estrongs.android.view.a.a(2130838178, 2131428056).a(new ge(this)).a(new gd(this));
      com.estrongs.android.view.a.a locala41 = new com.estrongs.android.view.a.a(2130837547, j.getString(2131428084)).a(new gh(this)).a(new gf(this));
      com.estrongs.android.view.a.a locala42 = new com.estrongs.android.view.a.a(2130838164, j.getString(2131427373)).a(new gj(this)).a(new gi(this));
      com.estrongs.android.view.a.a locala43 = new com.estrongs.android.view.a.a(2130838163, j.getString(2131427359)).a(new gp(this)).a(new go(this));
      com.estrongs.android.view.a.a locala44 = new com.estrongs.android.view.a.a(2130838172, j.getString(2131427347)).a(new gq(this));
      com.estrongs.android.view.a.a locala45 = new com.estrongs.android.view.a.a(2130838234, b.getString(2131428618)).a(new gs(this)).a(new gr(this));
      com.estrongs.android.view.a.a locala46 = new com.estrongs.android.view.a.a(2130838224, b.getString(2131427380)).a(new gv(this));
      com.estrongs.android.view.a.a locala47 = new com.estrongs.android.view.a.a(2130838150, b.getString(2131428456)).a(new ha(this)).a(new gy(this));
      com.estrongs.android.view.a.a locala48 = new com.estrongs.android.view.a.a(2130838152, b.getString(2131428701)).a(new hc(this));
      com.estrongs.android.view.a.a locala49 = new com.estrongs.android.view.a.a(2130838152, b.getString(2131428596)).a(new he(this)).a(new hd(this));
      com.estrongs.android.view.a.a locala50 = new com.estrongs.android.view.a.a(2130838188, b.getString(2131427388)).a(new hf(this));
      com.estrongs.android.view.a.a locala51 = new com.estrongs.android.view.a.a(2130838157, b.getString(2131428522)).a(new hh(this)).a(new hg(this));
      com.estrongs.android.view.a.a locala52 = new com.estrongs.android.view.a.a(2130838172, b.getString(2131428733)).a(new hj(this)).a(new hi(this));
      com.estrongs.android.view.a.a locala53 = new com.estrongs.android.view.a.a(2130838172, b.getString(2131427378)).a(new ct(this)).a(new hk(this));
      com.estrongs.android.view.a.a locala54 = new com.estrongs.android.view.a.a(2130838176, b.getString(2131428734)).a(new cv(this)).a(new cu(this));
      k.put("pcs_share", locala50);
      k.put("pcs_backup", locala49);
      k.put("pcs_stop_share", locala45);
      k.put("copy", locala1);
      k.put("cut", locala3);
      k.put("add_to_favorite", locala13);
      k.put("playing", locala19);
      k.put("add_to_server_list", locala12);
      k.put("compression", locala8);
      k.put("encrypt", locala9);
      k.put("decrypt", locala10);
      k.put("copy_to", locala2);
      k.put("delete", locala5);
      k.put("edit_server", locala26);
      k.put("extract_to", locala20);
      k.put("hide", locala24);
      k.put("install", locala23);
      k.put("move_to", locala4);
      k.put("open", locala21);
      k.put("open_as", locala17);
      k.put("paste", locala25);
      k.put("play", locala18);
      k.put("play_to", locala16);
      k.put("property", locala14);
      k.put("rename", locala6);
      k.put("send", locala15);
      k.put("set_background", locala22);
      k.put("share", locala7);
      k.put("stop_share", locala45);
      k.put("shortcut", locala11);
      k.put("app_uninstall", locala27);
      k.put("app_backup", locala28);
      k.put("app_share", locala29);
      k.put("app_shortcut", locala30);
      k.put("app_property", locala31);
      k.put("app_check_update", locala32);
      k.put("app_update", locala34);
      k.put("app_auto_check_update", locala33);
      k.put("download_open_folder", locala35);
      k.put("download_delete", locala37);
      k.put("download_do_again", locala36);
      k.put("download_property", locala38);
      k.put("compression_extract", locala39);
      k.put("image_jump_to", locala40);
      k.put("image_comment", locala41);
      k.put("image_edit", locala42);
      k.put("image_download", locala43);
      k.put("image_exit_account", locala44);
      k.put("restore", locala46);
      k.put("associate_app", locala47);
      k.put("save_res_to_my_pcs", locala48);
      k.put("chromecast_play", locala51);
      k.put("adb_app_launch", locala52);
      k.put("adb_app_uninstall", locala53);
      k.put("adb_app_install_to", locala54);
      return;
    }
    throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
  }
  
  protected Map<String, com.estrongs.android.view.a.a> i()
  {
    return k;
  }
  
  protected void k()
  {
    n();
  }
  
  public void l()
  {
    a(j.z(), null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */