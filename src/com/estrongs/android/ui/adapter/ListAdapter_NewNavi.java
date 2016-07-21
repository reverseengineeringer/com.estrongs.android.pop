package com.estrongs.android.ui.adapter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.k.d;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.app.TransitActivity;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.app.unlock.s;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.view.RecommendListView;
import com.estrongs.android.util.l;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class ListAdapter_NewNavi
  extends BaseExpandableListAdapter
{
  public static String a = "www.estrongs.com";
  public static final String c = com.estrongs.android.pop.a.n;
  protected List<ShortcutFormat> b = new LinkedList();
  public int d = 0;
  public int e = 1;
  public int f = 2;
  private FileExplorerActivity g;
  private String[] h;
  private ad i;
  private Drawable j;
  private SharedPreferences k;
  private SharedPreferences.Editor l;
  private com.estrongs.android.j.c m;
  private Map<ListAdapter_NewNavi.GroupType, Integer> n;
  private List<dm> o;
  private Handler p;
  private com.estrongs.android.ui.theme.at q;
  private com.estrongs.android.util.bf r;
  
  public ListAdapter_NewNavi(Context paramContext, Handler paramHandler)
  {
    g = ((FileExplorerActivity)paramContext);
    q = com.estrongs.android.ui.theme.at.a(g);
    p = paramHandler;
    m = com.estrongs.android.j.c.a(g);
    h = g.getResources().getStringArray(2131492871);
    i = ad.a(g);
    k = paramContext.getSharedPreferences("new_navi", 0);
    l = k.edit();
    j = c(2130838008);
    if (q.p()) {
      j = g.a(j, q.l());
    }
    g();
    r = new ac(this);
    com.estrongs.android.util.bc.a(r);
    paramContext = new HashSet();
    paramContext.add("enable_recycle");
    paramContext.add("show_associate_app");
    paramContext.add("su");
    paramContext.add("gesture_setting_enabled");
    paramContext.add("hidden_file");
    paramContext.add("thumbnail");
    paramContext.add("show_pcs_res");
    paramContext = new ao(this, paramContext);
    FexApplication.a().a(paramContext);
    s.a().a(new az(this));
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity)
  {
    if (FexApplication.a().j())
    {
      VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(paramFileExplorerActivity, VerifyPasswordDialog.DialogType.HIDELIST);
      localVerifyPasswordDialog.a(new cw(paramFileExplorerActivity));
      localVerifyPasswordDialog.b();
      return;
    }
    paramFileExplorerActivity.startActivityForResult(new Intent(paramFileExplorerActivity, HideListActivity.class), 4124);
  }
  
  private void a(dm paramdm)
  {
    Object localObject = new a(c(2130838468), e(2131230824), new cu(this));
    c.add(localObject);
    int i1 = 0;
    if (i1 < b.size())
    {
      ShortcutFormat localShortcutFormat = (ShortcutFormat)b.get(i1);
      localObject = targetLocation;
      String str = localShortcutFormat.getAttribute("virtualKey");
      boolean bool = true;
      if (str != null) {
        localObject = b(str, (String)localObject);
      }
      for (;;)
      {
        localObject = new a((Drawable)localObject, shortcutName, targetLocation, new cv(this, localShortcutFormat, str));
        e = bool;
        ((a)localObject).a(targetLocation);
        g = str;
        c.add(localObject);
        i1 += 1;
        break;
        if (com.estrongs.android.util.ap.bl(targetLocation))
        {
          com.estrongs.fs.impl.local.f localf = com.estrongs.fs.impl.local.i.b(targetLocation);
          localObject = com.estrongs.android.h.f.c(localf);
          bool = localf.getFileType().a();
        }
        else if (com.estrongs.android.util.ap.v(targetLocation))
        {
          localObject = com.estrongs.android.ui.theme.at.a(g).a(2130838484);
        }
        else if (com.estrongs.android.util.ap.ci(targetLocation))
        {
          localObject = com.estrongs.android.h.f.a(w.D.c());
        }
        else if (targetLocation.endsWith("/"))
        {
          if ((com.estrongs.android.util.ap.aL(targetLocation)) || (com.estrongs.android.util.ap.aJ(targetLocation))) {
            localObject = com.estrongs.android.h.f.a(w.D.c());
          } else {
            localObject = com.estrongs.android.h.f.a(w.C.c());
          }
        }
        else
        {
          localObject = com.estrongs.android.h.f.a(String.valueOf(com.estrongs.android.util.bg.b(targetLocation)));
        }
      }
    }
  }
  
  private Drawable b(String paramString1, String paramString2)
  {
    Object localObject = null;
    if (paramString1.equals("all")) {
      if (paramString2.contains("baidu")) {
        paramString2 = com.estrongs.android.ui.theme.at.a(g).a(2130838486);
      }
    }
    do
    {
      return paramString2;
      return com.estrongs.android.ui.theme.at.a(g).a(2130838484);
      if (paramString1.equals("apk")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838485);
      }
      if (paramString1.equals("document")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838487);
      }
      if (paramString1.equals("download")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838457);
      }
      if (paramString1.equals("facebook")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838484);
      }
      if (paramString1.equals("image")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838490);
      }
      if (paramString1.equals("music")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838488);
      }
      if (paramString1.equals("news")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838489);
      }
      if (paramString1.equals("video")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838491);
      }
      if (paramString1.equals("weather")) {
        return com.estrongs.android.ui.theme.at.a(g).a(2130838492);
      }
      paramString2 = (String)localObject;
    } while (!paramString1.equals("india"));
    return com.estrongs.android.ui.theme.at.a(g).a(2130838471);
  }
  
  private static void b(Context paramContext)
  {
    v[] arrayOfv = n.b().b(paramContext);
    if ((arrayOfv != null) && (arrayOfv.length > 0))
    {
      RecommendListView localRecommendListView = new RecommendListView(paramContext);
      localRecommendListView.a(arrayOfv);
      localRecommendListView.setDialogStyle(true);
      new com.estrongs.android.ui.dialog.cv(paramContext).a(2131232250).a(localRecommendListView).c();
      return;
    }
    com.estrongs.android.ui.view.ak.a(paramContext, 2131232390, 1);
  }
  
  public static void b(FileExplorerActivity paramFileExplorerActivity)
  {
    com.estrongs.android.ui.theme.at localat = com.estrongs.android.ui.theme.at.a(paramFileExplorerActivity);
    if (!m.g())
    {
      b(paramFileExplorerActivity);
      return;
    }
    new Thread(new cx(paramFileExplorerActivity, localat)).start();
  }
  
  private Drawable c(int paramInt)
  {
    return g.getResources().getDrawable(paramInt);
  }
  
  public static void c(FileExplorerActivity paramFileExplorerActivity)
  {
    paramFileExplorerActivity.f("recycle://");
  }
  
  private Drawable d(int paramInt)
  {
    Drawable localDrawable = c(paramInt);
    if (!q.p()) {
      return localDrawable;
    }
    return g.a(localDrawable, q.l());
  }
  
  private String e(int paramInt)
  {
    return g.getResources().getString(paramInt);
  }
  
  private void e()
  {
    b.clear();
    int i1 = a(ListAdapter_NewNavi.GroupType.Favorite);
    if (i1 != -1)
    {
      b.addAll(com.estrongs.android.pop.utils.dd.a());
      com.estrongs.android.util.bc.a(com.estrongs.android.pop.a.n, false, b);
      dm localdm = (dm)o.get(i1);
      c.clear();
      a(localdm);
      notifyDataSetChanged();
    }
  }
  
  private void f()
  {
    if (com.estrongs.android.pop.app.a.a.a()) {
      return;
    }
    dg localdg = new dg(this);
    b = e(2131231142);
    d = f;
    e = 2130838448;
    localdg.a(new dk(this));
    o.add(localdg);
    n.put(ListAdapter_NewNavi.GroupType.BootCharging, Integer.valueOf(o.size() - 1));
  }
  
  private void g()
  {
    int i1 = 0;
    n = new ConcurrentHashMap();
    o = new CopyOnWriteArrayList();
    Object localObject1 = new dm(this);
    b = e(2131231617);
    d = d;
    e = 2130838603;
    c = new ArrayList();
    o.add(localObject1);
    n.put(ListAdapter_NewNavi.GroupType.Setting, Integer.valueOf(o.size() - 1));
    b.clear();
    b.addAll(com.estrongs.android.pop.utils.dd.a());
    com.estrongs.android.util.bc.a(com.estrongs.android.pop.a.n, false, b);
    localObject1 = new dm(this);
    b = h[0];
    d = e;
    e = 2130838552;
    c = new ArrayList();
    a((dm)localObject1);
    o.add(localObject1);
    n.put(ListAdapter_NewNavi.GroupType.Favorite, Integer.valueOf(o.size() - 1));
    localObject1 = new dm(this);
    b = h[1];
    d = e;
    e = 2130838560;
    c = new ArrayList();
    c.add(new aj(this, null, e(2131231657), new ai(this)));
    Object localObject3 = new a(null, e(2131231656), new ak(this)).a("#home#");
    Object localObject4 = new Intent("com.estrongs.android.SHOW_SDCARD");
    ((Intent)localObject4).setClass(g, TransitActivity.class);
    ((a)localObject3).a((Intent)localObject4);
    ((a)localObject3).a(2130837999);
    c.add(localObject3);
    if (!z.n) {
      c.add(new a(null, e(2131231650), new al(this)).a("/"));
    }
    c.add(new an(this, null, e(2131230847), new am(this)));
    localObject3 = com.estrongs.android.util.ap.a();
    localObject4 = b.b();
    if (((List)localObject3).remove(localObject4)) {
      ((List)localObject3).add(0, localObject4);
    }
    localObject3 = ((List)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject4 = (String)((Iterator)localObject3).next();
      c.add(new a(null, z.b((String)localObject4), new ap(this, (String)localObject4), (String)localObject4));
    }
    o.add(localObject1);
    n.put(ListAdapter_NewNavi.GroupType.LocalSdcard, Integer.valueOf(o.size() - 1));
    localObject1 = new dm(this);
    b = h[2];
    d = e;
    e = 2130838559;
    c = new ArrayList();
    c.add(new a(d(2130838470), e(2131231138), new aq(this), "pic://"));
    c.add(new a(d(2130838466), e(2131231136), new ar(this), "music://"));
    c.add(new a(d(2130838465), e(2131231135), new as(this), "video://"));
    c.add(new a(d(2130838447), e(2131231130), new at(this), "book://"));
    if (z.j)
    {
      localObject3 = new a(d(2130838444), e(2131231129), new au(this));
      localObject4 = new Intent("com.estrongs.android.SHOW_APP_MGR");
      ((Intent)localObject4).setClass(g, TransitActivity.class);
      ((a)localObject3).a((Intent)localObject4);
      ((a)localObject3).a(2130837991);
      c.add(localObject3);
    }
    o.add(localObject1);
    n.put(ListAdapter_NewNavi.GroupType.Library, Integer.valueOf(o.size() - 1));
    localObject1 = new dm(this);
    b = h[3];
    d = e;
    e = 2130838540;
    c = new ArrayList();
    c.add(new a(d(2130838454), e(2131231789), new av(this), "mynetwork://"));
    if (!z.d) {
      c.add(new a(d(2130838464), e(2131231658), new aw(this), "smb://"));
    }
    if (!z.U) {
      c.add(new a(d(2130838451), e(2131231648), new ax(this), "net://"));
    }
    c.add(new a(d(2130838458), e(2131231652), new ay(this), "ftp://"));
    if (com.estrongs.fs.impl.adb.c.b()) {
      c.add(new a(d(2130838483), e(2131231646), new bb(this), "adb://"));
    }
    if (z.e) {
      c.add(new a(d(2130838446), e(2131231649), new bc(this), "bt://"));
    }
    if (!z.ae) {
      c.add(new a(d(2130838473), e(2131231470), new bd(this)));
    }
    if (!z.D) {
      c.add(new a(d(2130838455), e(2131231023), new be(this)));
    }
    o.add(localObject1);
    n.put(ListAdapter_NewNavi.GroupType.Device, Integer.valueOf(o.size() - 1));
    localObject4 = new dm(this);
    b = h[4];
    d = e;
    e = 2130838621;
    c = new ArrayList();
    if (!z.T) {
      c.add(new a(d(2130838453), e(2131230994), new bf(this)));
    }
    if (!z.B) {
      c.add(new a(d(2130838481), e(2131231471), new bg(this)));
    }
    try
    {
      v[] arrayOfv = n.b().c(g);
      if ((arrayOfv != null) && (arrayOfv.length > 0)) {
        while (i1 < arrayOfv.length)
        {
          v localv = arrayOfv[i1];
          Drawable localDrawable = d(2130838476);
          localObject3 = B;
          if (localObject3 != null)
          {
            localObject1 = localObject3;
            if (((String)localObject3).length() != 0) {}
          }
          else
          {
            localObject1 = c;
          }
          c.add(new a(localDrawable, (String)localObject1, new bh(this, localv)));
          i1 += 1;
        }
      }
      if (!"cn".equalsIgnoreCase(com.estrongs.android.pop.esclasses.i.a)) {}
    }
    catch (Throwable localThrowable)
    {
      localObject2 = new a(d(2130838452), e(2131231365), new bi(this));
      localObject3 = new Intent("com.estrongs.android.SHOW_DISK_USAGE");
      ((Intent)localObject3).setClass(g, TransitActivity.class);
      ((a)localObject2).a((Intent)localObject3);
      ((a)localObject2).a(2130837993);
      c.add(localObject2);
      if ("tw".equalsIgnoreCase(com.estrongs.android.pop.esclasses.i.a)) {}
    }
    for (Object localObject2 = "";; localObject2 = " ")
    {
      localObject2 = new a(d(2130838467), e(2131231136) + (String)localObject2 + e(2131232465), new bj(this));
      localObject3 = new Intent("com.estrongs.android.SHOW_MUSIC_PLAYER");
      ((Intent)localObject3).setClass(g, TransitActivity.class);
      ((a)localObject2).a((Intent)localObject3);
      ((a)localObject2).a(2130837997);
      c.add(localObject2);
      if (!z.Z) {
        c.add(new a(d(2130838461), e(2131231654), new bk(this)));
      }
      c.add(new a(d(2130838450), e(2131231573), new bm(this)));
      o.add(localObject4);
      n.put(ListAdapter_NewNavi.GroupType.Toolkit, Integer.valueOf(o.size() - 1));
      if (!z.ag)
      {
        localObject2 = new bn(this);
        b = e(2131232258);
        d = f;
        e = 2130838539;
        ((dm)localObject2).a(new bo(this));
        ((dm)localObject2).a(new bp(this));
        o.add(localObject2);
        n.put(ListAdapter_NewNavi.GroupType.RecycleBin, Integer.valueOf(o.size() - 1));
      }
      if (!z.ap)
      {
        localObject2 = new br(this);
        b = e(2131232348);
        d = f;
        e = 2130838606;
        ((dm)localObject2).a(new bs(this));
        o.add(localObject2);
        n.put(ListAdapter_NewNavi.GroupType.AppAssociate, Integer.valueOf(o.size() - 1));
      }
      if (!z.C)
      {
        localObject2 = new bt(this);
        b = e(2131232092);
        d = f;
        e = 2130838593;
        ((dm)localObject2).a(new bu(this));
        o.add(localObject2);
        n.put(ListAdapter_NewNavi.GroupType.RootExplorer, Integer.valueOf(o.size() - 1));
      }
      if (!z.R)
      {
        localObject2 = new bz(this);
        b = e(2131231547);
        d = f;
        e = 2130838554;
        ((dm)localObject2).a(new ca(this));
        o.add(localObject2);
        n.put(ListAdapter_NewNavi.GroupType.Gesture, Integer.valueOf(o.size() - 1));
      }
      localObject2 = new cc(this);
      b = e(2131232068);
      d = f;
      e = 2130838555;
      ((dm)localObject2).a(new cd(this));
      o.add(localObject2);
      n.put(ListAdapter_NewNavi.GroupType.Hidden, Integer.valueOf(o.size() - 1));
      localObject2 = new ce(this);
      b = e(2131231418);
      d = f;
      e = 2130838620;
      ((dm)localObject2).a(new cf(this));
      o.add(localObject2);
      n.put(ListAdapter_NewNavi.GroupType.Thumbnail, Integer.valueOf(o.size() - 1));
      f();
      a();
      b();
      return;
    }
  }
  
  private Drawable h()
  {
    ColorDrawable localColorDrawable1 = new ColorDrawable(g.getResources().getColor(2131558520));
    ColorDrawable localColorDrawable2 = new ColorDrawable(g.getResources().getColor(2131558483));
    return q.a(localColorDrawable1, localColorDrawable2);
  }
  
  private com.estrongs.android.ui.d.i i()
  {
    return g.au();
  }
  
  private void j()
  {
    boolean bool = false;
    try
    {
      AlertDialog localAlertDialog = new AlertDialog.Builder(g).create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      localAlertDialog.getWindow().setGravity(17);
      localAlertDialog.getWindow().setContentView(2130903140);
      localAlertDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
      localAlertDialog.setOnKeyListener(new dd(this));
      SwitchCompat localSwitchCompat = (SwitchCompat)localAlertDialog.getWindow().findViewById(2131624348);
      if (!com.estrongs.android.pop.app.a.a.b()) {
        bool = true;
      }
      localSwitchCompat.setChecked(bool);
      localSwitchCompat.setVisibility(0);
      TextView localTextView1 = (TextView)localAlertDialog.getWindow().findViewById(2131624309);
      TextView localTextView2 = (TextView)localAlertDialog.getWindow().findViewById(2131624055);
      TextView localTextView3 = (TextView)localAlertDialog.getWindow().findViewById(2131624455);
      localTextView1.setText(e(2131231141));
      localTextView2.setText(e(2131231142));
      localTextView3.setText(e(2131231140));
      localAlertDialog.getWindow().findViewById(2131624536).setOnClickListener(new de(this, localAlertDialog, localSwitchCompat));
      localAlertDialog.setOnDismissListener(new df(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void k()
  {
    com.estrongs.android.ui.dialog.ci localci = new com.estrongs.android.ui.dialog.cv(g).a(e(2131231142)).b(e(2131231214)).b(2131230860, new di(this)).c(2131231273, new dh(this)).b();
    localci.setOnDismissListener(new dj(this));
    localci.show();
  }
  
  public int a(ListAdapter_NewNavi.GroupType paramGroupType)
  {
    if ((n != null) && (n.containsKey(paramGroupType))) {
      return ((Integer)n.get(paramGroupType)).intValue();
    }
    return -1;
  }
  
  public a a(int paramInt1, int paramInt2)
  {
    try
    {
      a locala = (a)o.get(paramInt1)).c.get(paramInt2);
      return locala;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {}
    return null;
  }
  
  public dm a(int paramInt)
  {
    return (dm)o.get(paramInt);
  }
  
  public void a()
  {
    if (n.containsKey(ListAdapter_NewNavi.GroupType.RealTimeMonitor)) {}
    d locald;
    do
    {
      return;
      locald = com.estrongs.android.k.h.a().a("lock_realtimemonitor");
    } while ((locald == null) || (!locald.f()));
    dl localdl = new dl(this);
    b = e(2131231415);
    if (locald.e()) {}
    for (d = d;; d = f)
    {
      e = 2130838518;
      f = "lock_realtimemonitor";
      localdl.a(new ae(this));
      o.add(localdl);
      n.put(ListAdapter_NewNavi.GroupType.RealTimeMonitor, Integer.valueOf(o.size() - 1));
      return;
    }
  }
  
  public void a(String paramString)
  {
    int i1 = a(ListAdapter_NewNavi.GroupType.LocalSdcard);
    if (i1 == -1) {
      return;
    }
    dm localdm = (dm)o.get(i1);
    Iterator localIterator = c.iterator();
    a locala;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      locala = (a)localIterator.next();
    } while (!com.estrongs.android.util.ap.e(locala.b(), paramString));
    for (paramString = locala;; paramString = null)
    {
      c.remove(paramString);
      p.post(new cq(this));
      return;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    int i1 = a(ListAdapter_NewNavi.GroupType.LocalSdcard);
    if (i1 == -1) {
      return;
    }
    dm localdm = (dm)o.get(i1);
    Object localObject = c.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (com.estrongs.android.util.ap.e(((a)((Iterator)localObject).next()).b(), paramString1)) {
        return;
      }
    }
    localObject = paramString2;
    if (paramString2 == null) {
      localObject = z.b(paramString1);
    }
    i1 = 2130838477;
    if ((com.estrongs.android.util.ap.aH(paramString1)) || (com.estrongs.android.util.ap.bL(paramString1))) {
      i1 = 2130838456;
    }
    c.add(new a(c(i1), (String)localObject, new bl(this, paramString1), paramString1));
    p.post(new cb(this));
  }
  
  public int b(int paramInt)
  {
    return g.getResources().getDimensionPixelOffset(paramInt);
  }
  
  public void b()
  {
    if (n.containsKey(ListAdapter_NewNavi.GroupType.NoMedia)) {}
    d locald;
    do
    {
      return;
      localObject = com.estrongs.android.k.h.a().a("lock_realtimemonitor");
      locald = com.estrongs.android.k.h.a().a("lock_nomedia");
    } while ((localObject == null) || (!((d)localObject).f()) || (((d)localObject).e()) || (locald == null) || (!locald.f()));
    Object localObject = new ag(this);
    b = e(2131231413);
    if (locald.e()) {}
    for (d = d;; d = f)
    {
      e = 2130838573;
      f = "lock_nomedia";
      ((dm)localObject).a(new ah(this));
      o.add(localObject);
      n.put(ListAdapter_NewNavi.GroupType.NoMedia, Integer.valueOf(o.size() - 1));
      return;
    }
  }
  
  public void c()
  {
    super.notifyDataSetChanged();
  }
  
  public SharedPreferences d()
  {
    return k;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    l.a("TAG", "getChildView");
    int i2 = a(ListAdapter_NewNavi.GroupType.Favorite);
    int i1;
    if (paramView != null)
    {
      i1 = ((Integer)paramView.getTag()).intValue();
      if (((i1 == i2) && (paramInt1 != i2)) || ((i1 != i2) && (paramInt1 == i2))) {
        paramView = null;
      }
    }
    for (;;)
    {
      paramViewGroup = paramView;
      if (paramView == null) {
        if (paramInt1 != i2) {
          break label150;
        }
      }
      label150:
      for (i1 = 2130903291;; i1 = 2130903303)
      {
        paramViewGroup = k.a(g).inflate(i1, null);
        paramViewGroup.setBackgroundResource(2130838087);
        paramViewGroup.setTag(Integer.valueOf(paramInt1));
        paramViewGroup.setId(paramInt1 * 100 + paramInt2);
        paramViewGroup.setFocusable(true);
        paramView = a(paramInt1, paramInt2);
        if (paramView != null) {
          break;
        }
        return paramViewGroup;
      }
      Object localObject;
      if (paramInt1 == i2)
      {
        localObject = (TextView)paramViewGroup.findViewById(2131625074);
        if (q.p()) {
          ((TextView)localObject).setTextColor(q.l());
        }
        if (com.estrongs.android.pop.esclasses.i.a())
        {
          ((TextView)localObject).setText("‏" + b);
          ((TextView)localObject).setTextColor(g.getResources().getColor(2131558501));
          localObject = (TextView)paramViewGroup.findViewById(2131625075);
          if (q.p()) {
            ((TextView)localObject).setTextColor(q.l());
          }
          ((TextView)localObject).setText(com.estrongs.android.util.ap.cc(c));
          ((ImageView)paramViewGroup.findViewById(2131625073)).setImageDrawable(a);
          localObject = new cg(this, paramView, paramInt1, paramInt2);
          if (paramInt2 != 0) {
            break label393;
          }
          paramViewGroup.setOnLongClickListener(null);
          paramViewGroup.setTag(2130903291, null);
        }
      }
      for (;;)
      {
        if (d == null) {
          break label895;
        }
        paramViewGroup.setOnClickListener(new cl(this, paramInt1, paramInt2, paramView));
        return paramViewGroup;
        ((TextView)localObject).setText(b);
        break;
        label393:
        paramViewGroup.setOnLongClickListener((View.OnLongClickListener)localObject);
        paramViewGroup.setTag(2130903291, localObject);
        continue;
        localObject = (TextView)paramViewGroup.findViewById(2131624537);
        label448:
        label483:
        label569:
        ImageButton localImageButton;
        if (q.p())
        {
          ((TextView)localObject).setTextColor(q.l());
          if (!com.estrongs.android.pop.esclasses.i.a()) {
            break label818;
          }
          ((TextView)localObject).setText("‏" + b);
          ((TextView)localObject).setTextColor(g.getResources().getColor(2131558501));
          ((ImageView)paramViewGroup.findViewById(2131624054)).setImageDrawable(null);
          localObject = (SwitchCompat)paramViewGroup.findViewById(2131624348);
          if (!f) {
            break label831;
          }
          ((SwitchCompat)localObject).setVisibility(0);
          ((SwitchCompat)localObject).setOnCheckedChangeListener(null);
          ((SwitchCompat)localObject).setChecked(paramView.a());
          ((SwitchCompat)localObject).setOnCheckedChangeListener(h);
          localObject = (ImageView)paramViewGroup.findViewById(2131625109);
          ((ImageView)localObject).setImageDrawable(q.b(2130838022, 2131558499));
          localImageButton = (ImageButton)paramViewGroup.findViewById(2131625110);
          String str = i.k("#home_page#");
          if ((!"#home_page#".equals(paramView.b())) && (!"#home#".equals(paramView.b()))) {
            break label841;
          }
          paramBoolean = true;
          label655:
          if ((!paramBoolean) || (!str.equals(paramView.b()))) {
            break label846;
          }
          ((ImageView)localObject).setVisibility(0);
          label678:
          if ((!com.estrongs.android.util.ap.aH(paramView.b())) && (!com.estrongs.android.util.ap.bL(paramView.b()))) {
            break label856;
          }
          localImageButton.setVisibility(0);
          localImageButton.setOnClickListener(new ci(this, paramView));
        }
        for (;;)
        {
          if ((paramInt1 != a(ListAdapter_NewNavi.GroupType.LocalSdcard)) && (paramInt1 != a(ListAdapter_NewNavi.GroupType.Library)) && (paramInt1 != a(ListAdapter_NewNavi.GroupType.Device)) && (paramInt1 != a(ListAdapter_NewNavi.GroupType.Toolkit))) {
            break label866;
          }
          localObject = new cj(this, paramInt1, paramInt2, paramView, paramBoolean);
          paramViewGroup.setOnLongClickListener((View.OnLongClickListener)localObject);
          paramViewGroup.setTag(2130903291, localObject);
          break;
          ((TextView)localObject).setTextColor(q.c(2131558408));
          break label448;
          label818:
          ((TextView)localObject).setText(b);
          break label483;
          label831:
          ((SwitchCompat)localObject).setVisibility(8);
          break label569;
          label841:
          paramBoolean = false;
          break label655;
          label846:
          ((ImageView)localObject).setVisibility(8);
          break label678;
          label856:
          localImageButton.setVisibility(8);
        }
        label866:
        if (paramInt1 == a(ListAdapter_NewNavi.GroupType.Toolkit))
        {
          paramViewGroup.setOnLongClickListener(null);
          paramViewGroup.setTag(2130903291, null);
        }
      }
      label895:
      paramViewGroup.setOnClickListener(new co(this));
      return paramViewGroup;
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    if ((a(paramInt) != null) && (ac != null)) {
      return ac.size();
    }
    return 0;
  }
  
  public int getGroupCount()
  {
    if (o != null) {
      return o.size();
    }
    return 0;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    l.a("TAG", "getGroupView:" + paramInt + ",isExpanded is:" + paramBoolean);
    paramViewGroup = a(paramInt);
    Object localObject;
    label260:
    int i1;
    if ((paramViewGroup != null) && (d == d))
    {
      paramView = k.a(g).inflate(2130903258, null);
      if (q.p())
      {
        paramView.setBackgroundDrawable(h());
        paramView.setFocusable(true);
        ((ImageView)paramView.findViewById(2131624962)).setImageDrawable(c(e));
        localObject = (TextView)paramView.findViewById(2131624537);
        if (q.p()) {
          ((TextView)localObject).setTextColor(q.l());
        }
        if (paramViewGroup != null) {
          ((TextView)localObject).setText(b);
        }
        ((TextView)localObject).setTextColor(g.getResources().getColor(2131558505));
        ((ImageView)paramView.findViewById(2131624544)).setVisibility(4);
        localObject = (TextView)paramView.findViewById(2131624963);
        if (TextUtils.isEmpty(f)) {
          break label308;
        }
        ((TextView)localObject).setVisibility(0);
        paramView.setOnClickListener(s.a().a(g, f, new cp(this), "leftNavi"));
        i1 = b(2131165255);
        if (paramInt != getGroupCount() - 1) {
          break label329;
        }
        paramInt = b(2131165255);
      }
    }
    for (;;)
    {
      paramView.setPadding(0, i1, 0, paramInt);
      return paramView;
      paramView.setBackgroundResource(2130837583);
      break;
      label308:
      ((TextView)localObject).setVisibility(4);
      paramView.setOnClickListener(new cr(this));
      break label260;
      label329:
      paramInt = 0;
      continue;
      if ((paramViewGroup != null) && (d == e))
      {
        paramView = k.a(g).inflate(2130903258, null);
        if (q.p())
        {
          paramView.setBackgroundDrawable(h());
          label384:
          paramView.setFocusable(true);
          localObject = (ImageView)paramView.findViewById(2131624962);
          if (!paramBoolean) {
            break label578;
          }
          i1 = b(2131165255);
          ((ImageView)localObject).setImageDrawable(q.b(e, 2131558487));
        }
        for (;;)
        {
          localObject = (TextView)paramView.findViewById(2131624537);
          if (q.p()) {
            ((TextView)localObject).setTextColor(q.l());
          }
          if (paramViewGroup != null) {
            ((TextView)localObject).setText(b);
          }
          ((TextView)localObject).setTextColor(g.getResources().getColor(2131558505));
          paramViewGroup = (ImageView)paramView.findViewById(2131624544);
          paramViewGroup.setImageDrawable(j);
          if (paramBoolean) {
            paramViewGroup.setRotation(180.0F);
          }
          paramView.setOnClickListener(new cs(this, paramInt));
          if (paramInt != getGroupCount() - 1) {
            break label604;
          }
          paramInt = b(2131165255);
          break;
          paramView.setBackgroundResource(2130837583);
          break label384;
          label578:
          i1 = b(2131165255);
          ((ImageView)localObject).setImageDrawable(c(e));
        }
        label604:
        paramInt = 0;
      }
      else
      {
        if ((paramViewGroup != null) && (d == f))
        {
          paramView = k.a(g).inflate(2130903304, null);
          label659:
          int i2;
          if (q.p())
          {
            paramView.setBackgroundDrawable(h());
            paramView.setFocusable(true);
            i2 = b(2131165255);
            if (paramInt != getGroupCount() - 1) {
              break label878;
            }
            i1 = b(2131165255);
            label692:
            ((ImageView)paramView.findViewById(2131624054)).setImageDrawable(c(e));
            localObject = (TextView)paramView.findViewById(2131624537);
            if (!q.p()) {
              break label884;
            }
            ((TextView)localObject).setTextColor(q.l());
            label748:
            ((TextView)localObject).setTextColor(g.getResources().getColor(2131558505));
            if (!com.estrongs.android.pop.esclasses.i.a()) {
              break label902;
            }
            ((TextView)localObject).setText("‏" + b);
          }
          for (;;)
          {
            localObject = (SwitchCompat)paramView.findViewById(2131624348);
            ((SwitchCompat)localObject).setVisibility(0);
            ((SwitchCompat)localObject).setOnCheckedChangeListener(null);
            ((SwitchCompat)localObject).setChecked(paramViewGroup.a());
            ((SwitchCompat)localObject).setOnCheckedChangeListener(g);
            paramView.setOnClickListener(new ct(this, paramInt));
            paramInt = i1;
            i1 = i2;
            break;
            paramView.setBackgroundResource(2130837583);
            break label659;
            label878:
            i1 = 0;
            break label692;
            label884:
            ((TextView)localObject).setTextColor(q.c(2131558408));
            break label748;
            label902:
            ((TextView)localObject).setText(b);
          }
        }
        paramInt = 0;
        i1 = 0;
      }
    }
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void onGroupCollapsed(int paramInt)
  {
    l.putBoolean("group" + paramInt, false);
    l.commit();
  }
  
  public void onGroupExpanded(int paramInt)
  {
    l.putBoolean("group" + paramInt, true);
    l.commit();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ListAdapter_NewNavi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */