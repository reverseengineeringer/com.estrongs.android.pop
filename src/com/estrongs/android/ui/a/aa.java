package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.app.TransitActivity;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.view.RecommendListView;
import com.estrongs.android.ui.view.SimpleSwitchButton;
import com.estrongs.android.util.bc;
import com.estrongs.fs.impl.adb.c;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class aa
  extends BaseExpandableListAdapter
{
  public static String a = "www.estrongs.com";
  public static final String c = com.estrongs.android.pop.a.k;
  protected List<ShortcutFormat> b = new LinkedList();
  private FileExplorerActivity d;
  private String[] e;
  private com.estrongs.android.pop.ad f;
  private Drawable g;
  private Drawable h;
  private SharedPreferences i;
  private SharedPreferences.Editor j;
  private com.estrongs.android.util.a k = com.estrongs.android.util.a.a();
  private ArrayList<cw> l;
  private Handler m;
  private com.estrongs.android.ui.theme.al n;
  private com.estrongs.android.util.bb o;
  
  public aa(Context paramContext, Handler paramHandler)
  {
    d = ((FileExplorerActivity)paramContext);
    n = com.estrongs.android.ui.theme.al.a(d);
    m = paramHandler;
    e = d.getResources().getStringArray(2131165188);
    f = com.estrongs.android.pop.ad.a(d);
    i = paramContext.getSharedPreferences("new_navi", 0);
    j = i.edit();
    h = b(2130837511);
    g = b(2130837512);
    d();
    o = new ab(this);
    com.estrongs.android.util.ay.a(o);
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
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity)
  {
    if (FexApplication.a().j())
    {
      VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(paramFileExplorerActivity, VerifyPasswordDialog.DialogType.HIDELIST);
      localVerifyPasswordDialog.a(new ck(paramFileExplorerActivity));
      localVerifyPasswordDialog.b();
      return;
    }
    paramFileExplorerActivity.startActivityForResult(new Intent(paramFileExplorerActivity, HideListActivity.class), 268439580);
  }
  
  private void a(cw paramcw)
  {
    Object localObject = new a(b(2130838090), c(2131428438), new ci(this));
    b.add(localObject);
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
        localObject = new a((Drawable)localObject, shortcutName, targetLocation, new cj(this, localShortcutFormat, str));
        e = bool;
        ((a)localObject).a(targetLocation);
        g = str;
        b.add(localObject);
        i1 += 1;
        break;
        if (com.estrongs.android.util.am.ba(targetLocation))
        {
          com.estrongs.fs.impl.local.f localf = com.estrongs.fs.impl.local.h.b(targetLocation);
          localObject = com.estrongs.android.d.f.d(localf);
          bool = localf.getFileType().a();
        }
        else if (com.estrongs.android.util.am.t(targetLocation))
        {
          localObject = com.estrongs.android.ui.theme.al.a(d).a(2130838105);
        }
        else if (com.estrongs.android.util.am.bQ(targetLocation))
        {
          localObject = com.estrongs.android.d.f.a(m.E.c());
        }
        else if (targetLocation.endsWith("/"))
        {
          if ((com.estrongs.android.util.am.aB(targetLocation)) || (com.estrongs.android.util.am.az(targetLocation))) {
            localObject = com.estrongs.android.d.f.a(m.E.c());
          } else {
            localObject = com.estrongs.android.d.f.a(m.D.c());
          }
        }
        else
        {
          localObject = com.estrongs.android.d.f.a(String.valueOf(bc.b(targetLocation)));
        }
      }
    }
  }
  
  private Drawable b(int paramInt)
  {
    return d.getResources().getDrawable(paramInt);
  }
  
  private Drawable b(String paramString1, String paramString2)
  {
    Object localObject = null;
    if (paramString1.equals("all")) {
      if (paramString2.contains("baidu")) {
        paramString2 = com.estrongs.android.ui.theme.al.a(d).a(2130838107);
      }
    }
    do
    {
      return paramString2;
      return com.estrongs.android.ui.theme.al.a(d).a(2130838105);
      if (paramString1.equals("apk")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838106);
      }
      if (paramString1.equals("document")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838108);
      }
      if (paramString1.equals("download")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838079);
      }
      if (paramString1.equals("facebook")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838105);
      }
      if (paramString1.equals("image")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838111);
      }
      if (paramString1.equals("music")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838109);
      }
      if (paramString1.equals("news")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838110);
      }
      if (paramString1.equals("video")) {
        return com.estrongs.android.ui.theme.al.a(d).a(2130838112);
      }
      paramString2 = (String)localObject;
    } while (!paramString1.equals("weather"));
    return com.estrongs.android.ui.theme.al.a(d).a(2130838113);
  }
  
  private static void b(Context paramContext)
  {
    v[] arrayOfv = n.b().b(paramContext);
    if ((arrayOfv != null) && (arrayOfv.length > 0))
    {
      RecommendListView localRecommendListView = new RecommendListView(paramContext);
      localRecommendListView.a(arrayOfv);
      localRecommendListView.a(true);
      new com.estrongs.android.ui.dialog.ct(paramContext).a(2131427606).a(localRecommendListView).c();
      return;
    }
    com.estrongs.android.ui.view.ag.a(paramContext, 2131427812, 1);
  }
  
  public static void b(FileExplorerActivity paramFileExplorerActivity)
  {
    com.estrongs.android.ui.theme.al localal = com.estrongs.android.ui.theme.al.a(paramFileExplorerActivity);
    if (!l.g())
    {
      b(paramFileExplorerActivity);
      return;
    }
    new Thread(new cl(paramFileExplorerActivity, localal)).start();
  }
  
  private String c(int paramInt)
  {
    return d.getResources().getString(paramInt);
  }
  
  private void c()
  {
    b.clear();
    b.addAll(com.estrongs.android.pop.utils.cu.a());
    com.estrongs.android.util.ay.a(com.estrongs.android.pop.a.k, false, b);
    cw localcw = (cw)l.get(0);
    b.clear();
    a(localcw);
    notifyDataSetChanged();
  }
  
  public static void c(FileExplorerActivity paramFileExplorerActivity)
  {
    com.estrongs.android.pop.ad localad = com.estrongs.android.pop.ad.a(paramFileExplorerActivity);
    if (localad.aD())
    {
      paramFileExplorerActivity.d("recycle://");
      return;
    }
    new com.estrongs.android.ui.dialog.ct(paramFileExplorerActivity).a(2131428402).b(2131428423).c(2131427340, null).b(2131427339, new cr(localad, paramFileExplorerActivity)).c();
  }
  
  private void d()
  {
    int i1 = 0;
    l = new ArrayList();
    b.clear();
    b.addAll(com.estrongs.android.pop.utils.cu.a());
    com.estrongs.android.util.ay.a(com.estrongs.android.pop.a.k, false, b);
    Object localObject1 = new cw(this);
    a = e[0];
    b = new ArrayList();
    a((cw)localObject1);
    l.add(localObject1);
    localObject1 = new cw(this);
    a = e[1];
    b = new ArrayList();
    b.add(new ct(this, b(2130838085), c(2131428432), new cs(this)));
    Object localObject3 = new a(b(2130838084), c(2131427408), new cu(this)).a("#home#");
    Object localObject4 = new Intent("com.estrongs.android.SHOW_SDCARD");
    ((Intent)localObject4).setClass(d, TransitActivity.class);
    ((a)localObject3).a((Intent)localObject4);
    ((a)localObject3).a(2130837733);
    b.add(localObject3);
    if (!z.n) {
      b.add(new a(b(2130838091), c(2131428245), new cv(this)).a("/"));
    }
    b.add(new an(this, b(2130838075), c(2131427359), new ad(this)));
    localObject3 = com.estrongs.android.util.am.a();
    localObject4 = b.b();
    if (((List)localObject3).remove(localObject4)) {
      ((List)localObject3).add(0, localObject4);
    }
    localObject3 = ((List)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject4 = (String)((Iterator)localObject3).next();
      b.add(new a(b(2130838098), z.b((String)localObject4), new ae(this, (String)localObject4), (String)localObject4));
    }
    l.add(localObject1);
    localObject1 = new cw(this);
    a = e[2];
    b = new ArrayList();
    b.add(new a(b(2130838092), c(2131427421), new af(this), "gallery://local/buckets/"));
    b.add(new a(b(2130838088), c(2131427422), new ag(this), "music://"));
    b.add(new a(b(2130838087), c(2131427425), new ah(this), "video://"));
    b.add(new a(b(2130838071), c(2131427424), new ai(this), "book://"));
    if (z.j)
    {
      localObject3 = new a(b(2130838068), c(2131427423), new aj(this));
      localObject4 = new Intent("com.estrongs.android.SHOW_APP_MGR");
      ((Intent)localObject4).setClass(d, TransitActivity.class);
      ((a)localObject3).a((Intent)localObject4);
      ((a)localObject3).a(2130837725);
      b.add(localObject3);
    }
    l.add(localObject1);
    localObject1 = new cw(this);
    a = e[3];
    b = new ArrayList();
    b.add(new a(b(2130838076), c(2131428505), new ak(this), "mynetwork://"));
    if (!z.d) {
      b.add(new a(b(2130838086), c(2131427410), new al(this), "smb://"));
    }
    if (!z.U) {
      b.add(new a(b(2130838073), c(2131427412), new am(this), "net://"));
    }
    b.add(new a(b(2130838080), c(2131427411), new ap(this), "ftp://"));
    if (c.b()) {
      b.add(new a(b(2130838104), c(2131428722), new aq(this), "adb://"));
    }
    if (z.e) {
      b.add(new a(b(2130838070), c(2131427413), new ar(this), "bt://"));
    }
    if (!z.ae) {
      b.add(new a(b(2130838094), c(2131428114), new as(this)));
    }
    if (!z.D) {
      b.add(new a(b(2130838077), c(2131427495), new at(this)));
    }
    l.add(localObject1);
    localObject4 = new cw(this);
    a = e[4];
    b = new ArrayList();
    if (!z.T) {
      b.add(new a(b(2130838075), c(2131428223), new au(this)));
    }
    if (!z.B) {
      b.add(new a(b(2130838102), c(2131428037), new av(this)));
    }
    try
    {
      v[] arrayOfv = n.b().c(d);
      if ((arrayOfv != null) && (arrayOfv.length > 0)) {
        while (i1 < arrayOfv.length)
        {
          v localv = arrayOfv[i1];
          Drawable localDrawable = b(2130838097);
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
          b.add(new a(localDrawable, (String)localObject1, new aw(this, localv)));
          i1 += 1;
        }
      }
      if (!"cn".equalsIgnoreCase(e.a)) {}
    }
    catch (Throwable localThrowable)
    {
      localObject2 = new a(b(2130838074), c(2131427638), new ax(this));
      localObject3 = new Intent("com.estrongs.android.SHOW_DISK_USAGE");
      ((Intent)localObject3).setClass(d, TransitActivity.class);
      ((a)localObject2).a((Intent)localObject3);
      ((a)localObject2).a(2130837727);
      b.add(localObject2);
      if ("tw".equalsIgnoreCase(e.a)) {}
    }
    for (Object localObject2 = "";; localObject2 = " ")
    {
      localObject2 = new a(b(2130838089), c(2131427422) + (String)localObject2 + c(2131428014), new ay(this));
      localObject3 = new Intent("com.estrongs.android.SHOW_MUSIC_PLAYER");
      ((Intent)localObject3).setClass(d, TransitActivity.class);
      ((a)localObject2).a((Intent)localObject3);
      ((a)localObject2).a(2130837731);
      b.add(localObject2);
      if (!z.Z) {
        b.add(new a(b(2130838083), c(2131427416), new ba(this)));
      }
      if (!z.ag) {
        b.add(new bf(this, b(2130838093), c(2131428402), new be(this)).a(true).a(new bd(this)).a(new bb(this)));
      }
      if (!z.ap) {
        b.add(new bh(this, b(2130838069), c(2131428455), null).a(true).a(new bg(this)));
      }
      if (!z.C) {
        b.add(new bo(this, b(2130838096), c(2131427814), new bn(this)).a(true).a(new bi(this)));
      }
      if (!z.R) {
        b.add(new bs(this, b(2130838081), c(2131428356), new br(this)).a(true).a(new bq(this)));
      }
      b.add(new bu(this, b(2130838082), c(2131427815), null).a(true).a(new bt(this)));
      b.add(new bw(this, b(2130838103), c(2131428358), null).a(true).a(new bv(this)));
      l.add(localObject4);
      return;
    }
  }
  
  public a a(int paramInt1, int paramInt2)
  {
    try
    {
      a locala = (a)l.get(paramInt1)).b.get(paramInt2);
      return locala;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {}
    return null;
  }
  
  public cw a(int paramInt)
  {
    return (cw)l.get(paramInt);
  }
  
  public void a()
  {
    super.notifyDataSetChanged();
  }
  
  public void a(String paramString)
  {
    cw localcw = (cw)l.get(1);
    Iterator localIterator = b.iterator();
    a locala;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      locala = (a)localIterator.next();
    } while (!com.estrongs.android.util.am.e(locala.b(), paramString));
    for (paramString = locala;; paramString = null)
    {
      b.remove(paramString);
      m.post(new cc(this));
      return;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    cw localcw = (cw)l.get(1);
    Object localObject = b.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (com.estrongs.android.util.am.e(((a)((Iterator)localObject).next()).b(), paramString1)) {
        return;
      }
    }
    localObject = paramString2;
    if (paramString2 == null) {
      localObject = z.b(paramString1);
    }
    int i1 = 2130838098;
    if ((com.estrongs.android.util.am.ax(paramString1)) || (com.estrongs.android.util.am.bu(paramString1))) {
      i1 = 2130838078;
    }
    b.add(new a(b(i1), (String)localObject, new az(this, paramString1), paramString1));
    m.post(new bp(this));
  }
  
  public SharedPreferences b()
  {
    return i;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    int i1;
    if (paramView != null)
    {
      i1 = ((Integer)paramView.getTag()).intValue();
      if (((i1 == 0) && (paramInt1 != 0)) || ((i1 != 0) && (paramInt1 == 0))) {
        paramView = null;
      }
    }
    for (;;)
    {
      paramViewGroup = paramView;
      if (paramView == null) {
        if (paramInt1 != 0) {
          break label122;
        }
      }
      a locala;
      label122:
      for (i1 = 2130903177;; i1 = 2130903186)
      {
        paramViewGroup = g.a(d).inflate(i1, null);
        paramViewGroup.setBackgroundResource(2130837506);
        paramViewGroup.setTag(Integer.valueOf(paramInt1));
        paramViewGroup.setId(paramInt1 * 100 + paramInt2);
        paramViewGroup.setFocusable(true);
        locala = a(paramInt1, paramInt2);
        if (locala != null) {
          break;
        }
        return paramViewGroup;
      }
      if (paramInt1 == 0)
      {
        paramView = (TextView)paramViewGroup.findViewById(2131362453);
        if (e.a())
        {
          paramView.setText("‏" + b);
          ((TextView)paramViewGroup.findViewById(2131362454)).setText(com.estrongs.android.util.am.bL(c));
          ((ImageView)paramViewGroup.findViewById(2131362452)).setImageDrawable(a);
          paramView = new bx(this, locala, paramInt1, paramInt2);
          if (paramInt2 != 0) {
            break label297;
          }
          paramViewGroup.setOnLongClickListener(null);
          paramViewGroup.setTag(2130903177, null);
        }
      }
      for (;;)
      {
        if (d == null) {
          break label734;
        }
        paramViewGroup.setOnClickListener(new cd(this, paramInt1, paramInt2, locala));
        return paramViewGroup;
        paramView.setText(b);
        break;
        label297:
        paramViewGroup.setOnLongClickListener(paramView);
        paramViewGroup.setTag(2130903177, paramView);
        continue;
        paramView = (TextView)paramViewGroup.findViewById(2131361997);
        paramView.setTextColor(n.d(2131230746));
        label380:
        label452:
        ImageView localImageView;
        ImageButton localImageButton;
        if (e.a())
        {
          paramView.setText("‏" + b);
          ((ImageView)paramViewGroup.findViewById(2131361853)).setImageDrawable(a);
          paramView = (SimpleSwitchButton)paramViewGroup.findViewById(2131361848);
          if (!f) {
            break label668;
          }
          paramView.setVisibility(0);
          paramView.setOnCheckedChangeListener(null);
          paramView.setChecked(locala.a());
          paramView.setOnCheckedChangeListener(h);
          localImageView = (ImageView)paramViewGroup.findViewById(2131362470);
          localImageButton = (ImageButton)paramViewGroup.findViewById(2131362471);
          com.estrongs.android.pop.ad localad = f;
          if (!com.estrongs.android.pop.utils.cc.a()) {
            break label678;
          }
          paramView = "#home_page#";
          label495:
          paramView = localad.k(paramView);
          if ((!"#home_page#".equals(locala.b())) && (!"#home#".equals(locala.b()))) {
            break label686;
          }
          paramBoolean = true;
          label534:
          if ((!paramBoolean) || (!paramView.equals(locala.b()))) {
            break label691;
          }
          localImageView.setVisibility(0);
          label557:
          if ((!com.estrongs.android.util.am.ax(locala.b())) && (!com.estrongs.android.util.am.bu(locala.b()))) {
            break label701;
          }
          localImageButton.setVisibility(0);
          localImageButton.setOnClickListener(new bz(this, locala));
        }
        for (;;)
        {
          if ((paramInt1 != 1) && (paramInt1 != 2) && (paramInt1 != 3) && (paramInt1 != 4)) {
            break label711;
          }
          paramView = new ca(this, paramInt1, paramInt2, locala, paramBoolean);
          paramViewGroup.setOnLongClickListener(paramView);
          paramViewGroup.setTag(2130903177, paramView);
          break;
          paramView.setText(b);
          break label380;
          label668:
          paramView.setVisibility(8);
          break label452;
          label678:
          paramView = "#home#";
          break label495;
          label686:
          paramBoolean = false;
          break label534;
          label691:
          localImageView.setVisibility(8);
          break label557;
          label701:
          localImageButton.setVisibility(8);
        }
        label711:
        if (paramInt1 == 4)
        {
          paramViewGroup.setOnLongClickListener(null);
          paramViewGroup.setTag(2130903177, null);
        }
      }
      label734:
      paramViewGroup.setOnClickListener(new cg(this));
      return paramViewGroup;
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    if ((a(paramInt) != null) && (ab != null)) {
      return ab.size();
    }
    return 0;
  }
  
  public int getGroupCount()
  {
    if (l != null) {
      return l.size();
    }
    return 0;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = g.a(d).inflate(2130903151, null);
      paramViewGroup.setBackgroundResource(2130837510);
      paramViewGroup.setFocusable(true);
    }
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131361997);
    if (paramView != null) {
      localTextView.setText(a);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131362017);
    if (paramBoolean) {
      paramView.setImageDrawable(g);
    }
    for (;;)
    {
      paramViewGroup.setOnClickListener(new ch(this, paramInt));
      return paramViewGroup;
      paramView.setImageDrawable(h);
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
    j.putBoolean("group" + paramInt, false);
    j.commit();
  }
  
  public void onGroupExpanded(int paramInt)
  {
    j.putBoolean("group" + paramInt, true);
    j.commit();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */