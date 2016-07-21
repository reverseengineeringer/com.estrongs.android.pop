package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.cn;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.pop.utils.an;
import com.estrongs.android.pop.utils.de;
import com.estrongs.android.pop.utils.dh;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.dy;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.e.cb;
import com.estrongs.android.ui.e.hy;
import com.estrongs.android.ui.e.jz;
import com.estrongs.android.ui.e.ka;
import com.estrongs.android.ui.pcs.am;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ac;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.al;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.widget.RealViewSwitcher;
import com.estrongs.android.widget.bd;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class PopAudioPlayer
  extends HomeAsBackActivity
  implements jz
{
  private static String[] F = null;
  private static final String g = PopAudioPlayer.class.getSimpleName();
  private boolean A = false;
  private String B = null;
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  private ag G = ag.g();
  private MenuItem H;
  private x I = null;
  private ProgressBar J = null;
  private com.estrongs.android.pop.app.c.k K = new com.estrongs.android.pop.app.c.k();
  private int L = 0;
  private Bitmap M;
  private com.estrongs.android.view.a.a N;
  private com.estrongs.android.view.a.a O;
  private com.estrongs.android.view.a.a P;
  private com.estrongs.android.view.a.a Q;
  private com.estrongs.android.view.a.a R;
  private com.estrongs.android.view.a.a S;
  private com.estrongs.android.view.a.a T;
  private com.estrongs.android.view.a.a U;
  private com.estrongs.android.view.a.a V;
  private com.estrongs.android.view.a.a W;
  private com.estrongs.android.view.a.a X;
  private com.estrongs.android.view.a.a Y;
  private com.estrongs.android.view.a.a Z;
  protected AdvancedAddressBar a;
  private int aA = 0;
  private c aB = null;
  private ImageView aC;
  private ImageView aD;
  private com.estrongs.android.pop.app.c.a aE;
  private Bitmap aF;
  private ac aG;
  private int aH = -1;
  private Handler aI = new fw(this);
  private ServiceConnection aJ = new ga(this);
  private Rect aK;
  private View.OnClickListener aL = new gb(this);
  private Menu aa;
  private ActionMode ab;
  private int ac;
  private int ad;
  private FrameLayout ae;
  private TextView af;
  private TextView ag;
  private ImageView ah;
  private ImageView ai;
  private FrameLayout aj;
  private ImageView ak;
  private Drawable al;
  private Drawable am;
  private TextView an;
  private View ao;
  private PopupWindow ap;
  private ImageView aq;
  private TextView ar;
  private ImageView as;
  private hy at;
  private RelativeLayout au;
  private ka av;
  private ActionMode.Callback aw = new fa(this);
  private final BroadcastReceiver ax = new ft(this);
  private final BroadcastReceiver ay = new ge(this);
  private int az = 0;
  int b = -1;
  int c = -1;
  boolean d = false;
  bd e = null;
  private gp f = new ei(this);
  private ad h;
  private RealViewSwitcher i;
  private ActionBar j;
  private Toolbar k;
  private ImageView l;
  private View m;
  private RecyclerView n;
  private LinearLayoutManager o;
  private cb p;
  private ProgressDialog q;
  private boolean r;
  private gn t;
  private gr u = null;
  private gl v = null;
  private gq w = null;
  private boolean x = false;
  private List<String> y = null;
  private String z = null;
  
  public static String[] E()
  {
    return F;
  }
  
  private void K()
  {
    if (getIntent().getBooleanExtra("ChromecastNotification", false)) {
      if ((v == null) || (v.A() == null)) {}
    }
    for (K = v.A();; K = u.A()) {
      do
      {
        if (u != null) {
          u.a(K);
        }
        if (v != null) {
          v.a(K);
        }
        return;
      } while (((!getIntent().getBooleanExtra("AudioServiceNotification", false)) && (!getIntent().getBooleanExtra("isFromMusicGridViewPlayerView", false))) || (u == null) || (u.A() == null));
    }
  }
  
  private void L()
  {
    c(true);
  }
  
  private void M()
  {
    if (!G.p()) {
      com.estrongs.android.util.l.e(g, "changeToCastMode error, chromecast is not connected");
    }
    do
    {
      return;
      if ((d()) && (w != null)) {
        w.q();
      }
      L = 1;
      w = v;
    } while (H == null);
    H.setIcon(getResources().getDrawable(2130838531));
  }
  
  private void N()
  {
    if (I != null) {
      return;
    }
    I = new x(this);
    I.a(new gj(this));
  }
  
  private void O()
  {
    ae = new ej(this, this);
    ae.setBackgroundColor(getResources().getColor(2131558500));
    ae.addView(com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903117, null));
    cn.a(ae, true);
    setContentView(ae);
    i = ((RealViewSwitcher)findViewById(2131624404));
    J = ((ProgressBar)findViewById(2131624351));
    U();
    R();
    S();
  }
  
  private void P()
  {
    Z();
    aI.post(new em(this));
    T();
  }
  
  private void Q()
  {
    supportInvalidateOptionsMenu();
  }
  
  private void R() {}
  
  private void S() {}
  
  private void T()
  {
    a(true);
  }
  
  private void U()
  {
    k = ((Toolbar)findViewById(2131624405));
    setSupportActionBar(k);
    j = getSupportActionBar();
    j.setDisplayShowCustomEnabled(true);
    j.setDisplayShowTitleEnabled(false);
    ActionBar.LayoutParams localLayoutParams = new ActionBar.LayoutParams(-2, -1);
    gravity = 17;
    j.setCustomView(V(), localLayoutParams);
    a = new AdvancedAddressBar(this);
    a.setIsNarrowMode(true);
  }
  
  private View V()
  {
    View localView = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903119, null);
    aC = ((ImageView)localView.findViewById(2131624422));
    aD = ((ImageView)localView.findViewById(2131624423));
    aC.setFocusable(true);
    aD.setFocusable(true);
    aC.setOnClickListener(aL);
    aD.setOnClickListener(aL);
    d(true);
    return localView;
  }
  
  private void W()
  {
    if (H == null) {
      return;
    }
    H.setVisible(false);
  }
  
  private void X()
  {
    if (q == null)
    {
      q = ProgressDialog.a(this, getString(2131232182), getString(2131232552), true, true);
      return;
    }
    q.show();
  }
  
  private void Y()
  {
    if (q != null) {
      q.dismiss();
    }
  }
  
  private void Z()
  {
    m = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903120, null);
    l = ((ImageView)m.findViewById(2131624426));
    af = ((TextView)m.findViewById(2131624424));
    ag = ((TextView)m.findViewById(2131624425));
    ak = ((ImageView)m.findViewById(2131624434));
    ah = ((ImageView)m.findViewById(2131624431));
    ai = ((ImageView)m.findViewById(2131624433));
    aj = ((FrameLayout)m.findViewById(2131624432));
    cn.e(ak, 180.0F);
    aj.setOnClickListener(aL);
    ah.setOnClickListener(aL);
    ak.setOnClickListener(aL);
    aj.setFocusable(true);
    ah.setFocusable(true);
    ak.setFocusable(true);
    Object localObject1 = (RelativeLayout)m.findViewById(2131624435);
    p = new cb(this, true);
    ((RelativeLayout)localObject1).addView(p.a(), -1, -1);
    localObject1 = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903122, null);
    au = ((RelativeLayout)((View)localObject1).findViewById(2131624451));
    an = ((TextView)((View)localObject1).findViewById(2131624448));
    ao = ((View)localObject1).findViewById(2131624447);
    ao.setOnClickListener(aL);
    aq = ((ImageView)((View)localObject1).findViewById(2131624449));
    cn.e(aq, 180.0F);
    n = ((RecyclerView)((View)localObject1).findViewById(2131624450));
    aG = new ac(this, aI);
    o = new LinearLayoutManager(this);
    n.setLayoutManager(o);
    n.setAdapter(aG);
    Object localObject2 = new com.estrongs.android.ui.recycler.g(this);
    ((com.estrongs.android.ui.recycler.g)localObject2).a(getResources().getColor(2131558489));
    ((com.estrongs.android.ui.recycler.g)localObject2).b(1);
    n.addItemDecoration((RecyclerView.ItemDecoration)localObject2);
    localObject2 = new ItemTouchHelper(new fu(this, 3, 0));
    ((ItemTouchHelper)localObject2).attachToRecyclerView(n);
    aG.a((ItemTouchHelper)localObject2);
    n.addItemDecoration((RecyclerView.ItemDecoration)localObject2);
    i.addView(m);
    i.addView((View)localObject1);
    e = new fv(this);
    i.setOnScreenSwitchListener(e);
    i.a(false);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    Message localMessage = aI.obtainMessage(8);
    arg1 = paramInt;
    obj = Boolean.valueOf(paramBoolean);
    aI.removeMessages(8);
    aI.sendMessageDelayed(localMessage, 100L);
  }
  
  private void a(View paramView)
  {
    if (ap == null) {
      b(paramView);
    }
    for (;;)
    {
      cn.e(aq, 0.0F);
      return;
      ap.showAsDropDown(paramView);
    }
  }
  
  private void a(i parami, j paramj)
  {
    if ((parami == null) || (paramj == null)) {
      return;
    }
    paramj.b(b);
  }
  
  private void a(gq paramgq)
  {
    if (paramgq == null) {}
    do
    {
      return;
      paramgq.a(null);
    } while (((paramgq.e()) && (!paramgq.f())) || (paramgq.d()));
    paramgq.n();
    paramgq.q();
    paramgq.z();
  }
  
  public static boolean a(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {}
    for (;;)
    {
      return false;
      int i1 = 0;
      while (i1 < paramArrayOfString.length)
      {
        if (paramArrayOfString[i1].endsWith(".m3u")) {
          return true;
        }
        i1 += 1;
      }
    }
  }
  
  private String[] a(Uri paramUri)
  {
    String str = Uri.decode(paramUri.toString());
    if (str.startsWith("file://")) {
      paramUri = str.substring("file://".length());
    }
    for (;;)
    {
      return a(paramUri);
      paramUri = str;
      if (str.startsWith("http://127.0.0.1:59777/")) {
        paramUri = ap.bH(str);
      }
    }
  }
  
  public static String[] a(String paramString)
  {
    if (ap.bl(paramString)) {
      return d(paramString);
    }
    Exception[] arrayOfException = new Exception[1];
    String[][] arrayOfString = new String[1][];
    paramString = new Thread(new gk(arrayOfString, paramString, arrayOfException));
    paramString.start();
    paramString.join();
    if (arrayOfException[0] != null) {
      throw arrayOfException[0];
    }
    return arrayOfString[0];
  }
  
  private void aa() {}
  
  private void ab() {}
  
  private void ac()
  {
    p.c(az);
    p.d(aA);
  }
  
  private void ad()
  {
    b(500);
  }
  
  private void ae()
  {
    aI.removeMessages(1);
  }
  
  private void af()
  {
    Message localMessage = aI.obtainMessage(6);
    aI.removeMessages(6);
    aI.sendMessage(localMessage);
  }
  
  private void ag()
  {
    if (x)
    {
      unbindService(aJ);
      x = false;
    }
  }
  
  private void ah()
  {
    int i1;
    if (y != null)
    {
      w.q();
      j localj = m.a().b();
      if (a == -1L) {
        localj.d();
      }
      for (;;)
      {
        i1 = 0;
        while (i1 < y.size())
        {
          localj.b((String)y.get(i1));
          i1 += 1;
        }
        m.a().a(null);
        localj = m.a().b();
      }
      w.a(localj);
      aA = w.v();
      az = w.u();
      a(w.i(), true);
      z = w.g();
      a(true);
      l();
      if (!w.e()) {
        break label326;
      }
      i1 = w.l();
      if (!w.f()) {
        break label292;
      }
      g(2, i1);
      g(3, i1);
      label195:
      ac();
      if (z == null) {
        break label386;
      }
      a(z);
    }
    for (;;)
    {
      if (A)
      {
        A = false;
        i.setCurrentScreen(1);
        e.c(1);
      }
      return;
      if (w.h() != null)
      {
        aA = w.v();
        az = w.u();
        break;
      }
      C();
      A = true;
      break;
      label292:
      if (w.d())
      {
        g(3, i1);
        break label195;
      }
      g(3, i1);
      g(4, i1);
      break label195;
      label326:
      if ((w.h() == null) || (w.h().c().isEmpty())) {
        break label195;
      }
      int i2 = w.l();
      i1 = i2;
      if (i2 == -1) {
        i1 = 0;
      }
      g(2, i1);
      g(3, i1);
      break label195;
      label386:
      a(getText(2131231872));
    }
  }
  
  private void b(int paramInt)
  {
    Message localMessage = aI.obtainMessage(1);
    aI.removeMessages(1);
    aI.sendMessageDelayed(localMessage, paramInt);
  }
  
  private void b(View paramView)
  {
    View localView = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903103, null);
    dy localdy = new dy(this);
    ListView localListView = (ListView)localView.findViewById(2131624232);
    localListView.setAdapter(localdy);
    ap = new PopupWindow(localView, com.estrongs.android.ui.d.g.a(this, 200.0F), -2);
    ap.setBackgroundDrawable(getResources().getDrawable(2130838545));
    ap.setOutsideTouchable(true);
    ap.setAnimationStyle(16973826);
    ap.update();
    ap.setTouchable(true);
    ap.setFocusable(true);
    ap.showAsDropDown(paramView);
    localListView.setOnItemClickListener(new gc(this));
    ap.setOnDismissListener(new gd(this));
  }
  
  public static void b(String[] paramArrayOfString)
  {
    F = paramArrayOfString;
  }
  
  private void c(int paramInt1, int paramInt2) {}
  
  private void c(boolean paramBoolean)
  {
    L = 0;
    w = u;
    if (H != null) {
      H.setIcon(getResources().getDrawable(2130838578));
    }
    if ((w != null) && (paramBoolean))
    {
      w.q();
      w.d(w.l());
      w.a();
    }
    J.setVisibility(8);
  }
  
  private void d(int paramInt1, int paramInt2)
  {
    if ((aH != -1) && (paramInt1 != 0))
    {
      c(aH, 0);
      aH = -1;
    }
    switch (paramInt1)
    {
    }
    for (;;)
    {
      l();
      return;
      e(false);
      c(paramInt2, 0);
      if (t != null)
      {
        t.a();
        continue;
        e(true);
        c(paramInt2, 1);
        continue;
        e(false);
        c(paramInt2, 2);
        continue;
        c(paramInt2, 3);
        t.a();
        aH = paramInt2;
        k();
        a(w.y());
        l();
      }
    }
  }
  
  private void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localDrawable = at.a(this).b(2130838578, 2131558745);
      aC.setImageDrawable(localDrawable);
      localDrawable = at.a(this).b(2130838579, 2131558491);
      aD.setImageDrawable(localDrawable);
      return;
    }
    Drawable localDrawable = at.a(this).b(2130838578, 2131558491);
    aC.setImageDrawable(localDrawable);
    localDrawable = at.a(this).b(2130838579, 2131558745);
    aD.setImageDrawable(localDrawable);
  }
  
  private static String[] d(String paramString)
  {
    String[] arrayOfString = new al(paramString).a();
    int i2 = arrayOfString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      String str2 = arrayOfString[i1];
      String str1 = str2;
      if (!ap.v(str2))
      {
        str2 = ap.bF(str2);
        str1 = str2;
        if (str2 == null) {
          str1 = new File(paramString).getParent() + File.separatorChar + arrayOfString[i1];
        }
      }
      arrayOfString[i1] = str1;
      i1 += 1;
    }
    return arrayOfString;
  }
  
  private void e(int paramInt)
  {
    Message localMessage = aI.obtainMessage(2);
    arg1 = paramInt;
    aI.removeMessages(2);
    aI.sendMessageDelayed(localMessage, 100L);
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    int i1 = 1;
    if (paramInt1 == 0) {}
    for (;;)
    {
      if (at != null) {
        at.f(i1);
      }
      a(paramInt1, paramInt2);
      return;
      if (paramInt1 == 1) {
        i1 = 2;
      } else {
        i1 = 3;
      }
    }
  }
  
  private void e(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ai.setImageDrawable(al);
      return;
    }
    ai.setImageDrawable(am);
  }
  
  private String f(int paramInt)
  {
    paramInt /= 1000;
    return String.format("%02d:%02d", new Object[] { Integer.valueOf(paramInt / 60), Integer.valueOf(paramInt % 60) });
  }
  
  private void f(int paramInt1, int paramInt2)
  {
    Message localMessage = aI.obtainMessage(7);
    arg1 = paramInt2;
    arg2 = paramInt1;
    aI.removeMessages(7);
    aI.sendMessageDelayed(localMessage, 100L);
  }
  
  private void g(int paramInt1, int paramInt2)
  {
    Message localMessage = aI.obtainMessage(4);
    arg1 = paramInt1;
    arg2 = paramInt2;
    aI.sendMessage(localMessage);
  }
  
  public List<i> A()
  {
    return aG.c();
  }
  
  public i B()
  {
    if (w == null) {
      return null;
    }
    return w.r();
  }
  
  public void C()
  {
    m localm = m.a();
    w.a(localm.e());
    aG.a(localm.e());
    a(0, false);
  }
  
  public void D()
  {
    boolean bool;
    if (w.h() == m.a().e())
    {
      m.a().f();
      if (!w.f())
      {
        bool = true;
        w.a(m.a().e());
        a(0, bool);
      }
    }
    for (;;)
    {
      aG.a(m.a().e());
      a(false);
      l();
      return;
      bool = false;
      break;
      m.a().f();
    }
  }
  
  public void F()
  {
    List localList = aG.c();
    if ((localList != null) && (localList.size() > 0))
    {
      b((i)aG.c().get(0));
      return;
    }
    b(B());
  }
  
  protected ActionBar a()
  {
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setBackgroundDrawable(J().a(2131558728));
    return localActionBar;
  }
  
  public void a(int paramInt)
  {
    i.a(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ac = paramInt1;
    ad = paramInt2;
    if (ab != null) {
      ab.invalidate();
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (l != null) {
      l.setImageBitmap(paramBitmap);
    }
    if ((aF != null) && (!aF.isRecycled()) && (aF != paramBitmap)) {}
    try
    {
      aF.recycle();
      aF = paramBitmap;
      a(new fs(this));
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void a(i parami)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(parami);
    w.a(localLinkedList);
    if (w.h().c().size() == 0)
    {
      w.q();
      a(-1, false);
    }
    for (;;)
    {
      a(false);
      l();
      return;
      a(w.l(), true);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.setDisplayPaths(new String[] { paramCharSequence.toString() });
    an.setText(paramCharSequence.toString());
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    N = new com.estrongs.android.view.a.a(2130838580, 2131231041).a(new ep(this));
    O = new com.estrongs.android.view.a.a(2130838539, 2131232473).a(new eq(this));
    P = new com.estrongs.android.view.a.a(2130838539, 2131231042).a(new er(this));
    W = new com.estrongs.android.view.a.a(2130838539, 2131231043).a(new et(this));
    V = new com.estrongs.android.view.a.a(2130838590, 2131231048).a(new eu(this));
    U = new com.estrongs.android.view.a.a(2130838595, 2131231049).a(new ew(this));
    Q = new com.estrongs.android.view.a.a(2130838564, 2131231709).a(new ey(this));
    R = new com.estrongs.android.view.a.a(2130838604, getString(2131230892)).a(new fh(this));
    S = new com.estrongs.android.view.a.a(2130838522, 2131231410).a(new fi(this));
    T = new com.estrongs.android.view.a.a(2130838586, 2131231278).a(new fj(this));
    X = new com.estrongs.android.view.a.a(2130838603, 2131231617).a(new fk(this));
    Z = new com.estrongs.android.view.a.a(2130838549, 2131230851).a(new fl(this));
    Y = new com.estrongs.android.view.a.a(2130838530, 2131231154).a(new fm(this));
    paramList.add(N);
    paramList.add(O);
    paramList.add(P);
    paramList.add(W);
    paramList.add(V);
    paramList.add(U);
    paramList.add(Q);
    paramList.add(R);
    paramList.add(T);
    paramList.add(X);
    paramList.add(Z);
    paramList.add(Y);
  }
  
  public void a(List<i> paramList, j paramj)
  {
    if (w.h() == paramj)
    {
      paramj = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramj.add(nextb);
      }
      w.b(paramj);
    }
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramj.b(nextb);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    j localj;
    String str;
    if (w != null)
    {
      if (!paramBoolean) {
        break label107;
      }
      localj = w.h();
      aG.a(localj);
      str = localj.a();
      if (str != null) {
        break label81;
      }
      a.setDisplayPaths(new String[] { getString(localj.b()) });
      an.setText(getString(localj.b()));
    }
    for (;;)
    {
      aG.notifyDataSetChanged();
      return;
      label81:
      a.setDisplayPaths(new String[] { str });
      an.setText(str);
      continue;
      label107:
      localj = aG.a();
      str = localj.a();
      if (str == null)
      {
        a.setDisplayPaths(new String[] { getString(localj.b()) });
        an.setText(getString(localj.b()));
      }
      else
      {
        a.setDisplayPaths(new String[] { str });
        an.setText(str);
      }
    }
  }
  
  public void b(i parami)
  {
    Object localObject;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    if (parami != null)
    {
      localObject = new ArrayList();
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      if (bk.a(e)) {
        break label368;
      }
      ((List)localObject).add(e);
      localArrayList2.add(e);
      localArrayList1.add(getString(2131232304) + " \"" + e + "\"");
    }
    for (;;)
    {
      if (!bk.a(g))
      {
        ((List)localObject).add(g);
        localArrayList2.add(getString(2131232311) + " " + g);
        localArrayList1.add(getString(2131232304) + " \"" + g + "\"");
      }
      if (!bk.a(f))
      {
        ((List)localObject).add(f);
        localArrayList2.add(getString(2131232310) + " " + f);
        localArrayList1.add(getString(2131232304) + " \"" + f + "\"");
      }
      try
      {
        if (aB != null)
        {
          aB.a("Search_Wan");
          aB.c("Search_Wan_UV");
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          try
          {
            parami = de.a(this, "music", e);
            if (parami == null)
            {
              return;
              label368:
              if (bk.a(b)) {
                break;
              }
              try
              {
                String str = ap.bS(ap.d(b));
                if (bk.a(str)) {
                  break;
                }
                ((List)localObject).add(str);
                localArrayList2.add(str);
                localArrayList1.add(getString(2131232304) + " \"" + str + "\"");
              }
              catch (Exception localException2) {}
              break;
            }
            if (de.a(b))
            {
              finish();
              return;
            }
            localObject = new Intent(this, FileExplorerActivity.class);
            ((Intent)localObject).setFlags(603979776);
            ((Intent)localObject).setData(Uri.parse(a));
            startActivity((Intent)localObject);
            return;
          }
          catch (Exception parami) {}
          localException1 = localException1;
        }
      }
    }
  }
  
  public void b(List<i> paramList)
  {
    paramList.toArray(new i[paramList.size()]);
    Object localObject = m.a();
    if (!((m)localObject).c()) {
      ((m)localObject).a(null);
    }
    localObject = ((m)localObject).b();
    ((j)localObject).d();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((j)localObject).b(nextb);
    }
    w.a((j)localObject);
    e(0);
    a(true);
    l();
  }
  
  public void b(boolean paramBoolean)
  {
    paramBoolean = false;
    if (aG.a() == w.h())
    {
      int i1 = w.l();
      ac localac = aG;
      if ((!w.e()) || (w.f())) {
        paramBoolean = true;
      }
      localac.a(i1, paramBoolean, w.d());
      aG.notifyDataSetChanged();
      return;
    }
    aG.a(-1, false, false);
    aG.notifyDataSetChanged();
  }
  
  public void c(List<i> paramList)
  {
    j localj = v();
    int i2;
    if (w.h() == localj)
    {
      i locali = B();
      int i1 = 0;
      i2 = 0;
      while (i1 < paramList.size())
      {
        if (((i)paramList.get(i1)).equals(locali)) {
          i2 = 1;
        }
        i1 += 1;
      }
      w.a(paramList);
      if (localj.c().size() == 0)
      {
        w.q();
        a(-1, false);
      }
    }
    for (;;)
    {
      a(false);
      l();
      return;
      if (i2 != 0)
      {
        a(w.l(), true);
        continue;
        localj.a(paramList);
      }
    }
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return L == 0;
  }
  
  public void e()
  {
    startSupportActionMode(aw);
    if (au == null) {
      return;
    }
    if (at == null)
    {
      at = new hy(this, true, null);
      at.f(1);
      au.addView(at.a(), -1, -1);
      au.setVisibility(0);
      return;
    }
    at.f(1);
    au.setVisibility(0);
  }
  
  public void f()
  {
    if (ab != null) {
      ab.finish();
    }
    if (au != null) {
      au.setVisibility(8);
    }
  }
  
  public void finish()
  {
    super.finish();
    D = true;
    if (w != null)
    {
      a(u);
      a(v);
    }
  }
  
  protected int g()
  {
    return 2130838584;
  }
  
  public boolean h()
  {
    List localList = m.a().j();
    localList.remove(m.a().e());
    if (localList.size() == 0)
    {
      ak.a(this, 2131231044, 0);
      return true;
    }
    String[] arrayOfString = new String[localList.size() + 1];
    int i1 = 0;
    while (i1 < localList.size())
    {
      String str2 = ((j)localList.get(i1)).a();
      String str1 = str2;
      if (str2 == null) {
        str1 = getString(((j)localList.get(i1)).b());
      }
      arrayOfString[i1] = str1;
      i1 += 1;
    }
    arrayOfString[localList.size()] = getString(2131231703);
    new cv(this).a(getString(2131231706)).a(arrayOfString, -1, new en(this, localList)).d(false).c();
    return false;
  }
  
  public void i()
  {
    if (G.p())
    {
      if (L != 1)
      {
        M();
        w.a();
      }
      return;
    }
    if (I == null) {
      N();
    }
    I.show();
  }
  
  public void j()
  {
    if (aE == null)
    {
      aE = new com.estrongs.android.pop.app.c.a(this);
      aE.a(new fp(this));
    }
    if (!aE.a())
    {
      aE.b();
      return;
    }
    aE.c();
  }
  
  public void k()
  {
    String str1 = null;
    i locali = w.r();
    String str2 = w.s();
    af.setText(str2);
    if (locali != null) {
      if (locali.c())
      {
        str1 = w.t();
        ag.setText(str1);
      }
    }
    for (;;)
    {
      af.setText(str2);
      if (str1 == null) {}
      l();
      return;
      new Thread(new fq(this, locali)).start();
      continue;
      ag.setText("");
    }
  }
  
  public void l()
  {
    b(true);
  }
  
  public int m()
  {
    return i.getCurrentScreen();
  }
  
  public void o()
  {
    int i1 = 1;
    if ((w == null) || (w.h() == null)) {}
    label105:
    label108:
    for (;;)
    {
      return;
      boolean bool;
      if (((w.e()) && (!w.f())) || (w.d()))
      {
        bool = true;
        if ((!bool) || (w.c() <= 5000L)) {
          break label105;
        }
        p();
      }
      for (;;)
      {
        if (i1 != 0) {
          break label108;
        }
        i1 = w.k();
        w.q();
        a(i1, bool);
        return;
        bool = false;
        break;
        i1 = 0;
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.estrongs.android.ui.pcs.l locall = u.a().j();
    if (locall != null) {
      locall.a(paramInt1, paramIntent, paramInt2);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((av != null) && (av.c())) {
      av.d();
    }
    aK = null;
    com.estrongs.android.ui.f.k.a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(9);
    super.onCreate(paramBundle);
    an.a(this, getResources().getColor(2131558728));
    al = at.a(this).b(2130838251, 2131558745);
    am = at.a(this).b(2130838252, 2131558745);
    h = ad.a(this);
    boolean bool;
    Intent localIntent;
    Object localObject;
    int i1;
    for (;;)
    {
      try
      {
        if (getResourcesgetConfigurationorientation != 1) {
          continue;
        }
        bool = true;
        r = bool;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        r = true;
        continue;
        ((List)localObject).add(paramBundle[i1]);
        continue;
      }
      localIntent = getIntent();
      bool = localIntent.getBooleanExtra("hasplaylist", false);
      if (!bool) {
        break label611;
      }
      paramBundle = E();
      if (!a(paramBundle)) {
        break label818;
      }
      localObject = new ArrayList();
      i1 = 0;
      if ((i1 < paramBundle.length) && (!paramBundle[i1].endsWith(".m3u"))) {
        continue;
      }
      try
      {
        String[] arrayOfString = a(paramBundle[i1]);
        if (arrayOfString != null) {
          ((List)localObject).addAll(Arrays.asList(arrayOfString));
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          continue;
          paramBundle = null;
        }
      }
      i1 += 1;
      continue;
      bool = false;
    }
    if (((List)localObject).size() == 0)
    {
      ak.a(this, 2131231107, 1);
      finish();
      return;
    }
    paramBundle = (String[])((List)localObject).toArray(new String[0]);
    label323:
    label354:
    label611:
    label789:
    label813:
    label818:
    for (;;)
    {
      A = localIntent.getBooleanExtra("showlist", false);
      if ((paramBundle == null) && (!A))
      {
        paramBundle = localIntent.getData();
        if (paramBundle != null)
        {
          localObject = Uri.decode(paramBundle.toString());
          if (((String)localObject).startsWith("file://"))
          {
            paramBundle = ((String)localObject).substring("file://".length());
            B = paramBundle;
            y = new LinkedList();
            y.clear();
            y.add(paramBundle);
          }
        }
        else
        {
          O();
          P();
          paramBundle = m.a();
          if (!paramBundle.h())
          {
            X();
            paramBundle.a(new gf(this));
            new gh(this, paramBundle).start();
          }
          if (!paramBundle.d()) {
            new gi(this, paramBundle).start();
          }
          paramBundle = new ContextWrapper(this);
          localObject = new Intent(paramBundle, AudioPlayerService.class);
          localIntent.putExtra("hasplaylist", bool);
          paramBundle.startService((Intent)localObject);
          x();
          aB = c.a(this);
          if (localIntent.getBooleanExtra("islocalopen", false)) {}
        }
      }
      try
      {
        aB.d("act3");
        aB.a("act3", "audio_player");
        v = new gl(this);
        G.a(v);
        K();
        if (localIntent.getBooleanExtra("Chromecast", false))
        {
          if (!G.p()) {
            break label789;
          }
          M();
          if (!localIntent.getBooleanExtra("ChromecastNotification", false))
          {
            w = v;
            i();
            ah();
          }
        }
        else
        {
          try
          {
            if (aB == null) {
              break;
            }
            aB.c("AudioPlayer_UV");
            return;
          }
          catch (Exception paramBundle)
          {
            paramBundle.printStackTrace();
            return;
          }
          if ((localIntent.getData() == null) || (!Uri.decode(localIntent.getData().toString()).endsWith(".m3u"))) {
            break label813;
          }
          try
          {
            paramBundle = a(localIntent.getData());
          }
          catch (Exception paramBundle)
          {
            ak.a(this, 2131231107, 1);
            finish();
            return;
          }
          paramBundle = (Bundle)localObject;
          if (!((String)localObject).startsWith("http://127.0.0.1:59777/")) {
            break label323;
          }
          paramBundle = AudioPlayerService.j + ((String)localObject).substring("http://127.0.0.1:59777/".length());
          break label323;
          if (paramBundle == null) {
            break label354;
          }
          y = new LinkedList();
          y.clear();
          i1 = 0;
          while (i1 < paramBundle.length)
          {
            y.add(paramBundle[i1]);
            i1 += 1;
          }
        }
      }
      catch (Exception paramBundle)
      {
        for (;;)
        {
          paramBundle.printStackTrace();
          continue;
          y = null;
          v.b();
          continue;
          w = v;
          ah();
          i();
        }
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755012, paramMenu);
    a(k);
    H = paramMenu.findItem(2131624418);
    W();
    aa = paramMenu;
    paramMenu.findItem(2131625662).setIcon(at.a(this).b(2130838565, 2131558745));
    return true;
  }
  
  protected void onDestroy()
  {
    C = true;
    if (w != null) {
      ag();
    }
    try
    {
      for (;;)
      {
        if (!com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Market"))
        {
          unregisterReceiver(ax);
          unregisterReceiver(ay);
        }
        if (v != null) {
          G.b(v);
        }
        if (I != null) {
          I.a();
        }
        if ((M != null) && (!M.isRecycled())) {
          M.recycle();
        }
        super.onDestroy();
        return;
        if ((com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum")) || (com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Huawei")))
        {
          if (E)
          {
            E = false;
            x();
          }
          else
          {
            ag();
          }
        }
        else {
          ag();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      if (aG.b()) {
        z();
      }
    }
    do
    {
      return true;
      D = true;
      do
      {
        do
        {
          do
          {
            return super.onKeyDown(paramInt, paramKeyEvent);
            if (paramInt != 24) {
              break;
            }
          } while (d());
          G.v();
          return true;
          if (paramInt != 25) {
            break;
          }
        } while (d());
        G.w();
        return true;
      } while (paramInt != 82);
      if (ab != null)
      {
        ab.getMenu().performIdentifierAction(2131625662, 0);
        return true;
      }
    } while (aa == null);
    aa.performIdentifierAction(2131625662, 0);
    return true;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    try
    {
      boolean bool1 = paramIntent.getBooleanExtra("hasplaylist", false);
      boolean bool2 = paramIntent.getBooleanExtra("islocalopen", false);
      if (!bool2) {}
      try
      {
        aB.d("act3");
        aB.a("act3", "audio_player");
        if (!bool1) {
          break label290;
        }
        arrayOfString1 = E();
        F = null;
        Object localObject1 = arrayOfString1;
        if (a(arrayOfString1))
        {
          localObject1 = new ArrayList();
          i1 = 0;
          for (;;)
          {
            if (i1 >= arrayOfString1.length) {
              break label164;
            }
            bool1 = arrayOfString1[i1].endsWith(".m3u");
            if (!bool1) {
              break;
            }
            try
            {
              String[] arrayOfString2 = a(arrayOfString1[i1]);
              if (arrayOfString2 != null) {
                ((List)localObject1).addAll(Arrays.asList(arrayOfString2));
              }
            }
            catch (Exception localException2)
            {
              for (;;)
              {
                continue;
                Object localObject2 = null;
              }
            }
            i1 += 1;
          }
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          String[] arrayOfString1;
          int i1;
          localException1.printStackTrace();
          continue;
          localException1.add(arrayOfString1[i1]);
        }
        label164:
        if (localException1.size() == 0)
        {
          ak.a(this, 2131231107, 1);
          return;
        }
        localObject2 = (String[])localException1.toArray(new String[0]);
      }
      if (localObject2 == null)
      {
        paramIntent = paramIntent.getData();
        if (paramIntent != null)
        {
          localObject2 = Uri.decode(paramIntent.toString());
          if (((String)localObject2).startsWith("file://"))
          {
            paramIntent = ((String)localObject2).substring("file://".length());
            B = paramIntent;
          }
          for (;;)
          {
            y = new LinkedList();
            y.clear();
            y.add(paramIntent);
            ag();
            x();
            return;
            label290:
            if (paramIntent.getData() == null) {
              break label394;
            }
            bool1 = Uri.decode(paramIntent.getData().toString()).endsWith(".m3u");
            if (!bool1) {
              break label394;
            }
            try
            {
              localObject2 = a(paramIntent.getData());
            }
            catch (Exception paramIntent)
            {
              ak.a(this, 2131231107, 1);
              return;
            }
            paramIntent = (Intent)localObject2;
            if (((String)localObject2).startsWith("http://127.0.0.1:59777/")) {
              paramIntent = AudioPlayerService.j + ((String)localObject2).substring("http://127.0.0.1:59777/".length());
            }
          }
        }
      }
      label394:
      return;
    }
    catch (Exception paramIntent) {}
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if (i1 == 16908332) {
      finish();
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      if (i1 == 2131624418) {
        if (G.p())
        {
          if (L == 1)
          {
            j();
          }
          else
          {
            M();
            w.a();
          }
        }
        else
        {
          if (I == null) {
            N();
          }
          I.show();
        }
      }
    }
  }
  
  protected void onPause()
  {
    if ((w != null) && (w.e()) && (!w.f())) {
      w.a(true);
    }
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    int i1 = 0;
    MenuItem localMenuItem = paramMenu.findItem(2131625662);
    if (localMenuItem == null) {
      return false;
    }
    if (localMenuItem.getSubMenu() == null) {
      return true;
    }
    paramMenu = B();
    if (paramMenu == null)
    {
      localMenuItem.setVisible(false);
      return true;
    }
    ArrayList localArrayList = new ArrayList();
    if (m() == 0)
    {
      localArrayList.add(N);
      if (v().f()) {
        localArrayList.add(O);
      }
      String str = b;
      paramMenu = str;
      if (str != null)
      {
        paramMenu = str;
        if (!ap.bl(str)) {
          paramMenu = ap.bH(str);
        }
      }
      if ((paramMenu == null) || (!paramMenu.startsWith("http://")) || (paramMenu.startsWith("http://127.0.0.1:"))) {
        break label415;
      }
    }
    for (;;)
    {
      if (i1 != 0) {
        localArrayList.add(P);
      }
      if (ap.bl(paramMenu)) {
        localArrayList.add(Q);
      }
      localArrayList.add(R);
      if (ag.a()) {
        localArrayList.add(Y);
      }
      if ((!ap.aL(paramMenu)) && (am.a(this))) {
        localArrayList.add(S);
      }
      localArrayList.add(T);
      localArrayList.add(Z);
      localMenuItem.setOnMenuItemClickListener(new fn(this, localArrayList));
      return true;
      if (v() == m.a().e()) {
        localArrayList.add(X);
      }
      if (v().f())
      {
        if (va >= 0L) {
          break label400;
        }
        localArrayList.add(U);
      }
      for (;;)
      {
        if (v().f()) {
          localArrayList.add(W);
        }
        if (ag.a()) {
          localArrayList.add(Y);
        }
        localArrayList.add(Z);
        break;
        label400:
        localArrayList.add(V);
      }
      label415:
      i1 = 1;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    int i1;
    if (w != null)
    {
      w.a(false);
      if (!d) {
        if (w.e())
        {
          i1 = w.l();
          if (!w.f()) {
            break label61;
          }
          g(2, i1);
        }
      }
    }
    label61:
    do
    {
      return;
      if (w.d())
      {
        g(3, i1);
        return;
      }
      g(1, i1);
      return;
      d = false;
      try
      {
        w.q();
        j localj = m.a().b();
        localj.d();
        i1 = 0;
        while (i1 < y.size())
        {
          localj.b((String)y.get(i1));
          i1 += 1;
        }
        w.a(localj);
        a(w.i(), true);
        ac();
        if (z != null)
        {
          a(z);
          return;
        }
        a(getText(2131231872));
        return;
      }
      catch (Exception localException) {}
    } while ((!com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum")) && (!com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Huawei")));
    x();
    return;
  }
  
  protected void onStart()
  {
    ad();
    if (w != null) {
      w.a(f);
    }
    super.onStart();
    j.setHomeAsUpIndicator(at.a(this).b(g(), 2131558745));
  }
  
  protected void onStop()
  {
    if (w != null)
    {
      E = w.f();
      if ((w.e()) && (!E)) {
        w.o();
      }
    }
    if ((com.estrongs.android.pop.view.a.a.startsWith("Spreadtrum")) || (com.estrongs.android.pop.view.a.a.equalsIgnoreCase("Huawei"))) {
      ag();
    }
    ae();
    super.onStop();
  }
  
  public void p()
  {
    w.a(0L);
  }
  
  public void q()
  {
    az = ((az + 1) % 2);
    w.b(az);
    ac();
  }
  
  public void r()
  {
    if (w == null) {}
    while (w.h() == null) {
      return;
    }
    if ((!w.e()) || (w.f()))
    {
      if (w.f())
      {
        w.p();
        return;
      }
      w.x();
      return;
    }
    w.w();
  }
  
  public void s()
  {
    aA = ((aA + 1) % 3);
    w.c(aA);
    ac();
  }
  
  public void t()
  {
    int i1;
    if (w != null)
    {
      i1 = w.j();
      bool = w.f();
      if (d()) {
        w.q();
      }
      if (bool) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      a(i1, bool);
      return;
    }
  }
  
  public void u()
  {
    if (w != null) {
      w.q();
    }
  }
  
  public j v()
  {
    if (aG != null) {
      return aG.a();
    }
    return null;
  }
  
  public void w()
  {
    if (w != null)
    {
      j localj = aG.a();
      if (localj != null)
      {
        m.a().b(localj);
        if (localj == w.h())
        {
          w.q();
          C();
        }
        a(true);
        l();
      }
      supportInvalidateOptionsMenu();
    }
  }
  
  void x()
  {
    if (!x)
    {
      bindService(new Intent(this, AudioPlayerService.class), aJ, 1);
      x = true;
    }
  }
  
  public Rect y()
  {
    if (aK == null)
    {
      aK = new Rect();
      int[] arrayOfInt = new int[2];
      i.getLocationInWindow(arrayOfInt);
      aK = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + i.getMeasuredWidth(), arrayOfInt[1] + i.getMeasuredHeight());
    }
    return aK;
  }
  
  public void z()
  {
    aG.a(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopAudioPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */