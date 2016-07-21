package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.a.l;
import com.estrongs.android.pop.multicopy.MultiThreadCopy;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.f;
import com.estrongs.android.ui.b.u;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.b.w;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.z;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class cr
  extends c
{
  private List<h> A;
  private FileExplorerActivity c;
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
  
  public cr(FileExplorerActivity paramFileExplorerActivity)
  {
    c = paramFileExplorerActivity;
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean, List<String> paramList)
  {
    a(paramFileExplorerActivity, paramBoolean, paramList, false);
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean1, List<String> paramList, boolean paramBoolean2)
  {
    paramList = new w(d.a(paramFileExplorerActivity), 0, paramList, true);
    paramFileExplorerActivity.B();
    paramList.addTaskStatusChangeListener(new df(paramFileExplorerActivity, ProgressDialog.a(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131231748), paramFileExplorerActivity.getString(2131231781), true, true, new dd(paramList, paramFileExplorerActivity)), paramList, paramBoolean1, paramBoolean2));
    paramList.execute();
  }
  
  public static void a(List<h> paramList)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (localFileExplorerActivity == null) {
      return;
    }
    Iterator localIterator = paramList.iterator();
    boolean bool = false;
    h localh;
    Object localObject2;
    Object localObject1;
    if (localIterator.hasNext())
    {
      localh = (h)localIterator.next();
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
        i.a(localFileExplorerActivity, paramList, null);
        i.a(localFileExplorerActivity, MultiThreadCopy.a(paramList).getPath(), null);
        if ((localFileExplorerActivity.O() instanceof u))
        {
          paramList = ((u)localFileExplorerActivity.O()).a((com.estrongs.a.a)localObject1);
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
      if ((localObject2 instanceof ar))
      {
        localObject1 = com.estrongs.android.pop.ad.a(localFileExplorerActivity).af();
        bool = bk.a((CharSequence)localObject1);
        if ((!bool) && ((localFileExplorerActivity.O() instanceof u)))
        {
          paramList = ((u)localFileExplorerActivity.O()).a((com.estrongs.a.a)localObject2);
          if (paramList != null)
          {
            localObject1 = new ar(d.a(), (String)localObject1, ((com.estrongs.a.a)localObject2).summary().optString("source"), ((com.estrongs.a.a)localObject2).summary().optString("title"));
            ((ar)localObject1).reset();
            ((ar)localObject1).execute();
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
        ak.a(localFileExplorerActivity, 2131231957, 1);
        return;
      }
    }
  }
  
  private void a(List<h> paramList, boolean paramBoolean)
  {
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.estrongs.a.a locala = b((h)paramList.next());
      if (locala != null)
      {
        if ((locala instanceof ar)) {
          b = true;
        }
        locala.requestStop();
        Object localObject;
        if (paramBoolean)
        {
          localObject = locala.summary().optString("target");
          if (!(locala instanceof ar)) {
            break label125;
          }
          localLinkedList2.add(new z((String)localObject, true));
        }
        for (;;)
        {
          l.a().c(locala);
          break;
          label125:
          localLinkedList1.add(new z((String)localObject, true));
          localObject = MultiThreadCopy.a((String)localObject);
          if (((File)localObject).exists()) {
            localLinkedList1.add(new z(((File)localObject).getPath(), true));
          }
        }
      }
    }
    c.B();
    paramList = c.O();
    if (paramList != null) {
      paramList.g();
    }
    if ((localLinkedList1.size() > 0) || (localLinkedList2.size() > 0)) {
      new dh(this, "Del Downloads", localLinkedList1, localLinkedList2).start();
    }
  }
  
  private static com.estrongs.a.a b(h paramh)
  {
    paramh = paramh.getExtra("task");
    if ((paramh instanceof com.estrongs.a.a)) {
      return (com.estrongs.a.a)paramh;
    }
    return null;
  }
  
  private String f()
  {
    return c.P();
  }
  
  public String[] a(cp paramcp)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString;
    if (E) {
      arrayOfString = r;
    }
    for (;;)
    {
      int i2 = arrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        String str = arrayOfString[i1];
        if (((com.estrongs.android.view.a.a)a.get(str)).a(paramcp)) {
          localArrayList.add(str);
        }
        i1 += 1;
      }
      if (F) {
        arrayOfString = s;
      } else if (w) {
        arrayOfString = p;
      } else if (e) {
        arrayOfString = d;
      } else if (C) {
        arrayOfString = h;
      } else if ((B) || (n)) {
        arrayOfString = i;
      } else if (m) {
        arrayOfString = g;
      } else if ((h) || (A)) {
        arrayOfString = f;
      } else if ((i) || (j) || (k)) {
        arrayOfString = o;
      } else if (o) {
        arrayOfString = j;
      } else if ((f) || (g) || (y)) {
        arrayOfString = e;
      } else if (x) {
        arrayOfString = l;
      } else if (p) {
        arrayOfString = k;
      } else if (v) {
        arrayOfString = n;
      } else if ((r) || (q)) {
        arrayOfString = m;
      } else if (z) {
        arrayOfString = q;
      } else if (G) {
        arrayOfString = t;
      } else if (H) {
        arrayOfString = d;
      } else if (I) {
        arrayOfString = u;
      } else if (J) {
        arrayOfString = v;
      } else if (K) {
        arrayOfString = w;
      } else if (l) {
        arrayOfString = x;
      } else if (L) {
        arrayOfString = y;
      } else if (M) {
        arrayOfString = z;
      } else {
        arrayOfString = d;
      }
    }
    return (String[])localArrayList.toArray(new String[0]);
  }
  
  public String[] a(String paramString, List<h> paramList)
  {
    A = paramList;
    Object localObject = c().values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((MenuItem)((Iterator)localObject).next()).setEnabled(true);
    }
    cp localcp = new cp(paramString, A);
    localObject = a(localcp);
    if (N == 0) {
      a((String[])localObject);
    }
    for (;;)
    {
      b = ((String[])localObject);
      return (String[])localObject;
      if (N != 1) {
        break;
      }
      if ((P) && ((aj) || (ai)))
      {
        a((String[])localObject);
        a(true, new String[] { "delete" });
      }
      if ((paramList != null) && (paramList.size() > 0))
      {
        paramList = (h)paramList.get(0);
        if (ap.x(paramList.getAbsolutePath()))
        {
          a(new String[] { "delete" });
          a(new String[] { "rename" });
          a(new String[] { "edit_server" });
        }
        else if (ap.w(paramList.getAbsolutePath()))
        {
          a(new String[] { "rename" });
          a(new String[] { "edit_server" });
        }
        else if ((bk.b(paramList.getExtra("item_is_scanned_server"))) || (bk.b((String)paramList.getExtra("device_name"))) || (ap.w(paramString)))
        {
          a(new String[] { "rename" });
        }
      }
    }
    if (O) {
      if ((n) || (i) || (j) || (k) || (D)) {
        a(new String[] { "rename" });
      }
    }
    for (;;)
    {
      if ((N > 1) && (E))
      {
        a(new String[] { "rename" });
        a(new String[] { "adb_app_launch" });
      }
      if (!ap.w(paramString)) {
        break;
      }
      a(new String[] { "rename" });
      break;
      if (q)
      {
        a(new String[] { "image_jump_to" });
        continue;
        if (Y)
        {
          if (q)
          {
            a(new String[] { "image_jump_to" });
          }
          else if ((aj) || (ai))
          {
            a((String[])localObject);
            a(true, new String[] { "delete" });
          }
          else if (ap.bh(paramString))
          {
            a(new String[] { "rename" });
          }
        }
        else if (Z)
        {
          a(new String[] { "edit_server", "property" });
          if (N >= 1) {
            a(new String[] { "adb_app_launch" });
          }
        }
      }
    }
  }
  
  public void d()
  {
    d = new String[] { "copy", "cut", "delete", "rename", "web_search", "copy_to", "move_to", "property", "open", "extract_to", "compression", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    e = new String[] { "copy", "cut", "delete", "rename", "web_search", "copy_to", "move_to", "edit_server", "property", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "shortcut", "add_to_server_list", "chromecast_play", "hide", "stop_share" };
    f = new String[] { "copy", "cut", "delete", "rename", "web_search", "copy_to", "move_to", "property", "send", "add_to_favorite", "play", "playing", "chromecast_play", "open_as", "share", "pcs_stop_share" };
    o = new String[] { "copy", "cut", "delete", "rename", "web_search", "copy_to", "move_to", "property", "pcs_backup", "send", "add_to_favorite", "open_as", "play", "playing", "share", "play_to", "chromecast_play", "shortcut" };
    g = new String[] { "app_lock", "app_unlock", "app_uninstall", "app_backup", "app_property", "app_share", "web_search", "send", "app_shortcut", "adb_app_install_to", "app_check_update" };
    h = new String[] { "app_auto_check_update", "app_update", "web_search" };
    i = new String[] { "copy", "cut", "delete", "copy_to", "move_to", "app_property", "property", "web_search", "pcs_backup", "send", "add_to_favorite", "open", "extract_to", "open_as", "install", "share", "shortcut" };
    j = new String[] { "download_open_folder", "download_delete", "download_do_again", "download_property", "web_search" };
    k = new String[] { "compression_extract", "web_search" };
    l = new String[] { "delete", "web_search" };
    m = new String[] { "copy_to", "image_jump_to", "delete", "rename", "move_to", "image_comment", "image_edit", "image_download", "share", "property", "send", "add_to_favorite", "chromecast_play", "open_as", "web_search" };
    n = new String[] { "image_exit_account", "web_search" };
    p = new String[] { "delete", "restore", "property", "web_search" };
    q = new String[] { "save_res_to_my_pcs", "web_search" };
    r = new String[] { "adb_app_uninstall", "copy", "copy_to", "send", "property", "web_search" };
    s = new String[] { "copy", "rename", "copy_to", "property", "web_search" };
    t = new String[] { "app_uninstall", "property", "web_search" };
    u = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "web_search", "property", "open", "extract_to", "compression", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    v = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "web_search", "property", "open", "extract_to", "compression", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    w = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "web_search", "property", "open", "extract_to", "compression", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    x = new String[] { "copy", "cut", "delete", "rename", "copy_to", "move_to", "web_search", "property", "open", "extract_to", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide" };
    y = new String[] { "extract_to", "copy", "cut", "delete", "rename", "copy_to", "move_to", "property", "web_search", "open", "associate_app", "encrypt", "decrypt", "pcs_backup", "send", "add_to_favorite", "play", "playing", "open_as", "install", "share", "play_to", "adb_app_install_to", "chromecast_play", "shortcut", "hide", "open_file" };
    z = new String[] { "compression_extract", "web_search" };
  }
  
  public void e()
  {
    a = new HashMap();
    com.estrongs.android.view.a.a locala1 = new com.estrongs.android.view.a.a(2130838536, c.getString(2131230838)).a(new dv(this)).a(new cs(this));
    com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838536, c.getString(2131230840)).a(new er(this)).a(new eg(this));
    com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838537, c.getString(2131230842)).a(new fs(this)).a(new fg(this));
    com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838569, c.getString(2131230866)).a(new gu(this)).a(new gd(this));
    com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838539, c.getString(2131230845)).a(new ct(this)).a(new hl(this));
    com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838590, c.getString(2131230881)).a(new dj(this)).a(new di(this));
    com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838604, c.getString(2131230892)).a(new dl(this)).a(new dk(this));
    com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838535, c.getString(2131230836)).a(new dn(this)).a(new dm(this));
    com.estrongs.android.view.a.a locala9 = new com.estrongs.android.view.a.a(2130838546, c.getString(2131230850)).a(new dp(this)).a(new do(this));
    com.estrongs.android.view.a.a locala10 = new com.estrongs.android.view.a.a(2130838538, c.getString(2131230843)).a(new dw(this)).a(new du(this));
    com.estrongs.android.view.a.a locala11 = new com.estrongs.android.view.a.a(2130838605, c.getString(2131231711)).a(new dy(this)).a(new dx(this));
    com.estrongs.android.view.a.a locala12 = new com.estrongs.android.view.a.a(2130838580, c.getString(2131231697)).a(new ea(this)).a(new dz(this));
    com.estrongs.android.view.a.a locala13 = new com.estrongs.android.view.a.a(2130838552, c.getString(2131231280)).a(new ec(this)).a(new eb(this));
    com.estrongs.android.view.a.a locala14 = new com.estrongs.android.view.a.a(2130838586, c.getString(2131231278)).a(new ee(this)).a(new ed(this));
    com.estrongs.android.view.a.a locala15 = new com.estrongs.android.view.a.a(2130838601, c.getString(2131230890)).a(new eh(this)).a(new ef(this));
    com.estrongs.android.view.a.a locala16 = new com.estrongs.android.view.a.a(2130838581, c.getString(2131230875)).a(new ej(this)).a(new ei(this));
    com.estrongs.android.view.a.a locala17 = new com.estrongs.android.view.a.a(2130838574, c.getString(2131230870)).a(new el(this)).a(new ek(this));
    com.estrongs.android.view.a.a locala18 = new com.estrongs.android.view.a.a(2130838578, c.getString(2131230874)).a(new en(this)).a(new em(this));
    com.estrongs.android.view.a.a locala19 = new com.estrongs.android.view.a.a(2130838580, c.getString(2131231696)).a(new ep(this)).a(new eo(this));
    com.estrongs.android.view.a.a locala20 = new com.estrongs.android.view.a.a(2130838551, c.getString(2131230853)).a(new et(this)).a(new eq(this));
    com.estrongs.android.view.a.a locala21 = new com.estrongs.android.view.a.a(2130838574, c.getString(2131230868)).a(new ev(this)).a(new eu(this));
    com.estrongs.android.view.a.a locala22 = new com.estrongs.android.view.a.a(2130838602, c.getString(2131231710)).a(new ew(this));
    com.estrongs.android.view.a.a locala23 = new com.estrongs.android.view.a.a(2130838558, c.getString(2131231096)).a(new ez(this)).a(new ey(this));
    com.estrongs.android.view.a.a locala24 = new com.estrongs.android.view.a.a(2130838555, c.getString(2131230857)).a(new fd(this)).a(new fc(this));
    com.estrongs.android.view.a.a locala25 = new com.estrongs.android.view.a.a(2130838543, c.getString(2131230871)).a(new fe(this));
    com.estrongs.android.view.a.a locala26 = new com.estrongs.android.view.a.a(2130838543, c.getString(2131231404)).a(new fh(this)).a(new ff(this));
    com.estrongs.android.view.a.a locala27 = new com.estrongs.android.view.a.a(2130838539, 2131230898).a(new fk(this)).a(new fj(this));
    com.estrongs.android.view.a.a locala28 = new com.estrongs.android.view.a.a(2130838521, c.getString(2131230828)).a(new fm(this)).a(new fl(this));
    com.estrongs.android.view.a.a locala29 = new com.estrongs.android.view.a.a(2130838604, c.getString(2131230892)).a(new fo(this)).a(new fn(this));
    com.estrongs.android.view.a.a locala30 = new com.estrongs.android.view.a.a(2130838605, c.getString(2131231711)).a(new fq(this)).a(new fp(this));
    com.estrongs.android.view.a.a locala31 = new com.estrongs.android.view.a.a(2130838586, c.getString(2131231278)).a(new ft(this)).a(new fr(this));
    com.estrongs.android.view.a.a locala32 = new com.estrongs.android.view.a.a(2130838624, c.getString(2131230993)).a(new fv(this)).a(new fu(this));
    com.estrongs.android.view.a.a locala33 = new com.estrongs.android.view.a.a(2130838624, c.getString(2131230987)).a(new fx(this)).a(new fw(this));
    com.estrongs.android.view.a.a locala34 = new com.estrongs.android.view.a.a(2130838624, c.getString(2131231941)).a(new fz(this)).a(new fy(this));
    com.estrongs.android.view.a.a locala35 = new com.estrongs.android.view.a.a(2130838574, c.getString(2131231887)).a(new gb(this)).a(new ga(this));
    com.estrongs.android.view.a.a locala36 = new com.estrongs.android.view.a.a(2130838542, c.getString(2131230879)).a(new gc(this));
    com.estrongs.android.view.a.a locala37 = new com.estrongs.android.view.a.a(2130838539, c.getString(2131230845)).a(new ge(this));
    com.estrongs.android.view.a.a locala38 = new com.estrongs.android.view.a.a(2130838586, c.getString(2131231278)).a(new gi(this)).a(new gh(this));
    com.estrongs.android.view.a.a locala39 = new com.estrongs.android.view.a.a(2130838551, 2131230852).a(new gj(this));
    com.estrongs.android.view.a.a locala40 = new com.estrongs.android.view.a.a(2130838574, 2131231277).a(new gl(this)).a(new gk(this));
    com.estrongs.android.view.a.a locala41 = new com.estrongs.android.view.a.a(2130837656, c.getString(2131231698)).a(new gn(this)).a(new gm(this));
    com.estrongs.android.view.a.a locala42 = new com.estrongs.android.view.a.a(2130838543, c.getString(2131230848)).a(new gp(this)).a(new go(this));
    com.estrongs.android.view.a.a locala43 = new com.estrongs.android.view.a.a(2130838542, c.getString(2131230847)).a(new gx(this)).a(new gw(this));
    com.estrongs.android.view.a.a locala44 = new com.estrongs.android.view.a.a(2130838539, c.getString(2131230845)).a(new gy(this));
    com.estrongs.android.view.a.a locala45 = new com.estrongs.android.view.a.a(2130838525, c.getString(2131230830)).a(new ha(this)).a(new gz(this));
    com.estrongs.android.view.a.a locala46 = new com.estrongs.android.view.a.a(2130838591, c.getString(2131230882)).a(new hd(this));
    com.estrongs.android.view.a.a locala47 = new com.estrongs.android.view.a.a(2130838589, c.getString(2131230826)).a(new hh(this)).a(new hg(this));
    com.estrongs.android.view.a.a locala48 = new com.estrongs.android.view.a.a(2130838522, c.getString(2131231058)).a(new hj(this));
    com.estrongs.android.view.a.a locala53 = new com.estrongs.android.view.a.a(2130838522, c.getString(2131231410)).a(new hm(this)).a(new hk(this));
    com.estrongs.android.view.a.a locala54 = new com.estrongs.android.view.a.a(2130838604, c.getString(2131230892)).a(new hn(this));
    com.estrongs.android.view.a.a locala49 = new com.estrongs.android.view.a.a(2130838530, c.getString(2131231157)).a(new hp(this)).a(new ho(this));
    com.estrongs.android.view.a.a locala50 = new com.estrongs.android.view.a.a(2130838539, c.getString(2131230861)).a(new hr(this)).a(new hq(this));
    com.estrongs.android.view.a.a locala51 = new com.estrongs.android.view.a.a(2130838539, c.getString(2131230898)).a(new ht(this)).a(new hs(this));
    com.estrongs.android.view.a.a locala52 = new com.estrongs.android.view.a.a(2130838558, c.getString(2131230858)).a(new hv(this)).a(new hu(this));
    a.put("pcs_share", locala54);
    a.put("pcs_backup", locala53);
    a.put("pcs_stop_share", locala45);
    locala53 = new com.estrongs.android.view.a.a(2130838561, 2131230862).a(new cx(this)).a(new cw(this));
    locala54 = new com.estrongs.android.view.a.a(2130838640, 2131230899).a(new cz(this)).a(new cy(this));
    com.estrongs.android.view.a.a locala55 = new com.estrongs.android.view.a.a(2130838638, 2131232559).a(new da(this));
    com.estrongs.android.view.a.a locala56 = new com.estrongs.android.view.a.a(2130838574, 2131231277).a(new dc(this)).a(new db(this));
    a.put("copy", locala1);
    a.put("cut", locala3);
    a.put("add_to_favorite", locala13);
    a.put("playing", locala19);
    a.put("add_to_server_list", locala12);
    a.put("compression", locala8);
    a.put("encrypt", locala9);
    a.put("decrypt", locala10);
    a.put("copy_to", locala2);
    a.put("delete", locala5);
    a.put("edit_server", locala26);
    a.put("extract_to", locala20);
    a.put("hide", locala24);
    a.put("install", locala23);
    a.put("move_to", locala4);
    a.put("open", locala21);
    a.put("open_as", locala17);
    a.put("paste", locala25);
    a.put("play", locala18);
    a.put("play_to", locala16);
    a.put("property", locala14);
    a.put("rename", locala6);
    a.put("send", locala15);
    a.put("set_background", locala22);
    a.put("share", locala7);
    a.put("stop_share", locala45);
    a.put("shortcut", locala11);
    a.put("app_uninstall", locala27);
    a.put("app_backup", locala28);
    a.put("app_share", locala29);
    a.put("app_shortcut", locala30);
    a.put("app_property", locala31);
    a.put("app_check_update", locala32);
    a.put("app_update", locala34);
    a.put("app_auto_check_update", locala33);
    a.put("app_lock", locala53);
    a.put("app_unlock", locala54);
    a.put("download_open_folder", locala35);
    a.put("download_delete", locala37);
    a.put("download_do_again", locala36);
    a.put("download_property", locala38);
    a.put("compression_extract", locala39);
    a.put("image_jump_to", locala40);
    a.put("image_comment", locala41);
    a.put("image_edit", locala42);
    a.put("image_download", locala43);
    a.put("image_exit_account", locala44);
    a.put("restore", locala46);
    a.put("associate_app", locala47);
    a.put("save_res_to_my_pcs", locala48);
    a.put("chromecast_play", locala49);
    a.put("adb_app_launch", locala50);
    a.put("adb_app_uninstall", locala51);
    a.put("adb_app_install_to", locala52);
    a.put("web_search", locala55);
    a.put("open_file", locala56);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */