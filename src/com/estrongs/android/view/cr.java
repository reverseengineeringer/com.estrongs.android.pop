package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.ConditionVariable;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.p;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.app.analysis.aa;
import com.estrongs.android.pop.app.analysis.y;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.bh;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.ui.recycler.m;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.widget.ControllableAppBarLayout;
import com.estrongs.fs.b.al;
import com.estrongs.fs.util.j;
import com.estrongs.fs.x;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;

public class cr
  extends cg<com.estrongs.fs.h>
{
  protected static DateFormat N;
  private static com.estrongs.android.util.bn[] aC = null;
  private static com.estrongs.android.util.bn[] aD = null;
  private static com.estrongs.android.util.bn[] aE = null;
  private static com.estrongs.android.util.bn[] aF = null;
  private static com.estrongs.android.util.bn[] aG = null;
  private static Object aH = new Object();
  public boolean A = false;
  public String B = null;
  protected String C;
  protected com.estrongs.fs.h D;
  dx E;
  protected dv F;
  com.estrongs.fs.d G;
  LinkedList<com.estrongs.fs.h> H = new LinkedList();
  al I;
  com.estrongs.fs.util.a.a J = new com.estrongs.fs.util.a.c(false);
  com.estrongs.fs.i K;
  Drawable L;
  HashMap<String, Parcelable> M = new HashMap();
  protected dw O;
  protected boolean P = false;
  protected boolean Q = false;
  protected boolean R = false;
  protected boolean S = false;
  protected Stack<com.estrongs.fs.h> T = new Stack();
  protected boolean U = false;
  protected com.estrongs.fs.i V = null;
  protected final Handler W = new Handler();
  protected TypedMap X = new TypedMap();
  protected boolean Y = true;
  FileObserver Z = null;
  private com.estrongs.android.pop.ad a;
  private float aA = 0.0F;
  private float aB = 0.0F;
  private ControllableAppBarLayout aI = null;
  private View aJ = null;
  private ProgressBar aK;
  private Button aL;
  private View aM;
  boolean aa = false;
  protected com.estrongs.android.ui.recycler.d ab;
  protected com.estrongs.fs.a.e ac = new cs(this);
  protected com.estrongs.android.d.d ad = new dc(this);
  protected com.estrongs.android.pop.i ae;
  protected int af = -1;
  private boolean al;
  private boolean am = false;
  private String an = null;
  private View ao;
  private String ap = "all";
  private at aq;
  private long ar = 0L;
  private boolean as = false;
  private boolean at = false;
  private ProgressDialog au = null;
  private com.estrongs.android.ui.recycler.h av;
  private m aw;
  private boolean ax = false;
  private Map<String, com.estrongs.fs.h> ay = new ConcurrentHashMap();
  private float az = 0.0F;
  private Map<com.estrongs.fs.h, TypedMap> b = new HashMap();
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  public boolean y = false;
  public boolean z = false;
  
  public cr(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    this(paramActivity, parama, paramdw, true);
  }
  
  public cr(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw, boolean paramBoolean)
  {
    super(paramActivity);
    J = parama;
    al = paramBoolean;
    G = com.estrongs.fs.d.a(paramActivity);
    O = paramdw;
    L = paramActivity.getResources().getDrawable(2130837895);
    a = com.estrongs.android.pop.ad.a(paramActivity);
    N = a.F();
    aq = at.a(paramActivity);
    O = paramdw;
    au = new ProgressDialog(paramActivity);
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
      paramView = ((com.estrongs.fs.h)getTagm).getAbsolutePath();
      return paramView;
    }
    catch (Exception paramView) {}
    return null;
  }
  
  private void a(al paramal, int paramInt, String paramString)
  {
    boolean bool;
    if (c != null)
    {
      if (!as) {
        as = d.a(b.getPath(), c, this);
      }
      if (((ap.aL(C)) && (com.estrongs.fs.a.a.c(C).size() == 3)) || ("pcsres://".equals(C)) || (C.startsWith("usb://"))) {
        J();
      }
      c(true);
      bool = false;
      if (e) {
        e = false;
      }
      if (O != null) {
        O.a(this, bool);
      }
      if ((ap.bm(C)) && (a.g(C))) {
        if ((ap.M(C)) && (a.h(C).equalsIgnoreCase(ap.a(C))))
        {
          if (!bk.m()) {
            break label480;
          }
          new Thread(new df(this)).start();
        }
      }
    }
    for (;;)
    {
      a.b(paramString);
      an = null;
      AppFolderInfoManager.d().a(C, H);
      Object localObject;
      do
      {
        return;
        as = false;
        if (paramInt == 5)
        {
          if (getTaskResulta != 1)
          {
            j();
            bool = false;
            break;
          }
          J();
          bool = false;
          break;
        }
        localObject = paramal.getTaskResult();
      } while (a == 1);
      if (bk.a("ALL_LOADED", b))
      {
        J();
        b(J);
        label328:
        paramal = b.getPath();
        localObject = (Parcelable)M.get(paramal);
        if (paramal.equals(C))
        {
          if ((localObject == null) || (an != null)) {
            break label469;
          }
          g.onRestoreInstanceState((Parcelable)localObject);
        }
      }
      for (;;)
      {
        if ((an != null) && (!ap.aY(an)) && (!ap.aQ(paramal)))
        {
          paramInt = n(an);
          if (paramInt >= 0)
          {
            g.scrollToPosition(paramInt);
            i.notifyItemInserted(paramInt);
          }
        }
        bool = true;
        break;
        if (!(b instanceof List)) {
          break label328;
        }
        a(paramal, (List)b);
        break label328;
        label469:
        h.scrollToPosition(0);
      }
      label480:
      com.estrongs.fs.impl.adb.c.i(C);
    }
  }
  
  public static void at()
  {
    synchronized (aH)
    {
      aC = null;
      aG = null;
      aD = null;
      aF = null;
      return;
    }
  }
  
  private void b(String paramString)
  {
    if (ap.I(C) == ap.I(paramString))
    {
      Iterator localIterator = T.iterator();
      while (localIterator.hasNext()) {
        if (((com.estrongs.fs.h)localIterator.next()).getPath().startsWith(paramString)) {
          localIterator.remove();
        }
      }
    }
  }
  
  private com.estrongs.fs.h c(boolean paramBoolean)
  {
    am = true;
    S = true;
    for (;;)
    {
      synchronized (T)
      {
        com.estrongs.fs.h localh2;
        com.estrongs.fs.h localh1;
        if (!T.isEmpty())
        {
          localh2 = (com.estrongs.fs.h)T.pop();
          localh1 = localh2;
          if (ap.e(localh2.getPath(), C))
          {
            if (!T.isEmpty())
            {
              localh1 = (com.estrongs.fs.h)T.pop();
              at = true;
              a(localh1, (TypedMap)b.remove(localh1));
              return localh1;
            }
            return null;
          }
        }
        else if ((paramBoolean) && (ap.bm(C)))
        {
          localh2 = com.estrongs.fs.d.m(ap.bB(C));
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
  
  private void s()
  {
    if (O != null) {
      O.a();
    }
    if ((!al()) && (Y))
    {
      f(k(an()));
      return;
    }
    e = true;
  }
  
  private void t()
  {
    if (af == -1) {
      af = at.a(ag).i();
    }
  }
  
  private void u()
  {
    if ((!ap.bl(C)) || ((this instanceof fv))) {
      if (aw != null) {
        aw.a(false);
      }
    }
    y localy;
    do
    {
      return;
      localy = com.estrongs.android.pop.app.analysis.z.a().a("sdcard_top_view", C);
      if (localy != null) {
        break;
      }
    } while (aw == null);
    aw.a(false);
    return;
    if (av == null)
    {
      av = new com.estrongs.android.ui.recycler.h(ag, h, localy);
      aw = new m(g);
      g.setSpanSizeLookup(aw);
    }
    av.a(p);
    av.a(localy);
    if ((!aw.a()) && ((ag instanceof FileExplorerActivity)))
    {
      localObject = ((FileExplorerActivity)ag).at();
      if (((localy instanceof aa)) && (((aa)localy).d() >= 3))
      {
        ((com.estrongs.android.j.c)localObject).a("A_sdtop_show_3");
        ((com.estrongs.android.j.c)localObject).c("analysis", "A_sdtop_show_3");
      }
      ((com.estrongs.android.j.c)localObject).a("A_sdtop_show");
      ((com.estrongs.android.j.c)localObject).c("analysis", "A_sdtop_show");
      ((com.estrongs.android.j.c)localObject).c("A_sdtop_show_uv");
    }
    Object localObject = aw;
    if (localy != null) {}
    for (boolean bool = true;; bool = false)
    {
      ((m)localObject).a(bool);
      h.setAdapter(av);
      return;
    }
  }
  
  private void v()
  {
    if ((ap.S(C)) || (ap.bs(C)) || (ap.U(C)) || (ap.bk(C)))
    {
      aL = ((Button)b(2131624774));
      if (aL != null) {}
    }
    while (aM == null)
    {
      return;
      aL.setBackgroundResource(2130837590);
      aL.setBackgroundResource(2130837718);
      aL.setTextColor(at.a(ag).c(2131558745));
      aL.setOnClickListener(new db(this));
      aK = ((ProgressBar)b(2131624775));
      aM = b(2131624772);
      aM.setVisibility(0);
      j(false);
      return;
    }
    aM.setVisibility(8);
  }
  
  public void J()
  {
    super.J();
    Y = false;
  }
  
  public TypedMap V()
  {
    return X;
  }
  
  public boolean W()
  {
    return d;
  }
  
  public void X()
  {
    synchronized (T)
    {
      T.clear();
      return;
    }
  }
  
  public boolean Y()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (localFileExplorerActivity == null) {
      if (U) {}
    }
    while ((localFileExplorerActivity.O() == this) && (!U))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public void Z()
  {
    if (al)
    {
      com.estrongs.fs.a.b.a().b(ac);
      com.estrongs.fs.a.b.a().a(ac);
      U = false;
    }
  }
  
  public void a(int paramInt)
  {
    int i = p;
    super.a(paramInt);
    if ((ap.bl(C)) && (!ac.a(i)) && (ac.a(paramInt))) {
      b(true);
    }
    for (;;)
    {
      u();
      aB();
      e();
      return;
      h.setAdapter(this.i);
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((h != null) && (aJ != null))
    {
      az();
      if ((h.getAdapter() instanceof com.estrongs.android.ui.recycler.d))
      {
        u();
        aB();
        e();
      }
    }
  }
  
  public void a(com.estrongs.android.ui.drag.d paramd)
  {
    t = paramd;
  }
  
  protected void a(ci paramci, int paramInt) {}
  
  public void a(dv paramdv)
  {
    F = paramdv;
  }
  
  public void a(dx paramdx)
  {
    E = paramdx;
  }
  
  protected void a(al paramal, List<com.estrongs.fs.h> paramList)
  {
    if (!bk.a(I, paramal)) {}
    for (;;)
    {
      return;
      J();
      m_();
      c = ap.br(D.getPath());
      c(paramList);
      if (H.size() == 0) {
        if (ap.br(c())) {
          if (ap.bg(c()))
          {
            f(2131231643);
            label78:
            a_(H);
          }
        }
      }
      try
      {
        label86:
        if (ap.aO(c())) {
          if ((!com.estrongs.android.ui.pcs.a.a()) && (u.a().b())) {
            new Thread(new dn(this)).start();
          }
        }
        for (;;)
        {
          if (at)
          {
            h.requestFocus();
            at = false;
          }
          h.post(new cx(this));
          az();
          m();
          u();
          aB();
          e();
          if ((C == null) || (!ap.aZ(C)) || (!aC()) || (paramList.size() != 0) || (!Y())) {
            break;
          }
          new bh(ag).b();
          return;
          if (ap.M(c()))
          {
            f(2131230909);
            break label78;
          }
          if (ap.aG(c()))
          {
            f(2131231794);
            break label78;
          }
          f(2131231642);
          break label78;
          if ((ap.aL(c())) || (ap.aJ(c())))
          {
            if (u.a().c())
            {
              f(2131231969);
              break label78;
            }
            if (ap.e("/files", ap.a(c(), 23)))
            {
              f(2131231930);
              break label78;
            }
            f(2131231510);
            break label78;
          }
          if (ap.cg(c()))
          {
            if (com.estrongs.fs.impl.q.a.b())
            {
              I();
              break label78;
            }
            f(2131232255);
            break label78;
          }
          if (ap.bu(c()))
          {
            if (ap.bt(c()))
            {
              f(2131230986);
              break label78;
            }
            f(2131231510);
            break label78;
          }
          if ("pcsres://".equals(c()))
          {
            f(2131231464);
            break label78;
          }
          if (ap.ad(c()))
          {
            f(2131231421);
            break label78;
          }
          if (ap.bx(c()))
          {
            f(2131231490);
            break label78;
          }
          if (!"mounted".equals(Environment.getExternalStorageState()))
          {
            f(2131232297);
            break label78;
          }
          f(2131231510);
          break label78;
          a_(H);
          break label86;
          if ((ap.aG(C)) && (!ap.aZ(C))) {
            com.estrongs.fs.impl.o.b.b(ag, C);
          }
        }
      }
      catch (Exception paramal)
      {
        for (;;) {}
      }
    }
  }
  
  protected void a(com.estrongs.fs.h paramh, TypedMap paramTypedMap)
  {
    if ((D != null) && (D.equals(paramh)) && (!ap.bh(D.getPath()))) {}
    while ((com.estrongs.android.pop.z.n) && (paramh != null) && (paramh.getPath().equals("/"))) {
      return;
    }
    if (Z != null)
    {
      Z.stopWatching();
      Z = null;
    }
    if ((!S) && (m(paramh.getAbsolutePath()))) {}
    for (;;)
    {
      synchronized (T)
      {
        if ((C != null) && (D != null) && ((T.isEmpty()) || (!ap.e(paramh.getAbsolutePath(), D.getAbsolutePath()))))
        {
          T.push(D);
          TypedMap localTypedMap = new TypedMap(X);
          b.put(D, localTypedMap);
        }
        X.clear();
        if (paramTypedMap != null) {
          X.putAll(paramTypedMap);
        }
        ah();
        if (C == null)
        {
          M.put(paramh.getPath(), g.onSaveInstanceState());
          D = paramh;
          C = paramh.getPath();
          if (((paramh instanceof com.estrongs.android.ui.topclassify.c)) && (!ay.containsKey(paramh.getPath()))) {
            ay.put(paramh.getPath(), paramh);
          }
          if ((ap.bl(C)) && (ap.cp(C)) && (paramh.getName().equals("es_recycle_content")))
          {
            D = com.estrongs.fs.d.m("recycle://");
            C = "recycle://";
          }
          if (ap.bl(D.getAbsolutePath()))
          {
            Z = new du(this, D.getAbsolutePath());
            Z.startWatching();
          }
          Y = true;
          X.put("back", Boolean.valueOf(S));
          v();
          if ((X == null) || (!X.getBoolean("refresh")) || (S)) {
            break;
          }
          b(true);
          return;
        }
      }
      if (am)
      {
        M.put(C, null);
        am = false;
      }
      else
      {
        M.put(C, g.onSaveInstanceState());
      }
    }
    g();
  }
  
  public void a(com.estrongs.fs.i parami)
  {
    V = parami;
  }
  
  public void a(com.estrongs.fs.util.a.a parama)
  {
    if (i.a() != null)
    {
      a(i.a(), parama);
      e();
    }
  }
  
  public void a(String paramString)
  {
    y = true;
    a(paramString, null);
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    if (ay.containsKey(paramString)) {}
    for (paramString = (com.estrongs.fs.h)ay.get(paramString);; paramString = com.estrongs.fs.d.m(paramString))
    {
      a(paramString, paramTypedMap);
      return;
    }
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
    P = paramBoolean1;
    Q = paramBoolean2;
  }
  
  public View aA()
  {
    if (aJ == null)
    {
      aJ = b(2131624203);
      aI = ((ControllableAppBarLayout)b(2131624206));
    }
    return aJ;
  }
  
  public void aB()
  {
    if (!com.estrongs.android.ui.topclassify.e.c(C)) {
      if ((aw != null) && (!ap.bl(C))) {
        aw.a(false);
      }
    }
    while ((H == null) || (H.size() == 0)) {
      return;
    }
    if (ab == null)
    {
      ab = new com.estrongs.android.ui.recycler.d(ag, h, C);
      aw = new m(g);
      g.setSpanSizeLookup(aw);
    }
    aw.a(true);
    h.setAdapter(ab);
  }
  
  protected boolean aC()
  {
    return true;
  }
  
  protected void aD()
  {
    W.post(new da(this));
  }
  
  protected void aa()
  {
    h.setOnScrollListener(new dt(this));
  }
  
  public com.estrongs.fs.util.a.a ab()
  {
    return J;
  }
  
  public int ac()
  {
    if (J == null) {}
    do
    {
      return 3;
      if ((J instanceof com.estrongs.fs.util.a.d)) {
        return 0;
      }
      if ((J instanceof com.estrongs.fs.util.a.f)) {
        return 1;
      }
      if ((J instanceof com.estrongs.fs.util.a.e)) {
        return 2;
      }
    } while (!(J instanceof com.estrongs.fs.util.a.c));
    return 3;
  }
  
  public int ad()
  {
    if (J == null) {}
    while (J.a()) {
      return 0;
    }
    return 1;
  }
  
  public boolean ae()
  {
    synchronized (T)
    {
      boolean bool = T.isEmpty();
      return bool;
    }
  }
  
  public int af()
  {
    synchronized (T)
    {
      int i = T.size();
      return i;
    }
  }
  
  public com.estrongs.fs.d ag()
  {
    return G;
  }
  
  public void ah()
  {
    if (I != null) {
      I.a(true);
    }
    f(2131231412);
    e();
  }
  
  protected boolean ai()
  {
    return true;
  }
  
  public boolean aj()
  {
    return (u != null) && (u.getVisibility() == 0);
  }
  
  public void ak() {}
  
  public boolean al()
  {
    return U;
  }
  
  protected dp am()
  {
    dp localdp = new dp(this);
    b = new ConditionVariable();
    al localal = new al(G, ae);
    localal.a(new dg(this, localdp));
    localal.addTaskStatusChangeListener(new di(this, localdp));
    localal.addProgressListener(new dl(this));
    a = localal;
    return localdp;
  }
  
  protected int an()
  {
    return 2131232182;
  }
  
  protected void ao()
  {
    if ((!p()) && (ap.a(c(), X)) && (g.findLastVisibleItemPosition() == i.getItemCount() - 1))
    {
      if (ao == null) {
        ao = b(2131624592);
      }
      if (ao != null)
      {
        ao.setVisibility(0);
        ao.findViewById(2131624589).setVisibility(8);
        localTextView = (TextView)ao.findViewById(2131624590);
        localTextView.setText(ag.getText(2131231308));
        getLayoutParamswidth = -1;
        localTextView.setOnClickListener(new cy(this));
      }
    }
    while ((ao == null) || (ao.getVisibility() != 0))
    {
      TextView localTextView;
      return;
    }
    ao.setVisibility(8);
  }
  
  public void ap()
  {
    X.put("updateMediaStore", Boolean.valueOf(true));
    b(true);
  }
  
  public String aq()
  {
    return ap;
  }
  
  public long ar()
  {
    return ar;
  }
  
  public com.estrongs.android.util.bn[] as()
  {
    int k = 0;
    for (;;)
    {
      int i;
      synchronized (aH)
      {
        if (aC == null)
        {
          localObject2 = ap.a();
          String str = com.estrongs.android.pop.b.b();
          if (((List)localObject2).remove(str)) {
            ((List)localObject2).add(0, str);
          }
          i = ((List)localObject2).size();
          if (!com.estrongs.android.pop.z.n) {
            break label287;
          }
          i = ((List)localObject2).size();
          aC = new com.estrongs.android.util.bn[i];
          j = 0;
          if (j < i)
          {
            aC[j] = new com.estrongs.android.util.bn();
            aCf = true;
            aCh = true;
            j += 1;
            continue;
          }
          i = k;
          if (!com.estrongs.android.pop.z.n)
          {
            aC0a = "/";
            aC0i = ((String)ag.getText(2131231650));
            aC0j = 2130837957;
            aC0h = false;
            i = k;
          }
          if (i < ((List)localObject2).size())
          {
            if (!com.estrongs.android.pop.z.n) {
              break label280;
            }
            j = i;
            aCa = ((String)((List)localObject2).get(i));
            aCi = com.estrongs.android.pop.z.b((String)((List)localObject2).get(i));
            aCj = 2130837958;
            i += 1;
            continue;
          }
        }
        Object localObject2 = aC;
        return (com.estrongs.android.util.bn[])localObject2;
      }
      label280:
      int j = i + 1;
      continue;
      label287:
      i += 1;
    }
  }
  
  public com.estrongs.android.util.bn[] au()
  {
    Object localObject = ag.getResources().getStringArray(2131492872);
    String[] arrayOfString1;
    String[] arrayOfString2;
    int[] arrayOfInt;
    if (localObject != null)
    {
      arrayOfString1 = (String[])((String[])localObject).clone();
      arrayOfString2 = new String[arrayOfString1.length];
      arrayOfInt = new int[arrayOfString1.length];
      localObject = u.a().g();
      if (C.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
        localObject = ap.bW(C.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0]) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
      }
      arrayOfString2[0] = ((String)localObject + "/files");
      arrayOfInt[0] = 2130837942;
      arrayOfString2[1] = ((String)localObject + "/pictures");
      arrayOfInt[1] = 2130837956;
      arrayOfString2[2] = ((String)localObject + "/documents");
      arrayOfInt[2] = 2130837946;
      arrayOfString2[3] = ((String)localObject + "/music");
      arrayOfInt[3] = 2130837950;
      arrayOfString2[4] = ((String)localObject + "/videos");
      arrayOfInt[4] = 2130837963;
      arrayOfString2[5] = ((String)localObject + "/apps");
      arrayOfInt[5] = 2130837943;
      arrayOfString2[6] = ((String)localObject + "/others");
      arrayOfInt[6] = 2130837952;
      arrayOfString2[7] = ((String)localObject + "/files/apps/Downloads/");
      arrayOfInt[7] = 2130837947;
    }
    try
    {
      if (com.estrongs.android.ui.pcs.a.a())
      {
        localObject = com.estrongs.android.ui.pcs.a.a(c());
        arrayOfString1[0] = (arrayOfString1[0] + " (" + j.c(b) + " / " + j.c(c) + ")");
      }
      aF = new com.estrongs.android.util.bn[arrayOfString1.length];
      int i = 0;
      while (i < aF.length)
      {
        aF[i] = new com.estrongs.android.util.bn();
        aFa = arrayOfString2[i];
        aFi = arrayOfString1[i];
        aFj = arrayOfInt[i];
        aFf = true;
        i += 1;
      }
      return aF;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public com.estrongs.android.util.bn[] av()
  {
    if (((ap.aY(C)) || (!ap.X(C))) || ((ap.aQ(C)) && (!ap.aP(C)) && (!ap.aC(C)))) {}
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < 5)
    {
      localObject = new com.estrongs.android.util.bn();
      f = true;
      localArrayList.add(localObject);
      i += 1;
    }
    get0a = "pic://";
    get0i = ((String)ag.getText(2131231659));
    get0j = 2130837949;
    Object localObject = new com.estrongs.android.util.bn[1];
    i = 0;
    while (i < 1)
    {
      localObject[i] = ((com.estrongs.android.util.bn)localArrayList.get(i));
      i += 1;
    }
    return (com.estrongs.android.util.bn[])localObject;
  }
  
  public com.estrongs.android.util.bn[] aw()
  {
    if (aG == null)
    {
      List localList = ap.a();
      String str = com.estrongs.android.pop.b.b();
      if (localList.remove(str)) {
        localList.add(0, str);
      }
      aG = new com.estrongs.android.util.bn[localList.size()];
      int i = 0;
      while (i < localList.size())
      {
        aG[i] = new com.estrongs.android.util.bn();
        aGf = true;
        aGa = ("du://" + (String)localList.get(i));
        aGi = com.estrongs.android.pop.z.b((String)localList.get(i));
        aGj = 2130837958;
        i += 1;
      }
    }
    return aG;
  }
  
  public com.estrongs.android.util.bn[] ax()
  {
    String str = null;
    if (ap.aZ(C)) {}
    do
    {
      return null;
      localObject = ap.as(C);
    } while (localObject == null);
    com.estrongs.android.util.bn localbn = new com.estrongs.android.util.bn();
    f = true;
    g = true;
    j = 2130838451;
    a = ap.au(C);
    i = ((String)localObject);
    Object localObject = com.estrongs.fs.impl.o.b.b(ag, C);
    if (localObject != null)
    {
      if (((com.estrongs.fs.impl.o.f)localObject).a() <= 0L) {
        break label179;
      }
      str = j.c(((com.estrongs.fs.impl.o.f)localObject).c()) + " / " + j.c(((com.estrongs.fs.impl.o.f)localObject).a());
    }
    for (;;)
    {
      if (str != null) {
        i = (i + " (" + str + ")");
      }
      return new com.estrongs.android.util.bn[] { localbn };
      label179:
      if (((com.estrongs.fs.impl.o.f)localObject).b() > 0L) {
        str = ag.getString(2131231358) + j.c(((com.estrongs.fs.impl.o.f)localObject).b());
      }
    }
  }
  
  public com.estrongs.android.util.bn[] ay()
  {
    int i = ap.I(c());
    if (ap.b(i)) {
      return av();
    }
    if ((i == 23) && (u.a().b())) {
      return au();
    }
    if (ap.u(c())) {
      return aw();
    }
    if (ap.aG(c())) {
      return ax();
    }
    if (ap.O(c())) {
      return p(c());
    }
    return as();
  }
  
  public void az()
  {
    if ((aI != null) && (aJ != null) && (aJ.getVisibility() == 0)) {
      aI.b();
    }
  }
  
  public com.estrongs.fs.h b()
  {
    return D;
  }
  
  protected void b(ci paramci, int paramInt)
  {
    com.estrongs.fs.h localh = (com.estrongs.fs.h)e(paramInt);
    if ((paramci != null) && (localh != null) && (n != null))
    {
      n.setAlpha(0.6F);
      n.setOnClickListener(new cz(this, localh, paramci, paramInt));
    }
  }
  
  public void b(com.estrongs.fs.i parami)
  {
    K = parami;
  }
  
  public void b(com.estrongs.fs.util.a.a parama)
  {
    J = parama;
    if (J == null) {
      g();
    }
    while (i.a() == null) {
      return;
    }
    a(i.a(), J);
    e();
  }
  
  public void b(boolean paramBoolean)
  {
    Object localObject2 = null;
    if (D == null) {}
    label229:
    label253:
    label408:
    label435:
    label444:
    label573:
    for (;;)
    {
      return;
      com.estrongs.android.pop.utils.ad.c(C, hashCode());
      C = D.getPath();
      t();
      ah();
      if (F != null) {
        F.a(D.getPath(), true);
      }
      dp localdp = am();
      I = a;
      Object localObject1;
      com.estrongs.fs.util.a.a locala;
      if ((!ap.cg(C)) && (!ap.ch(C)))
      {
        localObject1 = new com.estrongs.fs.b(K);
        ((com.estrongs.fs.b)localObject1).a(new bn(C, hashCode()));
        if ((ao != null) && (ao.getVisibility() == 0)) {
          ao.setVisibility(8);
        }
        if (ai()) {
          H.clear();
        }
        boolean bool1 = ap.bi(D.getPath());
        boolean bool2 = ap.aQ(D.getPath());
        if (!ac.a(p)) {
          break label408;
        }
        X.put("countChildren", Boolean.valueOf(true));
        al localal = I;
        com.estrongs.fs.h localh = D;
        if ((!bool1) && (!bool2)) {
          break label435;
        }
        locala = null;
        paramBoolean = localal.a(new Object[] { localh, locala, localObject1, Boolean.valueOf(paramBoolean), X });
        localObject1 = localObject2;
        if ((ag instanceof FileExplorerActivity)) {
          localObject1 = ((FileExplorerActivity)ag).O();
        }
        if ((!paramBoolean) && (!bool1) && (!bool2) && (localObject1 != null) && (localObject1 == this))
        {
          paramBoolean = b.block(800L);
          if (paramBoolean) {
            b.close();
          }
          if (paramBoolean) {
            break label444;
          }
          f(k(an()));
        }
      }
      for (;;)
      {
        if (!S) {
          break label573;
        }
        S = false;
        return;
        localObject1 = new com.estrongs.fs.b(null);
        break;
        if (!X.containsKey("countChildren")) {
          break label229;
        }
        X.remove("countChildren");
        break label229;
        locala = J;
        break label253;
        Y = false;
        if (d != null)
        {
          W.removeCallbacks(c);
          W.removeCallbacks(d);
          c.run();
          if (e != null)
          {
            int i = 0;
            while (i < e.size())
            {
              W.removeCallbacks((Runnable)e.get(i));
              ((Runnable)e.get(i)).run();
              i += 1;
            }
          }
          d.run();
        }
      }
    }
  }
  
  public String c()
  {
    return C;
  }
  
  public void c(com.estrongs.fs.h paramh)
  {
    a(paramh, null);
  }
  
  protected void c(List<com.estrongs.fs.h> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      if (V != null)
      {
        int i = 0;
        while (i < paramList.size())
        {
          if (V.a((com.estrongs.fs.h)paramList.get(i))) {
            H.add(paramList.get(i));
          }
          i += 1;
        }
      }
      H.addAll(paramList);
    }
    try
    {
      h.setAdapter(this.i);
      return;
    }
    catch (Exception paramList)
    {
      paramList.printStackTrace();
    }
  }
  
  public void d(long paramLong)
  {
    ar = paramLong;
  }
  
  public void d(List<String> paramList)
  {
    Stack localStack = T;
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        b((String)paramList.get(i));
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void e()
  {
    super.e();
    if (av != null) {
      av.notifyDataSetChanged();
    }
    if (ab != null) {
      ab.notifyDataSetChanged();
    }
  }
  
  public com.estrongs.fs.h f()
  {
    return c(false);
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
    b(R);
  }
  
  public void g(boolean paramBoolean) {}
  
  public boolean g(String paramString)
  {
    if ((paramString == null) || (H == null)) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < H.size())
      {
        com.estrongs.fs.h localh = (com.estrongs.fs.h)H.get(i);
        if ((localh != null) && (paramString.equalsIgnoreCase(localh.getAbsolutePath()))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public int h(String paramString)
  {
    switch (ap.I(paramString))
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
  
  public void h(boolean paramBoolean)
  {
    R = paramBoolean;
  }
  
  protected void i()
  {
    a(new dq(this));
    a(new dd(this));
    ae = new com.estrongs.android.pop.i(ag, ad);
    aa();
    if (al) {
      com.estrongs.fs.a.b.a().a(ac);
    }
  }
  
  public void i(int paramInt)
  {
    af = paramInt;
  }
  
  public void i(String paramString)
  {
    int i = 0;
    if (i < H.size()) {
      if (!((com.estrongs.fs.h)H.get(i)).getName().equals(paramString)) {}
    }
    for (;;)
    {
      h.post(new de(this, i));
      return;
      i += 1;
      break;
      i = 0;
    }
  }
  
  public void i(boolean paramBoolean)
  {
    a(paramBoolean, false);
  }
  
  public void i_()
  {
    if (I != null) {
      I.a(true);
    }
    U = true;
    if (al) {
      com.estrongs.fs.a.b.a().b(ac);
    }
    if (Z != null) {
      Z.stopWatching();
    }
    com.estrongs.android.j.d.a(ah, c());
  }
  
  public com.estrongs.fs.h j()
  {
    am = true;
    if ((D != null) && (ap.bo(D.getAbsolutePath()))) {
      return null;
    }
    if (D == null) {}
    for (Object localObject2 = null; localObject2 == null; localObject2 = ap.bB(D.getAbsolutePath())) {
      return null;
    }
    if (!((String)localObject2).endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"))
    {
      ??? = localObject2;
      if (!((String)localObject2).endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {}
    }
    else
    {
      ??? = ap.bB((String)localObject2);
    }
    if (??? == null)
    {
      synchronized (T)
      {
        if (!T.isEmpty())
        {
          localObject2 = f();
          return (com.estrongs.fs.h)localObject2;
        }
      }
      localObject4 = D;
      return (com.estrongs.fs.h)localObject4;
    }
    if ((com.estrongs.android.pop.z.n) && (((String)???).equals("/"))) {
      return null;
    }
    Object localObject4 = ???;
    if (ap.aG((String)???))
    {
      String str = ap.ax((String)???);
      localObject4 = ???;
      if (str != null)
      {
        localObject4 = ???;
        if (str.equals("pcs"))
        {
          str = ap.a((String)???, 4);
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
    ??? = new x((String)localObject4);
    c((com.estrongs.fs.h)???);
    return (com.estrongs.fs.h)???;
  }
  
  public final void j(String paramString)
  {
    a(paramString, null);
  }
  
  public void j(boolean paramBoolean)
  {
    if ((aL == null) || (aK == null)) {
      return;
    }
    if (paramBoolean)
    {
      aL.setText(ag.getString(2131231628));
      aK.setVisibility(0);
      return;
    }
    aL.setText(ag.getString(2131230885));
    aK.setVisibility(8);
  }
  
  public void j_()
  {
    aa = true;
  }
  
  public void k(String paramString)
  {
    z = true;
    a(paramString, null);
  }
  
  public void l()
  {
    if ((P) || (Q))
    {
      if (!Q) {
        break label98;
      }
      b(true);
    }
    for (;;)
    {
      P = false;
      Q = false;
      if ((e) && (Y)) {
        H();
      }
      aa = false;
      try
      {
        if ((ap.bC(C)) && (!ax))
        {
          com.estrongs.android.j.c.a(ag).c("visit_path", "visit_sdcard");
          ax = true;
        }
        return;
      }
      catch (Exception localException)
      {
        label98:
        localException.printStackTrace();
      }
      g();
    }
  }
  
  public void l(String paramString)
  {
    A = true;
    a(paramString, null);
  }
  
  public void m()
  {
    if ((aA() != null) && (!ap.V(C)) && (!ap.ae(C)) && (!ap.Z(C)) && (ap.X(C))) {}
  }
  
  protected boolean m(String paramString)
  {
    if ((ap.ag(paramString)) || (ap.ai(paramString)) || (ap.aY(paramString)) || (ap.X(paramString)) || (ap.aQ(paramString))) {}
    boolean bool;
    do
    {
      return false;
      bool = u.a().b();
    } while (((ap.aN(C)) && (bool)) || ((ap.aL(C)) && (!bool)));
    return true;
  }
  
  protected void m_()
  {
    int i = 2130838192;
    super.m_();
    if ((m == null) || (o == null)) {
      return;
    }
    if (C == null)
    {
      o.setImageResource(2130838192);
      return;
    }
    if ((ap.X(C)) || (ap.aY(C))) {
      i = 2130838193;
    }
    for (;;)
    {
      o.setImageResource(i);
      return;
      if (ap.ae(C)) {
        i = 2130838191;
      } else if (ap.Z(C)) {
        i = 2130838196;
      } else if (ap.V(C)) {
        i = 2130838194;
      } else if ((ap.ai(C)) || (ap.ag(C))) {
        i = 2130838189;
      } else if (ap.bx(C)) {
        i = 2130838195;
      } else if (ap.ad(C)) {
        i = 2130837738;
      }
    }
  }
  
  protected int n(String paramString)
  {
    int i = 0;
    while (i < H.size())
    {
      if (ap.h(paramString, ap.bV(((com.estrongs.fs.h)H.get(i)).getPath()))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public void o(String paramString)
  {
    ap = paramString;
  }
  
  public boolean p()
  {
    return (I != null) && ((I.getTaskStatus() == 2) || (I.getTaskStatus() == 3));
  }
  
  public com.estrongs.android.util.bn[] p(String paramString)
  {
    if (aE == null)
    {
      aE = new com.estrongs.android.util.bn[5];
      int i = 0;
      while (i < aE.length)
      {
        aE[i] = new com.estrongs.android.util.bn();
        aEf = true;
        i += 1;
      }
      aE0a = com.estrongs.fs.impl.adb.c.a(paramString, 0);
      aE0i = ((String)ag.getText(2131231015));
      aE0j = 2130837962;
      aE1a = com.estrongs.fs.impl.adb.c.a(paramString, 1);
      aE1i = ((String)ag.getText(2131231013));
      aE1j = 2130837960;
      aE2a = com.estrongs.fs.impl.adb.c.a(paramString, 2);
      aE2i = ((String)ag.getText(2131231011));
      aE2j = 2130837953;
      aE3a = com.estrongs.fs.impl.adb.c.a(paramString, 3);
      aE3i = ((String)ag.getText(2131231012));
      aE3j = 2130837959;
      aE4a = com.estrongs.fs.impl.adb.c.a(paramString, 4);
      aE4i = ((String)ag.getText(2131231010));
      aE4j = 2130837943;
    }
    return aE;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */