package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.ConditionVariable;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.a.p;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.d.k;
import com.estrongs.android.d.m;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.c.b.l;
import com.estrongs.android.ui.c.b.s;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.fs.i;
import com.estrongs.fs.n;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public class aw
  extends as<com.estrongs.fs.h>
{
  protected static DateFormat G;
  private static com.estrongs.android.util.bf[] aA = null;
  private static Object aB = new Object();
  private static com.estrongs.android.util.bf[] aw = null;
  private static com.estrongs.android.util.bf[] ax = null;
  private static com.estrongs.android.util.bf[] ay = null;
  private static com.estrongs.android.util.bf[] az = null;
  LinkedList<com.estrongs.fs.h> A = new LinkedList();
  com.estrongs.fs.b.aj B;
  com.estrongs.fs.util.a.a C = new com.estrongs.fs.util.a.d(true);
  i D;
  Drawable E;
  HashMap<String, Parcelable> F = new HashMap();
  protected cb H;
  protected k I;
  protected boolean J = false;
  protected boolean K = false;
  protected boolean L = false;
  protected boolean M = false;
  protected Stack<com.estrongs.fs.h> N = new Stack();
  protected boolean O = false;
  protected i P = null;
  protected int Q;
  protected int R;
  protected int S;
  protected final Handler T = new Handler();
  protected TypedMap U = new TypedMap();
  protected boolean V = true;
  FileObserver W = null;
  boolean X = false;
  protected com.estrongs.fs.a.e Y = new ax(this);
  protected com.estrongs.android.a.d Z = new bh(this);
  private ad a;
  protected com.estrongs.android.pop.h aa;
  long ab = 0L;
  protected int ac = -1;
  private boolean ai = false;
  private boolean aj;
  private boolean ak = false;
  private String al = null;
  private View am;
  private String an = "all";
  private al ao;
  private long ap = 0L;
  private boolean aq = false;
  private boolean ar = false;
  private ProgressDialog as = null;
  private float at = 0.0F;
  private float au = 0.0F;
  private float av = 0.0F;
  private Map<com.estrongs.fs.h, TypedMap> b = new HashMap();
  private boolean c = false;
  private boolean d = false;
  public boolean r = false;
  public boolean s = false;
  public boolean t = false;
  public String u = null;
  protected String v;
  protected com.estrongs.fs.h w;
  cc x;
  protected ca y;
  com.estrongs.fs.d z;
  
  public aw(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    this(paramActivity, parama, paramcb, true);
  }
  
  public aw(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb, boolean paramBoolean)
  {
    super(paramActivity);
    C = parama;
    aj = paramBoolean;
    z = com.estrongs.fs.d.a(paramActivity);
    H = paramcb;
    E = paramActivity.getResources().getDrawable(2130837647);
    a = ad.a(paramActivity);
    G = a.E();
    ao = al.a(paramActivity);
    H = paramcb;
    as = new ProgressDialog(paramActivity);
    i();
  }
  
  private float a(TextView paramTextView, float paramFloat, String paramString)
  {
    float f3 = paramTextView.getTextSize();
    label23:
    Object localObject;
    if ((paramTextView == null) || (paramFloat <= 0.0F) || (paramString == null))
    {
      return f3;
      paramTextView.setTextSize(0, localObject);
    }
    for (;;)
    {
      float f2 = localObject;
      if (paramString != TextUtils.ellipsize(paramString, paramTextView.getPaint(), paramFloat, TextUtils.TruncateAt.END))
      {
        localObject -= 1.0F;
        if (f1 >= 0.0F) {
          break label23;
        }
        f2 = f1;
      }
      if (f2 < 0.0F) {
        break;
      }
      return f2;
      float f1 = f3;
    }
  }
  
  public static String a(View paramView)
  {
    try
    {
      paramView = ((com.estrongs.fs.h)getTagh).getAbsolutePath();
      return paramView;
    }
    catch (Exception paramView) {}
    return null;
  }
  
  private void a(com.estrongs.fs.b.aj paramaj, int paramInt, String paramString)
  {
    boolean bool;
    if (c != null)
    {
      if (!aq) {
        aq = d.a(b.getPath(), c, this);
      }
      if (((am.aB(v)) && (com.estrongs.fs.a.a.c(v).size() == 3)) || ("pcsres://".equals(v)) || (v.startsWith("usb://"))) {
        u();
      }
      c(true);
      bool = false;
      if (ai) {
        ai = false;
      }
      if (H != null) {
        H.a(this, bool);
      }
      if ((am.bb(v)) && (a.g(v))) {
        if ((am.K(v)) && (a.h(v).equalsIgnoreCase(am.a(v))))
        {
          if (!bd.m()) {
            break label505;
          }
          new Thread(new bn(this)).start();
        }
      }
    }
    for (;;)
    {
      a.b(paramString);
      al = null;
      AppFolderInfoManager.d().a(v, A);
      Object localObject;
      do
      {
        return;
        aq = false;
        if (paramInt == 5)
        {
          if (getTaskResulta != 1)
          {
            j();
            bool = false;
            break;
          }
          u();
          bool = false;
          break;
        }
        localObject = paramaj.getTaskResult();
      } while (a == 1);
      if (bd.a("ALL_LOADED", b))
      {
        u();
        b(C);
        label328:
        paramaj = b.getPath();
        localObject = (Parcelable)F.get(paramaj);
        if (paramaj.equals(v))
        {
          if ((localObject == null) || (al != null)) {
            break label494;
          }
          g.onRestoreInstanceState((Parcelable)localObject);
        }
      }
      for (;;)
      {
        if ((al != null) && (!am.aO(al)) && (!am.aG(paramaj)))
        {
          paramInt = l(al);
          if (paramInt >= 0)
          {
            g.setSelected(true);
            g.setSelection(paramInt);
            g.setFocusable(true);
            g.post(new bm(this, paramInt));
          }
        }
        bool = true;
        break;
        if (!(b instanceof List)) {
          break label328;
        }
        a(paramaj, (List)b);
        break label328;
        label494:
        g.setSelection(0);
      }
      label505:
      com.estrongs.fs.impl.adb.c.i(v);
    }
  }
  
  private void a(String paramString)
  {
    if (am.G(v) == am.G(paramString))
    {
      Iterator localIterator = N.iterator();
      while (localIterator.hasNext()) {
        if (((com.estrongs.fs.h)localIterator.next()).getPath().startsWith(paramString)) {
          localIterator.remove();
        }
      }
    }
  }
  
  public static void ae()
  {
    synchronized (aB)
    {
      aw = null;
      aA = null;
      ax = null;
      az = null;
      return;
    }
  }
  
  private com.estrongs.fs.h c(boolean paramBoolean)
  {
    ak = true;
    M = true;
    for (;;)
    {
      synchronized (N)
      {
        com.estrongs.fs.h localh2;
        com.estrongs.fs.h localh1;
        if (!N.isEmpty())
        {
          localh2 = (com.estrongs.fs.h)N.pop();
          localh1 = localh2;
          if (am.e(localh2.getPath(), v))
          {
            if (!N.isEmpty())
            {
              localh1 = (com.estrongs.fs.h)N.pop();
              ar = true;
              a(localh1, (TypedMap)b.remove(localh1));
              return localh1;
            }
            return null;
          }
        }
        else if ((paramBoolean) && (am.bb(v)))
        {
          localh2 = com.estrongs.fs.d.m(am.bk(v));
          localh1 = localh2;
          if (localh2 == null) {
            return null;
          }
        }
        else
        {
          return null;
        }
      }
    }
  }
  
  private void p()
  {
    if (H != null) {
      H.a();
    }
    if ((!V()) && (V))
    {
      c(m(X()));
      return;
    }
    ai = true;
  }
  
  private void q()
  {
    if (ac == -1) {
      ac = al.a(ad).i();
    }
  }
  
  public TypedMap E()
  {
    return U;
  }
  
  public boolean F()
  {
    return d;
  }
  
  public void G()
  {
    synchronized (N)
    {
      N.clear();
      return;
    }
  }
  
  public boolean H()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity == null) {
      if (O) {}
    }
    while ((localFileExplorerActivity.y() == this) && (!O))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public void I()
  {
    if (aj)
    {
      com.estrongs.fs.a.b.a().b(Y);
      com.estrongs.fs.a.b.a().a(Y);
      O = false;
    }
  }
  
  protected void J()
  {
    g.setOnScrollListener(new by(this));
  }
  
  public void K()
  {
    I = new bj(this);
  }
  
  public com.estrongs.fs.util.a.a L()
  {
    return C;
  }
  
  public int M()
  {
    if (C == null) {}
    do
    {
      do
      {
        return 0;
      } while ((C instanceof com.estrongs.fs.util.a.d));
      if ((C instanceof com.estrongs.fs.util.a.f)) {
        return 1;
      }
      if ((C instanceof com.estrongs.fs.util.a.e)) {
        return 2;
      }
    } while (!(C instanceof com.estrongs.fs.util.a.c));
    return 3;
  }
  
  public int N()
  {
    if (C == null) {}
    while (C.a()) {
      return 0;
    }
    return 1;
  }
  
  public boolean O()
  {
    synchronized (N)
    {
      boolean bool = N.isEmpty();
      return bool;
    }
  }
  
  public int P()
  {
    synchronized (N)
    {
      int i = N.size();
      return i;
    }
  }
  
  public com.estrongs.fs.d Q()
  {
    return z;
  }
  
  public void R()
  {
    if (B != null) {
      B.a(true);
    }
    if (I != null) {
      I.d();
    }
  }
  
  protected boolean S()
  {
    return true;
  }
  
  public boolean T()
  {
    return (p != null) && (p.getVisibility() == 0);
  }
  
  public void U()
  {
    if (I != null) {
      I.b();
    }
  }
  
  public boolean V()
  {
    return O;
  }
  
  protected bu W()
  {
    bu localbu = new bu(this);
    b = new ConditionVariable();
    com.estrongs.fs.b.aj localaj = new com.estrongs.fs.b.aj(z, aa);
    localaj.a(new bo(this, localbu));
    localaj.addTaskStatusChangeListener(new bq(this, localbu));
    localaj.addProgressListener(new bc(this));
    a = localaj;
    return localbu;
  }
  
  protected int X()
  {
    return 2131427442;
  }
  
  public k Y()
  {
    return I;
  }
  
  protected void Z()
  {
    if ((!o()) && (am.a(c(), U)) && (g.getLastVisiblePosition() == g.getCount() - 1))
    {
      if (am == null) {
        am = k(2131362043);
      }
      if (am != null)
      {
        am.setVisibility(0);
        am.findViewById(2131362044).setVisibility(8);
        localTextView = (TextView)am.findViewById(2131362045);
        localTextView.setText(ad.getText(2131428196));
        getLayoutParamswidth = -1;
        localTextView.setOnClickListener(new bg(this));
      }
    }
    while ((am == null) || (am.getVisibility() != 0))
    {
      TextView localTextView;
      return;
    }
    am.setVisibility(8);
  }
  
  public void a(int paramInt)
  {
    int i = k;
    super.a(paramInt);
    if ((am.ba(v)) && (!ac.a(i)) && (ac.a(paramInt))) {
      b(true);
    }
  }
  
  public void a(long paramLong)
  {
    ap = paramLong;
  }
  
  public void a(com.estrongs.android.ui.drag.d paramd)
  {
    o = paramd;
  }
  
  public void a(ca paramca)
  {
    y = paramca;
  }
  
  public void a(cc paramcc)
  {
    x = paramcc;
  }
  
  protected void a(com.estrongs.android.widget.e parame, int paramInt) {}
  
  protected void a(com.estrongs.fs.b.aj paramaj, List<com.estrongs.fs.h> paramList)
  {
    if (!bd.a(B, paramaj)) {
      return;
    }
    u();
    c = am.bg(w.getPath());
    c(paramList);
    int i = A.size();
    if (i == 0) {
      if (am.bg(c())) {
        if (am.aV(c())) {
          f(2131427741);
        }
      }
    }
    for (;;)
    {
      b(A);
      try
      {
        if (am.aE(c())) {
          if ((!l.m()) && (r.a().b())) {
            new Thread(new be(this)).start();
          }
        }
        for (;;)
        {
          if (ar)
          {
            g.requestFocus();
            ar = false;
          }
          g.post(new bf(this));
          return;
          if (am.K(c()))
          {
            f(2131428725);
            break;
          }
          f(2131427827);
          break;
          if ((am.aB(c())) || (am.az(c())))
          {
            if (r.a().c())
            {
              f(2131428646);
              break;
            }
            if (am.e("/files", am.a(c(), 23)))
            {
              f(2131428647);
              break;
            }
            f(2131427825);
            break;
          }
          if (am.bP(c()))
          {
            if (com.estrongs.fs.impl.l.a.b())
            {
              t();
              break;
            }
            f(2131428407);
            break;
          }
          if ("pcsres://".equals(c()))
          {
            f(2131428706);
            break;
          }
          if (!"mounted".equals(Environment.getExternalStorageState()))
          {
            f(2131427826);
            break;
          }
          f(2131427825);
          break;
          if (i < 200) {}
          for (;;)
          {
            R = i;
            b(A);
            break;
            i = 200;
          }
          if ((am.aw(v)) && (!am.aP(v))) {
            com.estrongs.fs.impl.j.b.b(ad, v);
          }
        }
      }
      catch (Exception paramaj)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(com.estrongs.fs.h paramh)
  {
    a(paramh, null);
  }
  
  protected void a(com.estrongs.fs.h paramh, TypedMap paramTypedMap)
  {
    if ((w != null) && (w.equals(paramh)) && (!am.aW(w.getPath()))) {}
    while ((z.n) && (paramh != null) && (paramh.getPath().equals("/"))) {
      return;
    }
    if (W != null)
    {
      W.stopWatching();
      W = null;
    }
    if ((!M) && (k(paramh.getAbsolutePath()))) {}
    for (;;)
    {
      synchronized (N)
      {
        if ((v != null) && (w != null) && ((N.isEmpty()) || (!am.e(paramh.getAbsolutePath(), w.getAbsolutePath()))))
        {
          N.push(w);
          TypedMap localTypedMap = new TypedMap(U);
          b.put(w, localTypedMap);
        }
        U.clear();
        if (paramTypedMap != null) {
          U.putAll(paramTypedMap);
        }
        R();
        if (v == null)
        {
          F.put(paramh.getPath(), g.onSaveInstanceState());
          w = paramh;
          v = paramh.getPath();
          if ((am.ba(v)) && (am.bW(v)) && (paramh.getName().equals("es_recycle_content")))
          {
            w = com.estrongs.fs.d.m("recycle://");
            v = "recycle://";
          }
          if (am.ba(w.getAbsolutePath()))
          {
            W = new bz(this, w.getAbsolutePath());
            W.startWatching();
          }
          V = true;
          U.put("back", Boolean.valueOf(M));
          if ((U == null) || (!U.getBoolean("refresh")) || (M)) {
            break;
          }
          b(true);
          return;
        }
      }
      if (ak)
      {
        F.put(v, null);
        ak = false;
      }
      else
      {
        F.put(v, g.onSaveInstanceState());
      }
    }
    g();
  }
  
  public void a(i parami)
  {
    P = parami;
  }
  
  public void a(com.estrongs.fs.util.a.a parama)
  {
    if (f.a() != null)
    {
      a(f.a(), parama);
      f.notifyDataSetChanged();
    }
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    a(com.estrongs.fs.d.m(paramString), paramTypedMap);
  }
  
  protected void a(List<com.estrongs.fs.h> paramList, com.estrongs.fs.util.a.a parama)
  {
    try
    {
      Collections.sort(paramList, parama);
      return;
    }
    catch (IllegalArgumentException paramList)
    {
      while ("Comparison method violates its general contract!".equals(paramList.getMessage())) {}
      throw paramList;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    J = paramBoolean1;
    K = paramBoolean2;
  }
  
  protected boolean a(m paramm)
  {
    return (g) && ((f.getTag() == null) || (c == f.getTag()));
  }
  
  public void a_()
  {
    if (B != null) {
      B.a(true);
    }
    if (I != null)
    {
      I.d();
      I.c();
      I = null;
    }
    O = true;
    if (aj) {
      com.estrongs.fs.a.b.a().b(Y);
    }
    if (W != null) {
      W.stopWatching();
    }
  }
  
  public void aa()
  {
    U.put("updateMediaStore", Boolean.valueOf(true));
    b(true);
  }
  
  public String ab()
  {
    return an;
  }
  
  public long ac()
  {
    return ap;
  }
  
  public com.estrongs.android.util.bf[] ad()
  {
    int k = 0;
    for (;;)
    {
      int i;
      synchronized (aB)
      {
        if (aw == null)
        {
          localObject2 = am.a();
          String str = com.estrongs.android.pop.b.b();
          if (((List)localObject2).remove(str)) {
            ((List)localObject2).add(0, str);
          }
          i = ((List)localObject2).size();
          if (!z.n) {
            break label287;
          }
          i = ((List)localObject2).size();
          aw = new com.estrongs.android.util.bf[i];
          j = 0;
          if (j < i)
          {
            aw[j] = new com.estrongs.android.util.bf();
            awf = true;
            awh = true;
            j += 1;
            continue;
          }
          i = k;
          if (!z.n)
          {
            aw0a = "/";
            aw0i = ((String)ad.getText(2131428245));
            aw0j = 2130837697;
            aw0h = false;
            i = k;
          }
          if (i < ((List)localObject2).size())
          {
            if (!z.n) {
              break label280;
            }
            j = i;
            awa = ((String)((List)localObject2).get(i));
            awi = z.b((String)((List)localObject2).get(i));
            awj = 2130837698;
            i += 1;
            continue;
          }
        }
        Object localObject2 = aw;
        return (com.estrongs.android.util.bf[])localObject2;
      }
      label280:
      int j = i + 1;
      continue;
      label287:
      i += 1;
    }
  }
  
  public com.estrongs.android.util.bf[] af()
  {
    Object localObject = ad.getResources().getStringArray(2131165206);
    String[] arrayOfString1;
    String[] arrayOfString2;
    int[] arrayOfInt;
    if (localObject != null)
    {
      arrayOfString1 = (String[])((String[])localObject).clone();
      arrayOfString2 = new String[arrayOfString1.length];
      arrayOfInt = new int[arrayOfString1.length];
      localObject = r.a().g();
      if (v.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
        localObject = am.bF(v.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0]) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
      }
      arrayOfString2[0] = ((String)localObject + "/files");
      arrayOfInt[0] = 2130837682;
      arrayOfString2[1] = ((String)localObject + "/pictures");
      arrayOfInt[1] = 2130837696;
      arrayOfString2[2] = ((String)localObject + "/documents");
      arrayOfInt[2] = 2130837686;
      arrayOfString2[3] = ((String)localObject + "/music");
      arrayOfInt[3] = 2130837690;
      arrayOfString2[4] = ((String)localObject + "/videos");
      arrayOfInt[4] = 2130837703;
      arrayOfString2[5] = ((String)localObject + "/apps");
      arrayOfInt[5] = 2130837683;
      arrayOfString2[6] = ((String)localObject + "/others");
      arrayOfInt[6] = 2130837692;
      arrayOfString2[7] = ((String)localObject + "/files/apps/Downloads/");
      arrayOfInt[7] = 2130837687;
    }
    try
    {
      if (l.m())
      {
        localObject = l.a(c());
        arrayOfString1[0] = (arrayOfString1[0] + " (" + j.c(b) + " / " + j.c(c) + ")");
      }
      az = new com.estrongs.android.util.bf[arrayOfString1.length];
      int i = 0;
      while (i < az.length)
      {
        az[i] = new com.estrongs.android.util.bf();
        aza = arrayOfString2[i];
        azi = arrayOfString1[i];
        azj = arrayOfInt[i];
        azf = true;
        i += 1;
      }
      return az;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public com.estrongs.android.util.bf[] ag()
  {
    if (ax == null)
    {
      if (com.estrongs.android.pop.utils.cc.a()) {}
      for (int i = 7;; i = 6)
      {
        ax = new com.estrongs.android.util.bf[i];
        i = 0;
        while (i < ax.length)
        {
          ax[i] = new com.estrongs.android.util.bf();
          axf = true;
          i += 1;
        }
      }
      ax0a = "app://user";
      ax0i = ((String)ad.getText(2131427684));
      ax0j = 2130837702;
      ax1a = "app://system";
      ax1i = ((String)ad.getText(2131427683));
      ax1j = 2130837700;
      ax2a = "app://phone";
      ax2i = ((String)ad.getText(2131428206));
      ax2j = 2130837693;
      ax3a = "app://sdcard";
      ax3i = ((String)ad.getText(2131428207));
      ax3j = 2130837699;
      if (!com.estrongs.android.pop.utils.cc.a()) {
        break label380;
      }
      ax4a = "app://update";
      ax4i = ((String)ad.getText(2131428660));
      ax4j = 2130837701;
      ax5a = "app://backuped";
      ax5i = ((String)ad.getText(2131427688));
      ax5j = 2130837684;
      ax6a = "apk://";
      ax6i = ((String)ad.getText(2131428208));
    }
    for (ax6j = 2130837683;; ax5j = 2130837683)
    {
      return ax;
      label380:
      ax4a = "app://backuped";
      ax4i = ((String)ad.getText(2131427688));
      ax4j = 2130837684;
      ax5a = "apk://";
      ax5i = ((String)ad.getText(2131428208));
    }
  }
  
  public com.estrongs.android.util.bf[] ah()
  {
    int k = 0;
    if (((am.aO(v)) || (!am.T(v))) || ((am.aG(v)) && (!am.aF(v)) && (!am.as(v)))) {}
    ArrayList localArrayList;
    int j;
    Object localObject;
    for (int i = 1;; i = 0)
    {
      localArrayList = new ArrayList();
      j = 0;
      while (j < 5)
      {
        localObject = new com.estrongs.android.util.bf();
        f = true;
        localArrayList.add(localObject);
        j += 1;
      }
    }
    get0a = "gallery://local/buckets/";
    get0i = ((String)ad.getText(2131427414));
    get0j = 2130837689;
    get1a = "SP://";
    get1i = ((String)ad.getText(2131428052));
    get1j = 2130837691;
    if ((i != 0) && (!am.ar(v)))
    {
      localObject = am.bk(v);
      if (!am.aL((String)localObject))
      {
        localObject = am.bk((String)localObject);
        get2a = am.f((String)localObject, "mine");
        get2i = ((String)ad.getText(2131428053));
        get2j = 2130837696;
        get3a = am.f((String)localObject, "hot");
        get3i = ((String)ad.getText(2131428054));
        get3j = 2130837695;
        if (!am.aq(v))
        {
          get4a = am.f((String)localObject, "album");
          get4i = ((String)ad.getText(2131428055));
          get4j = 2130837694;
          i = 5;
        }
      }
    }
    for (;;)
    {
      localObject = new com.estrongs.android.util.bf[i];
      j = k;
      while (j < i)
      {
        localObject[j] = ((com.estrongs.android.util.bf)localArrayList.get(j));
        j += 1;
      }
      return (com.estrongs.android.util.bf[])localObject;
      i = 4;
      continue;
      break;
      i = 2;
    }
  }
  
  public com.estrongs.android.util.bf[] ai()
  {
    if (aA == null)
    {
      List localList = am.a();
      String str = com.estrongs.android.pop.b.b();
      if (localList.remove(str)) {
        localList.add(0, str);
      }
      aA = new com.estrongs.android.util.bf[localList.size()];
      int i = 0;
      while (i < localList.size())
      {
        aA[i] = new com.estrongs.android.util.bf();
        aAf = true;
        aAa = ("du://" + (String)localList.get(i));
        aAi = z.b((String)localList.get(i));
        aAj = 2130837698;
        i += 1;
      }
    }
    return aA;
  }
  
  public com.estrongs.android.util.bf[] aj()
  {
    String str = null;
    if (am.aP(v)) {}
    do
    {
      return null;
      localObject = am.ai(v);
    } while (localObject == null);
    com.estrongs.android.util.bf localbf = new com.estrongs.android.util.bf();
    f = true;
    g = true;
    j = 2130838073;
    a = am.ak(v);
    i = ((String)localObject);
    Object localObject = com.estrongs.fs.impl.j.b.b(ad, v);
    if (localObject != null)
    {
      if (((com.estrongs.fs.impl.j.f)localObject).a() <= 0L) {
        break label179;
      }
      str = j.c(((com.estrongs.fs.impl.j.f)localObject).c()) + " / " + j.c(((com.estrongs.fs.impl.j.f)localObject).a());
    }
    for (;;)
    {
      if (str != null) {
        i = (i + " (" + str + ")");
      }
      return new com.estrongs.android.util.bf[] { localbf };
      label179:
      if (((com.estrongs.fs.impl.j.f)localObject).b() > 0L) {
        str = ad.getString(2131427644) + j.c(((com.estrongs.fs.impl.j.f)localObject).b());
      }
    }
  }
  
  public com.estrongs.android.util.bf[] ak()
  {
    int i = am.G(c());
    if (am.c(i)) {
      return ag();
    }
    if (am.b(i)) {
      return ah();
    }
    if ((i == 23) && (r.a().b())) {
      return af();
    }
    if (am.s(c())) {
      return ai();
    }
    if (am.aw(c())) {
      return aj();
    }
    if (am.M(c())) {
      return n(c());
    }
    return ad();
  }
  
  public com.estrongs.fs.h b()
  {
    return w;
  }
  
  protected void b(m paramm)
  {
    if (a(paramm))
    {
      com.estrongs.android.d.f.a(f.getDrawable());
      f.setImageDrawable(e);
      if (a) {
        com.estrongs.android.d.f.a(com.estrongs.android.d.f.f(d), e, true);
      }
      if ((paramm == null) || (!j.c(c))) {
        break label91;
      }
      localDrawable = ad.getResources().getDrawable(2130837922);
      ((ESImageView)f).a(localDrawable);
    }
    label91:
    while ((paramm == null) || (!c.isLink())) {
      return;
    }
    Drawable localDrawable = ad.getResources().getDrawable(2130837739);
    ((ESImageView)f).a(localDrawable);
  }
  
  public void b(i parami)
  {
    D = parami;
  }
  
  public void b(com.estrongs.fs.util.a.a parama)
  {
    C = parama;
    if (C == null) {
      g();
    }
    while (f.a() == null) {
      return;
    }
    a(f.a(), C);
    f.notifyDataSetChanged();
  }
  
  public void b(boolean paramBoolean)
  {
    Object localObject2 = null;
    if (w == null) {
      return;
    }
    aa.c(v, hashCode());
    v = w.getPath();
    q();
    R();
    if (y != null) {
      y.a(w.getPath(), true);
    }
    bu localbu = W();
    B = a;
    com.estrongs.fs.b localb = new com.estrongs.fs.b(D);
    localb.a(new aj(v, hashCode()));
    if ((am != null) && (am.getVisibility() == 0)) {
      am.setVisibility(8);
    }
    if (S()) {
      A.clear();
    }
    boolean bool1 = am.aX(w.getPath());
    boolean bool2 = am.aG(w.getPath());
    label209:
    Object localObject1;
    if (ac.a(k))
    {
      U.put("countChildren", Boolean.valueOf(true));
      com.estrongs.fs.b.aj localaj = B;
      com.estrongs.fs.h localh = w;
      if ((!bool1) && (!bool2)) {
        break label429;
      }
      localObject1 = null;
      label233:
      paramBoolean = localaj.a(new Object[] { localh, localObject1, localb, Boolean.valueOf(paramBoolean), U });
      localObject1 = localObject2;
      if ((ad instanceof FileExplorerActivity)) {
        localObject1 = ((FileExplorerActivity)ad).y();
      }
      if ((!paramBoolean) && (!bool1) && (!bool2) && (localObject1 != null) && (localObject1 == this))
      {
        paramBoolean = b.block(800L);
        if (paramBoolean) {
          b.close();
        }
        if (paramBoolean) {
          break label438;
        }
        c(m(X()));
      }
      label362:
      Q = 0;
      if (S <= 0) {
        break label569;
      }
    }
    label429:
    label438:
    label569:
    for (int i = S;; i = 200)
    {
      R = i;
      S = 0;
      if (!M) {
        break;
      }
      M = false;
      return;
      if (!U.containsKey("countChildren")) {
        break label209;
      }
      U.remove("countChildren");
      break label209;
      localObject1 = C;
      break label233;
      V = false;
      if (d == null) {
        break label362;
      }
      T.removeCallbacks(c);
      T.removeCallbacks(d);
      c.run();
      if (e != null)
      {
        i = 0;
        while (i < e.size())
        {
          T.removeCallbacks((Runnable)e.get(i));
          ((Runnable)e.get(i)).run();
          i += 1;
        }
      }
      d.run();
      break label362;
    }
  }
  
  public void b_()
  {
    if (Y() != null) {
      Y().a();
    }
    X = true;
  }
  
  public String c()
  {
    return v;
  }
  
  protected void c(List<com.estrongs.fs.h> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      if (P != null)
      {
        int i = 0;
        while (i < paramList.size())
        {
          if (P.a((com.estrongs.fs.h)paramList.get(i))) {
            A.add(paramList.get(i));
          }
          i += 1;
        }
      }
      A.addAll(paramList);
    }
    try
    {
      g.setAdapter(f);
      return;
    }
    catch (Exception paramList)
    {
      paramList.printStackTrace();
    }
  }
  
  public void d(List<String> paramList)
  {
    Stack localStack = N;
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        a((String)paramList.get(i));
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public boolean d(String paramString)
  {
    if ((paramString == null) || (A == null)) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < A.size())
      {
        com.estrongs.fs.h localh = (com.estrongs.fs.h)A.get(i);
        if ((localh != null) && (paramString.equalsIgnoreCase(localh.getAbsolutePath()))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public int e(String paramString)
  {
    switch (am.G(paramString))
    {
    case 15: 
    case 18: 
    case 19: 
    case 20: 
    case 21: 
    case 22: 
    case 23: 
    case 24: 
    default: 
      return -1;
    case 12: 
      return 2;
    case 13: 
    case 25: 
      return 4;
    case 14: 
      return 8;
    case 16: 
      return 16;
    }
    return 32;
  }
  
  public com.estrongs.fs.h f()
  {
    return c(false);
  }
  
  public void f(String paramString)
  {
    int i = 0;
    if (i < A.size()) {
      if (!((com.estrongs.fs.h)A.get(i)).getName().equals(paramString)) {}
    }
    for (;;)
    {
      g.post(new bl(this, i));
      return;
      i += 1;
      break;
      i = 0;
    }
  }
  
  public void f(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public String g(int paramInt)
  {
    com.estrongs.fs.h localh = (com.estrongs.fs.h)e(paramInt);
    if (localh == null) {
      return null;
    }
    return localh.getAbsolutePath();
  }
  
  public void g()
  {
    b(L);
  }
  
  public final void g(String paramString)
  {
    a(paramString, null);
  }
  
  public void g(boolean paramBoolean)
  {
    try
    {
      if (g != null) {
        g.setFastScrollEnabled(paramBoolean);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void h(String paramString)
  {
    r = true;
    a(paramString, null);
  }
  
  public void h(boolean paramBoolean)
  {
    L = paramBoolean;
  }
  
  protected void i()
  {
    a(new bv(this));
    a(new bi(this));
    g.setSelector(2130837560);
    aa = new com.estrongs.android.pop.h(ad, Z);
    J();
    K();
    if (aj) {
      com.estrongs.fs.a.b.a().a(Y);
    }
  }
  
  protected void i(int paramInt)
  {
    if ((paramInt >= Q) && (paramInt < R)) {}
    do
    {
      do
      {
        do
        {
          return;
          if (paramInt >= Q) {
            break;
          }
          Q = paramInt;
        } while (S <= 0);
        R = (S + paramInt);
        return;
      } while (paramInt < R);
      R = (paramInt + 1);
    } while (S <= 0);
    Q = (R - S);
  }
  
  public void i(String paramString)
  {
    s = true;
    a(paramString, null);
  }
  
  public void i(boolean paramBoolean)
  {
    a(paramBoolean, false);
  }
  
  public com.estrongs.fs.h j()
  {
    ak = true;
    if ((w != null) && (am.bd(w.getAbsolutePath()))) {
      return null;
    }
    if (w == null) {}
    for (Object localObject2 = null; localObject2 == null; localObject2 = am.bk(w.getAbsolutePath())) {
      return null;
    }
    if (!((String)localObject2).endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"))
    {
      ??? = localObject2;
      if (!((String)localObject2).endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {}
    }
    else
    {
      ??? = am.bk((String)localObject2);
    }
    if (??? == null)
    {
      synchronized (N)
      {
        if (!N.isEmpty())
        {
          localObject2 = f();
          return (com.estrongs.fs.h)localObject2;
        }
      }
      localObject4 = w;
      return (com.estrongs.fs.h)localObject4;
    }
    if ((z.n) && (((String)???).equals("/"))) {
      return null;
    }
    Object localObject4 = ???;
    if (am.aw((String)???))
    {
      String str = am.an((String)???);
      localObject4 = ???;
      if (str != null)
      {
        localObject4 = ???;
        if (str.equals("pcs"))
        {
          str = am.a((String)???, 4);
          if (str != null)
          {
            localObject4 = ???;
            if (!str.equals("/")) {}
          }
          else
          {
            localObject4 = "net://";
          }
        }
      }
    }
    ??? = new n((String)localObject4);
    a((com.estrongs.fs.h)???);
    return (com.estrongs.fs.h)???;
  }
  
  public void j(int paramInt)
  {
    ac = paramInt;
  }
  
  public void j(String paramString)
  {
    t = true;
    a(paramString, null);
  }
  
  protected boolean k(String paramString)
  {
    if ((am.W(paramString)) || (am.Y(paramString)) || (am.aO(paramString)) || (am.T(paramString)) || (am.aG(paramString))) {}
    boolean bool;
    do
    {
      return false;
      bool = r.a().b();
    } while (((am.aD(v)) && (bool)) || ((am.aB(v)) && (!bool)));
    return true;
  }
  
  protected int l(String paramString)
  {
    int i = 0;
    while (i < A.size())
    {
      if (am.h(paramString, am.bE(((com.estrongs.fs.h)A.get(i)).getPath()))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public void l()
  {
    if ((J) || (K))
    {
      if (!K) {
        break label60;
      }
      b(true);
    }
    for (;;)
    {
      J = false;
      K = false;
      if ((ai) && (V)) {
        s();
      }
      X = false;
      return;
      label60:
      g();
    }
  }
  
  public void m(String paramString)
  {
    an = paramString;
  }
  
  public com.estrongs.android.util.bf[] n(String paramString)
  {
    if (ay == null)
    {
      ay = new com.estrongs.android.util.bf[5];
      int i = 0;
      while (i < ay.length)
      {
        ay[i] = new com.estrongs.android.util.bf();
        ayf = true;
        i += 1;
      }
      ay0a = com.estrongs.fs.impl.adb.c.a(paramString, 0);
      ay0i = ((String)ad.getText(2131427684));
      ay0j = 2130837702;
      ay1a = com.estrongs.fs.impl.adb.c.a(paramString, 1);
      ay1i = ((String)ad.getText(2131427683));
      ay1j = 2130837700;
      ay2a = com.estrongs.fs.impl.adb.c.a(paramString, 2);
      ay2i = ((String)ad.getText(2131428206));
      ay2j = 2130837693;
      ay3a = com.estrongs.fs.impl.adb.c.a(paramString, 3);
      ay3i = ((String)ad.getText(2131428207));
      ay3j = 2130837699;
      ay4a = com.estrongs.fs.impl.adb.c.a(paramString, 4);
      ay4i = ((String)ad.getText(2131428208));
      ay4j = 2130837683;
    }
    return ay;
  }
  
  public boolean o()
  {
    return (B != null) && ((B.getTaskStatus() == 2) || (B.getTaskStatus() == 3));
  }
  
  public void u()
  {
    super.u();
    V = false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */