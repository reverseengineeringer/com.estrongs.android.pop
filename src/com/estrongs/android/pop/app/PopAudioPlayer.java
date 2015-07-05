package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.d.b;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.ks;
import com.estrongs.android.ui.e.hl;
import com.estrongs.android.ui.e.jb;
import com.estrongs.android.ui.e.o;
import com.estrongs.android.ui.view.DragListView;
import com.estrongs.android.ui.view.ac;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.ai;
import com.estrongs.android.util.bd;
import com.estrongs.android.widget.RealViewSwitcher;
import com.estrongs.android.widget.bc;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class PopAudioPlayer
  extends ESActivity
  implements jb
{
  private static String[] P = null;
  private static final String h = PopAudioPlayer.class.getSimpleName();
  private ProgressDialog A;
  private boolean B;
  private ga C;
  private ge D = null;
  private fy E = null;
  private gd F = null;
  private ImageView G;
  private boolean H = false;
  private List<String> I = null;
  private String J = null;
  private boolean K = false;
  private String L = null;
  private boolean M = false;
  private boolean N = false;
  private boolean O = false;
  private aa Q = aa.g();
  private View R;
  private r S = null;
  private ProgressBar T = null;
  private com.estrongs.android.pop.app.a.am U = new com.estrongs.android.pop.app.a.am();
  private int V = 0;
  private final BroadcastReceiver W = new ey(this);
  private final BroadcastReceiver X = new fn(this);
  private int Y = 0;
  private int Z = 0;
  int a = -1;
  private com.estrongs.android.util.a aa = null;
  private View ab;
  private TextView ac;
  private com.estrongs.android.pop.app.a.e ad;
  private com.estrongs.android.pop.app.a.a ae;
  private Bitmap af;
  private ac ag;
  private int ah = -1;
  private Handler ai = new fi(this);
  private ServiceConnection aj = new fm(this);
  private Rect ak;
  int b = -1;
  protected int c;
  protected int d;
  boolean e = false;
  bc f = null;
  private gc g = new ej(this);
  private ad i;
  private RealViewSwitcher j;
  private View k;
  private TextView l;
  private TextView m;
  private ImageView n;
  private b o;
  private View p;
  private DragListView q;
  private by r;
  private o t;
  private com.estrongs.android.ui.e.j u;
  private hl v;
  private View w;
  private View x;
  private View y;
  private Button z;
  
  private void B()
  {
    if (getIntent().getBooleanExtra("ChromecastNotification", false)) {
      if ((E == null) || (E.A() == null)) {}
    }
    for (U = E.A();; U = D.b()) {
      do
      {
        if (D != null) {
          D.a(U);
        }
        if (E != null) {
          E.a(U);
        }
        return;
      } while ((!getIntent().getBooleanExtra("AudioServiceNotification", false)) || (D == null) || (D.b() == null));
    }
  }
  
  private void C()
  {
    c(true);
  }
  
  private void D()
  {
    if (!Q.p())
    {
      Log.e(h, "changeToCastMode error, chromecast is not connected");
      return;
    }
    if ((a()) && (F != null)) {
      F.q();
    }
    V = 1;
    F = E;
    ((ImageView)R.findViewById(2131361927)).setImageResource(2130838158);
  }
  
  private void E()
  {
    if (S != null) {
      return;
    }
    S = new r(this);
    S.a(new ft(this));
  }
  
  private void F()
  {
    fv localfv = new fv(this, this);
    localfv.setBackgroundColor(0);
    localfv.addView(g.a(this).inflate(2130903055, null));
    setContentView(localfv);
    j = ((RealViewSwitcher)findViewById(2131361911));
    T = ((ProgressBar)findViewById(2131361852));
    M();
    J();
    K();
  }
  
  private void G()
  {
    Q();
    ab = findViewById(2131361930);
    ac = ((TextView)findViewById(2131362005));
    H();
    ai.post(new ek(this));
    L();
  }
  
  private void H()
  {
    if (ab != null)
    {
      ab.findViewById(2131361926).setOnClickListener(new el(this));
      ab.findViewById(2131362648).setOnClickListener(new em(this));
      ab.findViewById(2131362649).setOnClickListener(new en(this));
      ab.findViewById(2131362647).setOnClickListener(new eo(this));
      ab.findViewById(2131362418).setOnClickListener(new ep(this));
    }
  }
  
  private void I() {}
  
  private void J()
  {
    r = new by(this, (RelativeLayout)findViewById(2131361914), 1);
    t = new o(this, true);
    r.a("playing", t);
    r.a("playing", Boolean.valueOf(false));
    u = new com.estrongs.android.ui.e.j(this, true);
    r.a("playlist", u);
    v = new hl(this, true);
    r.a("playlist_edit", v);
  }
  
  private void K()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131361908);
    o = new eq(this, localLinearLayout, this, localLinearLayout);
  }
  
  private void L()
  {
    y = k.findViewById(2131361922);
    y.setOnClickListener(new eu(this));
    z = ((Button)k.findViewById(2131361923));
    a(true);
  }
  
  private void M()
  {
    k = findViewById(2131361915);
    l = ((TextView)k.findViewById(2131361919));
    m = ((TextView)k.findViewById(2131361920));
    w = k.findViewById(2131361918);
    x = k.findViewById(2131361921);
    k.findViewById(2131361916).setOnClickListener(new ew(this));
    View localView = k.findViewById(2131361928);
    G = ((ImageView)localView.findViewById(2131361929));
    localView.setOnClickListener(new ex(this));
    R = findViewById(2131361925);
    R.setOnClickListener(new ez(this));
  }
  
  private void N()
  {
    if (aa.b())
    {
      R.setVisibility(0);
      return;
    }
    R.setVisibility(8);
  }
  
  private void O()
  {
    if (A == null)
    {
      A = ProgressDialog.a(this, getString(2131427442), getString(2131427783), true, true);
      return;
    }
    A.show();
  }
  
  private void P()
  {
    if (A != null) {
      A.dismiss();
    }
  }
  
  private void Q()
  {
    p = g.a(this).inflate(2130903057, null);
    n = ((ImageView)p.findViewById(2131361931));
    ((ImageView)p.findViewById(2131361932)).setOnClickListener(new fe(this));
    q = new DragListView(this, null);
    q.setOnScrollListener(new ff(this));
    q.setCacheColorHint(0);
    q.setSelector(2130837596);
    ag = new ac(this, ai);
    q.setAdapter(ag);
    j.addView(p);
    j.addView(q);
    f = new fg(this);
    j.a(f);
    q.setOnItemClickListener(ag);
    q.setOnItemLongClickListener(new fh(this));
    j.c(false);
  }
  
  private void R()
  {
    t.b(Y);
    t.c(Z);
  }
  
  private void S()
  {
    b(500);
  }
  
  private void T()
  {
    ai.removeMessages(1);
  }
  
  private void U()
  {
    Message localMessage = ai.obtainMessage(6);
    ai.removeMessages(6);
    ai.sendMessage(localMessage);
  }
  
  private void V()
  {
    if (H)
    {
      unbindService(aj);
      H = false;
    }
  }
  
  private void W()
  {
    int i1;
    if (I != null)
    {
      F.q();
      al localal = ao.a().b();
      if (a == -1L) {
        localal.d();
      }
      for (;;)
      {
        i1 = 0;
        while (i1 < I.size())
        {
          localal.b((String)I.get(i1));
          i1 += 1;
        }
        ao.a().a(null);
        localal = ao.a().b();
      }
      F.a(localal);
      Z = F.v();
      Y = F.u();
      a(F.i(), true);
      J = F.g();
      a(true);
      h();
      if (!F.e()) {
        break label326;
      }
      i1 = F.l();
      if (!F.f()) {
        break label292;
      }
      h(2, i1);
      h(3, i1);
      label195:
      R();
      if (J == null) {
        break label386;
      }
      a(J);
    }
    for (;;)
    {
      if (K)
      {
        K = false;
        j.a(1);
        f.c(1);
      }
      return;
      if (F.h() != null)
      {
        Z = F.v();
        Y = F.u();
        break;
      }
      x();
      K = true;
      break;
      label292:
      if (F.d())
      {
        h(3, i1);
        break label195;
      }
      h(3, i1);
      h(4, i1);
      break label195;
      label326:
      if ((F.h() == null) || (F.h().c().isEmpty())) {
        break label195;
      }
      int i2 = F.l();
      i1 = i2;
      if (i2 == -1) {
        i1 = 0;
      }
      h(2, i1);
      h(3, i1);
      break label195;
      label386:
      a(getText(2131427949));
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    Message localMessage = ai.obtainMessage(8);
    arg1 = paramInt;
    obj = Boolean.valueOf(paramBoolean);
    ai.removeMessages(8);
    ai.sendMessageDelayed(localMessage, 100L);
  }
  
  private void a(gd paramgd)
  {
    if (paramgd == null) {}
    do
    {
      return;
      paramgd.a(null);
    } while (((paramgd.e()) && (!paramgd.f())) || (paramgd.d()));
    paramgd.n();
    paramgd.q();
    paramgd.z();
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
        paramUri = com.estrongs.android.util.am.bq(str);
      }
    }
  }
  
  public static String[] a(String paramString)
  {
    if (com.estrongs.android.util.am.ba(paramString)) {
      return d(paramString);
    }
    Exception[] arrayOfException = new Exception[1];
    String[][] arrayOfString = new String[1][];
    paramString = new Thread(new fu(arrayOfString, paramString, arrayOfException));
    paramString.start();
    paramString.join();
    if (arrayOfException[0] != null) {
      throw arrayOfException[0];
    }
    return arrayOfString[0];
  }
  
  private void b(int paramInt)
  {
    Message localMessage = ai.obtainMessage(1);
    ai.removeMessages(1);
    ai.sendMessageDelayed(localMessage, paramInt);
  }
  
  private void b(ak paramak)
  {
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    if (paramak != null)
    {
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      localArrayList3 = new ArrayList();
      if (bd.a(e)) {
        break label357;
      }
      localArrayList1.add(e);
      localArrayList3.add(e);
      localArrayList2.add(getString(2131428428) + " \"" + e + "\"");
    }
    for (;;)
    {
      if (!bd.a(g))
      {
        localArrayList1.add(g);
        localArrayList3.add(getString(2131428446) + " " + g);
        localArrayList2.add(getString(2131428428) + " \"" + g + "\"");
      }
      if (!bd.a(f))
      {
        localArrayList1.add(f);
        localArrayList3.add(getString(2131428447) + " " + f);
        localArrayList2.add(getString(2131428428) + " \"" + f + "\"");
      }
      paramak = new ks(this, "music", localArrayList1, localArrayList2, localArrayList3);
      paramak.a(new fo(this));
      paramak.show();
      return;
      label357:
      if (!bd.a(b)) {
        try
        {
          String str = com.estrongs.android.util.am.bB(com.estrongs.android.util.am.d(b));
          if (!bd.a(str))
          {
            localArrayList1.add(str);
            localArrayList3.add(str);
            localArrayList2.add(getString(2131428428) + " \"" + str + "\"");
          }
        }
        catch (Exception localException) {}
      }
    }
  }
  
  public static void b(String[] paramArrayOfString)
  {
    P = paramArrayOfString;
  }
  
  private void c(boolean paramBoolean)
  {
    V = 0;
    F = D;
    ((ImageView)R.findViewById(2131361927)).setImageResource(2130838199);
    if ((F != null) && (paramBoolean))
    {
      F.q();
      F.d(F.l());
      F.a();
    }
    T.setVisibility(8);
  }
  
  private void d(int paramInt1, int paramInt2) {}
  
  private static String[] d(String paramString)
  {
    String[] arrayOfString = new ai(paramString).a();
    int i2 = arrayOfString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      String str2 = arrayOfString[i1];
      String str1 = str2;
      if (!com.estrongs.android.util.am.t(str2))
      {
        str2 = com.estrongs.android.util.am.bo(str2);
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
    Message localMessage = ai.obtainMessage(2);
    arg1 = paramInt;
    ai.removeMessages(2);
    ai.sendMessageDelayed(localMessage, 100L);
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    if ((ah != -1) && (paramInt1 != 0))
    {
      d(ah, 0);
      ah = -1;
    }
    switch (paramInt1)
    {
    }
    for (;;)
    {
      h();
      return;
      t.h();
      u.h();
      d(paramInt2, 0);
      if (C != null)
      {
        C.a();
        continue;
        t.j();
        u.j();
        d(paramInt2, 1);
        continue;
        t.i();
        u.i();
        d(paramInt2, 2);
        continue;
        t.h();
        u.h();
        d(paramInt2, 3);
        C.a();
        ah = paramInt2;
        g();
        a(F.y());
        h();
      }
    }
  }
  
  private String f(int paramInt)
  {
    paramInt /= 1000;
    return String.format("%02d:%02d", new Object[] { Integer.valueOf(paramInt / 60), Integer.valueOf(paramInt % 60) });
  }
  
  private void f(int paramInt1, int paramInt2)
  {
    int i1 = 1;
    a(paramInt1, paramInt2);
    if (paramInt1 == 0) {
      paramInt1 = i1;
    }
    for (;;)
    {
      v.d(paramInt1);
      return;
      if (paramInt1 == 1) {
        paramInt1 = 2;
      } else {
        paramInt1 = 3;
      }
    }
  }
  
  private void g(int paramInt1, int paramInt2)
  {
    Message localMessage = ai.obtainMessage(7);
    arg1 = paramInt2;
    arg2 = paramInt1;
    ai.removeMessages(7);
    ai.sendMessageDelayed(localMessage, 100L);
  }
  
  private void h(int paramInt1, int paramInt2)
  {
    Message localMessage = ai.obtainMessage(4);
    arg1 = paramInt1;
    arg2 = paramInt2;
    ai.sendMessage(localMessage);
  }
  
  public static String[] z()
  {
    return P;
  }
  
  public void a(int paramInt)
  {
    j.b(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ImageView localImageView;
    if (ab != null)
    {
      if (paramInt1 != paramInt2) {
        break label156;
      }
      ab.findViewById(2131362649).setVisibility(0);
      ab.findViewById(2131362648).setVisibility(8);
      ac.setText(paramInt1 + "/" + paramInt2);
      localImageView = (ImageView)ab.findViewById(2131362647).findViewById(2131361853);
      boolean bool = ag.c();
      localImageView.setEnabled(bool);
      if (!bool) {
        break label188;
      }
      localImageView.setColorFilter(null);
    }
    for (;;)
    {
      localImageView = (ImageView)ab.findViewById(2131362418).findViewById(2131361853);
      if (paramInt1 != 1) {
        break label207;
      }
      localImageView.setEnabled(true);
      localImageView.setColorFilter(null);
      return;
      label156:
      ab.findViewById(2131362649).setVisibility(8);
      ab.findViewById(2131362648).setVisibility(0);
      break;
      label188:
      localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
    }
    label207:
    localImageView.setEnabled(false);
    localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (n != null) {
      n.setImageBitmap(paramBitmap);
    }
    if (u != null) {
      u.a(paramBitmap);
    }
    if ((af != null) && (!af.isRecycled()) && (af != paramBitmap)) {}
    try
    {
      af.recycle();
      af = paramBitmap;
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
  
  public void a(ak paramak)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramak);
    F.a(localLinkedList);
    if (F.h().c().size() == 0)
    {
      F.q();
      a(-1, false);
    }
    for (;;)
    {
      a(false);
      h();
      return;
      a(F.l(), true);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    z.setText(paramCharSequence);
  }
  
  public void a(List<ak> paramList)
  {
    paramList.toArray(new ak[paramList.size()]);
    Object localObject = ao.a();
    if (!((ao)localObject).c()) {
      ((ao)localObject).a(null);
    }
    localObject = ((ao)localObject).b();
    ((al)localObject).d();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((al)localObject).b(nextb);
    }
    F.a((al)localObject);
    e(0);
    a(true);
    h();
  }
  
  public void a(List<ak> paramList, al paramal)
  {
    if (F.h() == paramal)
    {
      paramal = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramal.add(nextb);
      }
      F.b(paramal);
    }
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramal.b(nextb);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    al localal;
    String str;
    if (F != null)
    {
      if (!paramBoolean) {
        break label66;
      }
      localal = F.h();
      ag.a(localal);
      str = localal.a();
      if (str != null) {
        break label55;
      }
      z.setText(localal.b());
    }
    for (;;)
    {
      ag.notifyDataSetChanged();
      return;
      label55:
      z.setText(str);
      continue;
      label66:
      localal = ag.a();
      str = localal.a();
      if (str == null) {
        z.setText(localal.b());
      } else {
        z.setText(str);
      }
    }
  }
  
  public boolean a()
  {
    return V == 0;
  }
  
  public void b()
  {
    if (ab != null) {
      ab.setVisibility(0);
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    if (F.h() == ag.a()) {
      F.a(paramInt1, paramInt2);
    }
    for (;;)
    {
      b(false);
      return;
      al localal = ag.a();
      localal.a((ak)localal.c().get(paramInt1), paramInt2);
    }
  }
  
  public void b(List<ak> paramList)
  {
    al localal = q();
    int i2;
    if (F.h() == localal)
    {
      ak localak = w();
      int i1 = 0;
      i2 = 0;
      while (i1 < paramList.size())
      {
        if (((ak)paramList.get(i1)).equals(localak)) {
          i2 = 1;
        }
        i1 += 1;
      }
      F.a(paramList);
      if (localal.c().size() == 0)
      {
        F.q();
        a(-1, false);
      }
    }
    for (;;)
    {
      a(false);
      h();
      return;
      if (i2 != 0)
      {
        a(F.l(), true);
        continue;
        localal.a(paramList);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool = false;
    if (ag.a() == F.h())
    {
      int i1 = F.l();
      ac localac = ag;
      if ((!F.e()) || (F.f())) {
        bool = true;
      }
      localac.a(i1, bool, F.d());
      ag.notifyDataSetChanged();
      if (paramBoolean)
      {
        if (c < i1) {
          break label97;
        }
        q.setSelection(i1);
      }
      label97:
      while (d > i1 + 1) {
        return;
      }
      q.setSelection(i1 + c + 2 - d);
      return;
    }
    ag.a(-1, false, false);
    ag.notifyDataSetChanged();
  }
  
  public void c()
  {
    if (ab != null) {
      ab.setVisibility(4);
    }
  }
  
  public void d()
  {
    if (Q.p())
    {
      if (V != 1)
      {
        D();
        F.a();
      }
      return;
    }
    if (S == null) {
      E();
    }
    S.show();
  }
  
  public void e()
  {
    if (ad == null) {
      ad = new fa(this, this);
    }
    if (!ad.b())
    {
      ad.c();
      G.setImageResource(2130838204);
      return;
    }
    ad.d();
  }
  
  public void f()
  {
    if (ae == null)
    {
      ae = new com.estrongs.android.pop.app.a.a(this);
      ae.a(new fb(this));
    }
    if (!ae.a())
    {
      ae.b();
      return;
    }
    ae.c();
  }
  
  public void finish()
  {
    super.finish();
    N = true;
    if (F != null)
    {
      a(D);
      a(E);
    }
  }
  
  public void g()
  {
    ak localak = F.r();
    if (l != null) {
      l.setText(F.s());
    }
    if (u != null) {
      u.a(F.s());
    }
    if (localak != null) {
      if (localak.c())
      {
        if (m != null) {
          m.setText(F.t());
        }
        if (u != null) {
          u.b(F.t());
        }
      }
    }
    for (;;)
    {
      h();
      return;
      new Thread(new fc(this, localak)).start();
      continue;
      if (m != null) {
        m.setText("");
      }
      if (u != null) {
        u.b("");
      }
    }
  }
  
  public void h()
  {
    b(true);
  }
  
  public int i()
  {
    return j.h();
  }
  
  public void j()
  {
    int i1 = 1;
    if ((F == null) || (F.h() == null)) {}
    label105:
    label108:
    for (;;)
    {
      return;
      boolean bool;
      if (((F.e()) && (!F.f())) || (F.d()))
      {
        bool = true;
        if ((!bool) || (F.c() <= 5000L)) {
          break label105;
        }
        k();
      }
      for (;;)
      {
        if (i1 != 0) {
          break label108;
        }
        i1 = F.k();
        F.q();
        a(i1, bool);
        return;
        bool = false;
        break;
        i1 = 0;
      }
    }
  }
  
  public void k()
  {
    F.a(0L);
  }
  
  public void l()
  {
    Y = ((Y + 1) % 2);
    F.b(Y);
    R();
  }
  
  public void m()
  {
    if (F == null) {}
    do
    {
      return;
      if (F.h() != null) {
        break;
      }
      if (t != null) {
        t.h();
      }
    } while (u == null);
    u.h();
    return;
    if ((!F.e()) || (F.f()))
    {
      if (F.f())
      {
        F.p();
        return;
      }
      F.x();
      return;
    }
    F.w();
  }
  
  public void n()
  {
    Z = ((Z + 1) % 3);
    F.c(Z);
    R();
  }
  
  public void o()
  {
    int i1;
    if (F != null)
    {
      i1 = F.j();
      bool = F.f();
      if (a()) {
        F.q();
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
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.estrongs.android.ui.pcs.j localj = com.estrongs.android.ui.pcs.r.a().j();
    if (localj != null) {
      localj.a(paramInt1, paramIntent, paramInt2);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ak = null;
    com.estrongs.android.ui.f.e.d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = ad.a(this);
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
        B = bool;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        B = true;
        continue;
        ((List)localObject).add(paramBundle[i1]);
        continue;
      }
      localIntent = getIntent();
      bool = localIntent.getBooleanExtra("hasplaylist", false);
      if (!bool) {
        break label501;
      }
      paramBundle = z();
      if (!a(paramBundle)) {
        break label698;
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
      ag.a(this, 2131428375, 1);
      finish();
      return;
    }
    paramBundle = (String[])((List)localObject).toArray(new String[0]);
    label268:
    label299:
    label501:
    label656:
    label671:
    label693:
    label698:
    for (;;)
    {
      K = localIntent.getBooleanExtra("showlist", false);
      if ((paramBundle == null) && (!K))
      {
        paramBundle = localIntent.getData();
        if (paramBundle != null)
        {
          localObject = Uri.decode(paramBundle.toString());
          if (((String)localObject).startsWith("file://"))
          {
            paramBundle = ((String)localObject).substring("file://".length());
            L = paramBundle;
            I = new LinkedList();
            I.clear();
            I.add(paramBundle);
          }
        }
        else
        {
          F();
          G();
          paramBundle = ao.a();
          if (!paramBundle.h())
          {
            O();
            paramBundle.a(new fp(this));
            new fr(this, paramBundle).start();
          }
          if (!paramBundle.d()) {
            new fs(this, paramBundle).start();
          }
          paramBundle = new ContextWrapper(this);
          localObject = new Intent(paramBundle, AudioPlayerService.class);
          localIntent.putExtra("hasplaylist", bool);
          paramBundle.startService((Intent)localObject);
          s();
          aa = com.estrongs.android.util.a.a(this, false, "PopAudioPlayer");
          E = new fy(this);
          Q.a(E);
          B();
          if (!localIntent.getBooleanExtra("Chromecast", false)) {
            break;
          }
          if (!Q.p()) {
            break label671;
          }
          D();
          if (localIntent.getBooleanExtra("ChromecastNotification", false)) {
            break label656;
          }
          F = E;
          d();
        }
      }
      for (;;)
      {
        W();
        return;
        if ((localIntent.getData() == null) || (!Uri.decode(localIntent.getData().toString()).endsWith(".m3u"))) {
          break label693;
        }
        try
        {
          paramBundle = a(localIntent.getData());
        }
        catch (Exception paramBundle)
        {
          ag.a(this, 2131428375, 1);
          finish();
          return;
        }
        paramBundle = (Bundle)localObject;
        if (!((String)localObject).startsWith("http://127.0.0.1:59777/")) {
          break label268;
        }
        paramBundle = AudioPlayerService.j + ((String)localObject).substring("http://127.0.0.1:59777/".length());
        break label268;
        if (paramBundle == null) {
          break label299;
        }
        I = new LinkedList();
        I.clear();
        i1 = 0;
        while (i1 < paramBundle.length)
        {
          I.add(paramBundle[i1]);
          i1 += 1;
        }
        break label299;
        I = null;
        E.b();
      }
      F = E;
      W();
      d();
      return;
    }
  }
  
  protected void onDestroy()
  {
    M = true;
    if (F != null) {
      V();
    }
    try
    {
      for (;;)
      {
        if (!"Market".equalsIgnoreCase("Market"))
        {
          unregisterReceiver(W);
          unregisterReceiver(X);
        }
        if (E != null) {
          Q.b(E);
        }
        if (S != null) {
          S.a();
        }
        super.onDestroy();
        return;
        if (("Market".startsWith("Spreadtrum")) || ("Market".equalsIgnoreCase("Huawei")))
        {
          if (O)
          {
            O = false;
            s();
          }
          else
          {
            V();
          }
        }
        else {
          V();
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
    if (paramInt == 4)
    {
      if (ag.b())
      {
        u();
        return true;
      }
      N = true;
    }
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
        } while (a());
        Q.v();
        return true;
        if (paramInt != 25) {
          break;
        }
      } while (a());
      Q.w();
      return true;
    } while (paramInt != 82);
    e();
    return true;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    String[] arrayOfString1 = null;
    int i1 = 0;
    try
    {
      Object localObject;
      boolean bool;
      if (paramIntent.getBooleanExtra("hasplaylist", false))
      {
        arrayOfString1 = z();
        P = null;
        localObject = arrayOfString1;
        if (a(arrayOfString1))
        {
          localObject = new ArrayList();
          if (i1 < arrayOfString1.length)
          {
            bool = arrayOfString1[i1].endsWith(".m3u");
            if (bool) {}
            for (;;)
            {
              try
              {
                String[] arrayOfString2 = a(arrayOfString1[i1]);
                if (arrayOfString2 != null) {
                  ((List)localObject).addAll(Arrays.asList(arrayOfString2));
                }
              }
              catch (Exception localException)
              {
                continue;
              }
              i1 += 1;
              break;
              ((List)localObject).add(arrayOfString1[i1]);
            }
          }
          if (((List)localObject).size() == 0)
          {
            ag.a(this, 2131428375, 1);
            return;
          }
          localObject = (String[])((List)localObject).toArray(new String[0]);
        }
        if (localObject != null) {
          return;
        }
        paramIntent = paramIntent.getData();
        if (paramIntent == null) {
          return;
        }
        localObject = Uri.decode(paramIntent.toString());
        if (!((String)localObject).startsWith("file://")) {
          break label302;
        }
        paramIntent = ((String)localObject).substring("file://".length());
        L = paramIntent;
      }
      for (;;)
      {
        I = new LinkedList();
        I.clear();
        I.add(paramIntent);
        V();
        s();
        return;
        localObject = arrayOfString1;
        if (paramIntent.getData() == null) {
          break;
        }
        bool = Uri.decode(paramIntent.getData().toString()).endsWith(".m3u");
        localObject = arrayOfString1;
        if (!bool) {
          break;
        }
        try
        {
          localObject = a(paramIntent.getData());
        }
        catch (Exception paramIntent)
        {
          ag.a(this, 2131428375, 1);
          return;
        }
        label302:
        paramIntent = (Intent)localObject;
        if (((String)localObject).startsWith("http://127.0.0.1:59777/")) {
          paramIntent = AudioPlayerService.j + ((String)localObject).substring("http://127.0.0.1:59777/".length());
        }
      }
      return;
    }
    catch (Exception paramIntent) {}
  }
  
  protected void onPause()
  {
    if ((F != null) && (F.e()) && (!F.f())) {
      F.a(true);
    }
    if (aa != null) {
      aa.c();
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (aa != null) {
      aa.b();
    }
    int i1;
    if (F != null)
    {
      F.a(false);
      if (!e) {
        if (F.e())
        {
          i1 = F.l();
          if (!F.f()) {
            break label80;
          }
          h(2, i1);
        }
      }
    }
    for (;;)
    {
      N();
      return;
      label80:
      if (F.d())
      {
        h(3, i1);
      }
      else
      {
        h(1, i1);
        continue;
        e = false;
        try
        {
          F.q();
          al localal = ao.a().b();
          localal.d();
          i1 = 0;
          while (i1 < I.size())
          {
            localal.b((String)I.get(i1));
            i1 += 1;
          }
          F.a(localal);
          a(F.i(), true);
          R();
          if (J != null)
          {
            a(J);
            continue;
          }
          a(getText(2131427949));
        }
        catch (Exception localException) {}
        if (("Market".startsWith("Spreadtrum")) || ("Market".equalsIgnoreCase("Huawei"))) {
          s();
        }
      }
    }
  }
  
  protected void onStart()
  {
    S();
    if (F != null) {
      F.a(g);
    }
    super.onStart();
  }
  
  protected void onStop()
  {
    if (F != null)
    {
      O = F.f();
      if ((F.e()) && (!O)) {
        F.o();
      }
    }
    if (("Market".startsWith("Spreadtrum")) || ("Market".equalsIgnoreCase("Huawei"))) {
      V();
    }
    T();
    super.onStop();
  }
  
  public void p()
  {
    if (F != null) {
      F.q();
    }
  }
  
  public al q()
  {
    if (ag != null) {
      return ag.a();
    }
    return null;
  }
  
  public void r()
  {
    if (F != null)
    {
      al localal = ag.a();
      if (localal != null)
      {
        ao.a().b(localal);
        if (localal == F.h())
        {
          F.q();
          x();
        }
        a(true);
        h();
      }
    }
  }
  
  void s()
  {
    if (!H)
    {
      bindService(new Intent(this, AudioPlayerService.class), aj, 1);
      H = true;
    }
  }
  
  public Rect t()
  {
    if (ak == null)
    {
      ak = new Rect();
      int[] arrayOfInt = new int[2];
      j.getLocationInWindow(arrayOfInt);
      ak = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + j.getMeasuredWidth(), arrayOfInt[1] + j.getMeasuredHeight());
    }
    return ak;
  }
  
  public void u()
  {
    ag.a(false);
  }
  
  public List<ak> v()
  {
    return ag.d();
  }
  
  public ak w()
  {
    return F.r();
  }
  
  public void x()
  {
    ao localao = ao.a();
    F.a(localao.e());
    ag.a(localao.e());
    a(0, false);
  }
  
  public void y()
  {
    boolean bool;
    if (F.h() == ao.a().e())
    {
      ao.a().f();
      if (!F.f())
      {
        bool = true;
        F.a(ao.a().e());
        a(0, bool);
      }
    }
    for (;;)
    {
      ag.a(ao.a().e());
      a(false);
      h();
      return;
      bool = false;
      break;
      ao.a().f();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopAudioPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */