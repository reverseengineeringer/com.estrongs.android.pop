package com.estrongs.android.pop.app.imageviewer;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.ag;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.pop.app.x;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;
import com.estrongs.android.pop.m;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.RealViewSwitcher;
import com.estrongs.fs.b;
import java.io.File;

public class ViewImage21
  extends NoSearchActivity
  implements View.OnClickListener
{
  private ESGallery A;
  private TextView B;
  private TextView C;
  private View D;
  private boolean E = false;
  private String F;
  private String G = null;
  private com.estrongs.android.j.c H = null;
  private final Runnable I = new as(this);
  private a J;
  private ag K = ag.g();
  private View L;
  private x M = null;
  private int N = 0;
  private cf O = new cf(this);
  private final Runnable P = new bt(this);
  private final Runnable Q = new bu(this);
  private int R = 800;
  private q S;
  private long T = 0L;
  boolean a = true;
  final p b = new p();
  protected int c = -1;
  protected boolean d = true;
  f e = new z();
  GestureDetector f;
  protected ImageViewTouch g;
  protected View h;
  protected RealViewSwitcher i;
  protected LayoutInflater j;
  protected DisplayMetrics k;
  protected Runnable l = new bw(this);
  ESScrollMenuView m;
  ESScrollMenuView n;
  Animation o;
  Animation p;
  protected long q = 3000L;
  protected ViewGroup.LayoutParams r = new ViewGroup.LayoutParams(-1, -1);
  private t t;
  private Uri u;
  private boolean v = true;
  private int w = 1;
  private boolean x;
  private SharedPreferences y;
  private b z = null;
  
  private ImageViewTouch a(ViewGroup paramViewGroup)
  {
    if ((paramViewGroup.getChildCount() > 0) && ((paramViewGroup.getChildAt(0) instanceof ImageViewTouch))) {
      return (ImageViewTouch)paramViewGroup.getChildAt(0);
    }
    return null;
  }
  
  private f a(Uri paramUri)
  {
    if ("content".equalsIgnoreCase(paramUri.getScheme())) {
      return ImageManager.a(getContentResolver(), paramUri, 1);
    }
    Object localObject2 = ad.a(this).z(paramUri.toString());
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new com.estrongs.fs.util.a.d(true);
    }
    localObject2 = paramUri.toString();
    if (ap.aY(u.toString())) {
      localObject2 = G;
    }
    m localm = null;
    if (ac.a() >= 21) {
      localm = new m(this);
    }
    return ImageManager.a(com.estrongs.fs.d.a(this), paramUri.toString(), (String)localObject2, z, (com.estrongs.fs.util.a.a)localObject1, localm);
  }
  
  private boolean a(ESScrollMenuView paramESScrollMenuView)
  {
    return (paramESScrollMenuView != null) && (paramESScrollMenuView.getVisibility() == 0);
  }
  
  private void b(ESScrollMenuView paramESScrollMenuView)
  {
    if ((e == null) || (e.c())) {}
    do
    {
      return;
      if (p == null)
      {
        p = new AlphaAnimation(0.1F, 1.0F);
        p.setDuration(150L);
        p.setInterpolator(new DecelerateInterpolator());
        p.setAnimationListener(new bn(this));
      }
      p.start();
      paramESScrollMenuView.setAnimation(p);
      paramESScrollMenuView.setVisibility(0);
    } while (!paramESScrollMenuView.equals(paramESScrollMenuView));
    ((ImageView)h.findViewById(2131624054)).setImageResource(2130838565);
  }
  
  private boolean b(Uri paramUri)
  {
    return paramUri.equals(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
  }
  
  private void c(ESScrollMenuView paramESScrollMenuView)
  {
    if (o == null)
    {
      o = new AlphaAnimation(1.0F, 0.1F);
      o.setDuration(150L);
      o.setInterpolator(new AccelerateInterpolator());
      o.setAnimationListener(new bo(this));
    }
    o.start();
    paramESScrollMenuView.setAnimation(o);
    paramESScrollMenuView.setVisibility(4);
    a();
  }
  
  private an e(int paramInt)
  {
    e locale = e.a(paramInt);
    an localan = J.a(locale);
    if ((localan != null) && (!localan.g())) {
      return localan;
    }
    J.b(locale);
    return null;
  }
  
  private void f()
  {
    if (a(m)) {
      c(m);
    }
    if (a(n)) {
      c(n);
    }
    v = false;
    A.setVisibility(4);
    D.setVisibility(4);
  }
  
  private void f(int paramInt)
  {
    if ((B != null) && (e != null) && (paramInt >= 0) && (paramInt < e.b()))
    {
      B.setText(ap.cc(F) + " (" + (paramInt + 1) + "/" + e.b() + ")");
      C.setText(e.a(paramInt).i());
    }
  }
  
  private void g()
  {
    if (a) {
      return;
    }
    v = true;
    if ((!E) && (w == 1)) {
      A.setVisibility(0);
    }
    D.setVisibility(0);
  }
  
  private void g(int paramInt)
  {
    paramInt = c + paramInt;
    if ((paramInt >= 0) && (paramInt < e.b()))
    {
      a(paramInt, true);
      g();
    }
  }
  
  private void h()
  {
    if (ag.b())
    {
      L.setVisibility(0);
      return;
    }
    L.setVisibility(8);
  }
  
  private void i()
  {
    if (M != null) {
      return;
    }
    M = new x(this);
    M.a(new bc(this));
  }
  
  private boolean j()
  {
    return N == 1;
  }
  
  private void k()
  {
    N = 0;
    ((ImageView)L.findViewById(2131624054)).setImageResource(2130838530);
  }
  
  private void l()
  {
    N = 1;
    ((ImageView)L.findViewById(2131624054)).setImageResource(2130838531);
  }
  
  private void m()
  {
    m = ((ESScrollMenuView)findViewById(2131624808));
    m.setShowIcon(true);
    m.a();
    int i2 = 0;
    try
    {
      boolean bool = ae.a(e.a(c).f());
      i2 = bool;
    }
    catch (Exception localException)
    {
      int i1;
      for (;;) {}
    }
    i1 = J().c(2131558714);
    if ((!E) && (i2 != 0)) {
      m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838539), i1), getString(2131230845)), new bd(this));
    }
    m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838622), i1), getString(2131232485)), new be(this));
    m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838602), i1), getString(2131231710)), new bg(this));
    if (!E)
    {
      m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838608), i1), getString(2131231638)), new bh(this));
      if (i2 != 0) {
        m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838604), i1), getString(2131230892)), new bi(this));
      }
    }
    if (ag.a()) {
      m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838530), i1), getString(2131231154)), new bj(this));
    }
    m.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838586), i1), getString(2131231278)), new bk(this));
  }
  
  private void o()
  {
    n = ((ESScrollMenuView)findViewById(2131625035));
    n.setPanelViewId(2131625036);
    n.a();
    int i1 = J().c(2131558714);
    n.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838578), i1), getString(2131231151)), new bl(this));
    n.a(new com.estrongs.android.view.a.a(g.a(getResources().getDrawable(2130838530), i1), getString(2131231148)), new bm(this));
  }
  
  private boolean p()
  {
    if (a(m))
    {
      c(m);
      return false;
    }
    if (m == null) {
      m();
    }
    b(m);
    return true;
  }
  
  private boolean q()
  {
    if (a(n))
    {
      c(n);
      return false;
    }
    if (n == null) {
      o();
    }
    b(n);
    return true;
  }
  
  private void r()
  {
    int i3 = 0;
    CharSequence[] arrayOfCharSequence = getResources().getTextArray(2131492867);
    int i2 = i3;
    int i1;
    if (arrayOfCharSequence != null) {
      i1 = 0;
    }
    for (;;)
    {
      i2 = i3;
      if (i1 < arrayOfCharSequence.length)
      {
        if (!String.valueOf(q).equals(arrayOfCharSequence[i1])) {
          break label108;
        }
        i2 = i1;
      }
      try
      {
        new cv(this).a(2131231638).a(2131492866, i2, new bs(this, arrayOfCharSequence)).b(2131230896, new bp(this)).c(2131231265, null).c();
        return;
      }
      catch (Exception localException)
      {
        label108:
        localException.printStackTrace();
      }
      i1 += 1;
    }
  }
  
  private e s()
  {
    if (u == null) {
      return null;
    }
    e = a(u);
    Object localObject;
    if ((b(u)) && (e.b() > 0)) {
      localObject = e.a(0);
    }
    for (;;)
    {
      J = new a(e, 10);
      return (e)localObject;
      e locale = e.a(u);
      localObject = locale;
      if (locale == null)
      {
        localObject = locale;
        if (G != null) {
          localObject = e.a(Uri.parse(G));
        }
      }
    }
  }
  
  String a(String paramString)
  {
    int i1 = paramString.lastIndexOf("/");
    String str = paramString;
    if (i1 > 0) {
      str = paramString.substring(0, i1);
    }
    i1 = str.lastIndexOf("/");
    paramString = str;
    if (i1 > 0) {
      paramString = str.substring(i1 + 1);
    }
    return paramString;
  }
  
  protected void a()
  {
    b.removeCallbacks(I);
    if ((!a(m)) && (!a(n))) {
      b.postDelayed(I, 3000L);
    }
  }
  
  protected void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > e.b() - 1)) {}
    cg localcg;
    Object localObject;
    do
    {
      do
      {
        return;
        localcg = (cg)i.getChildAt(paramInt % 3);
      } while (localcg == null);
      if (localcg.a() != null)
      {
        localcg.a().stop();
        localcg.a(null);
      }
      localObject = e.a(paramInt).d();
      if ((!com.estrongs.android.util.bk.a("load-sucess::" + (String)localObject, localcg.getTag())) && (!com.estrongs.android.util.bk.a("load-error::" + (String)localObject, localcg.getTag()))) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        a(paramInt, localcg);
        return;
      }
      localObject = a(localcg);
    } while ((localObject == null) || (((ImageViewTouch)localObject).getDrawable() != null));
    a(paramInt, localcg);
  }
  
  protected void a(int paramInt, cg paramcg)
  {
    a(paramInt, paramcg, null);
  }
  
  protected void a(int paramInt, cg paramcg, Runnable paramRunnable)
  {
    if ((paramInt < 0) || (paramInt > e.b() - 1)) {}
    do
    {
      an localan;
      do
      {
        return;
        localan = e(paramInt);
        if (localan == null) {
          break;
        }
      } while (paramcg == null);
      paramcg.a(e.a(paramInt), localan);
      return;
      if (paramcg != null) {
        paramcg.a(e.a(paramInt));
      }
    } while (t == null);
    t.a(e.a(paramInt), new cb(this, paramInt, paramcg, paramRunnable), paramInt);
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    int i2 = e.b();
    if (i2 <= 0) {
      return;
    }
    if (paramInt > i2 - 1) {
      paramInt = i2 - 2;
    }
    for (;;)
    {
      if (paramInt < 0) {}
      for (int i1 = 0;; i1 = paramInt)
      {
        c = i1;
        label170:
        cg localcg;
        String str;
        label286:
        label325:
        Object localObject;
        if (!E)
        {
          S.a(i1);
          if (i1 > c) {
            S.a(i1 - 6, i1 + 10);
          }
        }
        else
        {
          if ((g != null) && (g.getDefaultScale() > 0.0F) && (g.getScale() - g.getDefaultScale() > 0.0F)) {
            g.a(g.getDefaultScale());
          }
          b.removeCallbacks(I);
          f(i1);
          if (i2 != 1) {
            break label519;
          }
          i.c(false);
          i.b(false);
          i2 = i1 % 3;
          localcg = (cg)i.getChildAt(i2);
          if (localcg == null) {
            break;
          }
          g = a;
          str = e.a(i1).d();
          if ((com.estrongs.android.util.bk.a("load-sucess::" + str, localcg.getTag())) || (com.estrongs.android.util.bk.a("load-error::" + str, localcg.getTag()))) {
            break label588;
          }
          paramInt = 1;
          if ((g.h == null) || (g.h.b() == null)) {
            break label593;
          }
          paramInt |= g.h.b().isRecycled();
          if (com.estrongs.android.util.bg.b(str) != 65555) {
            break label684;
          }
          if (!E) {
            break label612;
          }
          if (!(e.a(i1) instanceof com.estrongs.android.pop.app.imageviewer.gallery.c)) {
            break label603;
          }
          File localFile = ((com.estrongs.android.pop.app.imageviewer.gallery.c)e.a(i1)).e();
          localObject = localFile.getAbsolutePath();
          if (localFile.exists()) {
            break label598;
          }
          paramInt = 1;
          label394:
          if (paramInt == 0) {
            break label621;
          }
          a(i1, localcg, new bz(this, i1));
        }
        for (;;)
        {
          if (j()) {
            ag.g().a(str, ap.a(str, com.estrongs.android.g.a.a(), true, true), ap.d(str), com.estrongs.android.util.bg.U(ap.d(str)), null);
          }
          if (paramBoolean) {
            g();
          }
          a();
          if (i.getCurrentScreen() != i2) {
            i.setCurrentScreen(i2);
          }
          a(i1 - 1);
          a(i1 + 1);
          return;
          S.a(i1 - 10, i1 + 6);
          break;
          label519:
          if (i1 == 0)
          {
            i.c(false);
            i.b(true);
            break label170;
          }
          if (i1 == i2 - 1)
          {
            i.c(true);
            i.b(false);
            break label170;
          }
          i.c(true);
          i.b(true);
          break label170;
          label588:
          paramInt = 0;
          break label286;
          label593:
          paramInt = 1;
          break label325;
          label598:
          paramInt = 0;
          break label394;
          label603:
          localObject = str;
          paramInt = 0;
          break label394;
          label612:
          localObject = str;
          paramInt = 0;
          break label394;
          label621:
          g.h.a(0);
          localObject = new ca(this, (String)localObject, localcg, i1);
          if (localcg.a() != null) {}
          try
          {
            localcg.a().stop();
            localcg.a(null);
            localcg.a((com.estrongs.android.f.a)localObject);
            ((com.estrongs.android.f.a)localObject).start();
            continue;
            label684:
            if (paramInt != 0) {
              a(i1, localcg);
            } else if ((g != null) && (g.getDrawable() == null)) {
              a(i1, localcg);
            }
          }
          catch (Exception localException)
          {
            for (;;) {}
          }
        }
      }
    }
  }
  
  protected void a(MotionEvent paramMotionEvent) {}
  
  protected void a(View paramView)
  {
    f = new GestureDetector(this, new ch(this));
    paramView.setOnTouchListener(new bq(this, new bf(this)));
  }
  
  protected void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!a))
    {
      a();
      b.removeCallbacks(Q);
      b.postDelayed(Q, q + R);
      return;
    }
    g();
    b.removeCallbacks(I);
    b.removeCallbacks(P);
    b.removeCallbacks(Q);
  }
  
  void b(int paramInt)
  {
    w = paramInt;
    Window localWindow = getWindow();
    if (paramInt == 1)
    {
      localWindow.clearFlags(128);
      if (x)
      {
        localWindow.addFlags(1024);
        return;
      }
      localWindow.clearFlags(1024);
      return;
    }
    localWindow.addFlags(128);
  }
  
  boolean b()
  {
    String str = getIntent().getAction();
    return ("android.intent.action.PICK".equals(str)) || ("android.intent.action.GET_CONTENT".equals(str));
  }
  
  e c()
  {
    try
    {
      e locale = e.a(c);
      return locale;
    }
    catch (Exception localException) {}
    return null;
  }
  
  protected void d()
  {
    if (c == e.b() - 1)
    {
      g();
      a();
      return;
    }
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.1F, 1.0F);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation1.setDuration(R);
    localAlphaAnimation2.setDuration(R);
    i.setInAnimation(localAlphaAnimation1);
    i.setOutAnimation(localAlphaAnimation2);
    i.setAnimateFirstView(true);
    f();
    b(2);
    a(true);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a) {
      return true;
    }
    try
    {
      boolean bool = super.dispatchTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (Exception paramMotionEvent) {}
    return true;
  }
  
  protected void e()
  {
    i.setInAnimation(null);
    i.setOutAnimation(null);
    i.setAnimateFirstView(false);
    b(1);
    a(false);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        return;
      } while (paramInt2 != -1);
      u = Uri.parse(paramIntent.getAction());
    } while (e == null);
    paramIntent = e.a(u);
    if (paramIntent == null)
    {
      finish();
      return;
    }
    c = e.a(paramIntent);
    a(c, false);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131625033: 
      g(1);
      return;
    }
    g(-1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (k == null) {
      k = new DisplayMetrics();
    }
    getWindowManager().getDefaultDisplay().getMetrics(k);
  }
  
  /* Error */
  public void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 911	com/estrongs/android/pop/app/imageviewer/NoSearchActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: iconst_1
    //   7: putfield 831	com/estrongs/android/pop/app/imageviewer/ViewImage21:x	Z
    //   10: aload_0
    //   11: aload_0
    //   12: invokestatic 917	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   15: putfield 627	com/estrongs/android/pop/app/imageviewer/ViewImage21:y	Landroid/content/SharedPreferences;
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 627	com/estrongs/android/pop/app/imageviewer/ViewImage21:y	Landroid/content/SharedPreferences;
    //   23: ldc_w 919
    //   26: ldc2_w 150
    //   29: invokeinterface 925 4 0
    //   34: putfield 153	com/estrongs/android/pop/app/imageviewer/ViewImage21:q	J
    //   37: aload_0
    //   38: aload_0
    //   39: invokestatic 930	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   42: putfield 109	com/estrongs/android/pop/app/imageviewer/ViewImage21:H	Lcom/estrongs/android/j/c;
    //   45: aload_0
    //   46: invokevirtual 824	com/estrongs/android/pop/app/imageviewer/ViewImage21:getWindow	()Landroid/view/Window;
    //   49: sipush 1024
    //   52: invokevirtual 834	android/view/Window:addFlags	(I)V
    //   55: aload_0
    //   56: ldc_w 931
    //   59: invokevirtual 934	com/estrongs/android/pop/app/imageviewer/ViewImage21:setContentView	(I)V
    //   62: new 936	android/graphics/drawable/ColorDrawable
    //   65: dup
    //   66: ldc_w 937
    //   69: invokespecial 939	android/graphics/drawable/ColorDrawable:<init>	(I)V
    //   72: astore 6
    //   74: aload 6
    //   76: sipush 150
    //   79: invokevirtual 942	android/graphics/drawable/ColorDrawable:setAlpha	(I)V
    //   82: aload_0
    //   83: invokevirtual 838	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   86: invokevirtual 945	android/content/Intent:getData	()Landroid/net/Uri;
    //   89: astore_1
    //   90: ldc_w 947
    //   93: aload_1
    //   94: invokevirtual 185	android/net/Uri:getScheme	()Ljava/lang/String;
    //   97: invokevirtual 191	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   100: ifeq +616 -> 716
    //   103: aload_0
    //   104: aload_1
    //   105: invokevirtual 950	android/net/Uri:getPath	()Ljava/lang/String;
    //   108: putfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   111: aload_0
    //   112: getfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   115: invokestatic 953	com/estrongs/android/util/bk:a	(Ljava/lang/CharSequence;)Z
    //   118: ifeq +11 -> 129
    //   121: aload_0
    //   122: aload_1
    //   123: invokevirtual 208	android/net/Uri:toString	()Ljava/lang/String;
    //   126: putfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   129: aload_0
    //   130: invokevirtual 838	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   133: ldc_w 955
    //   136: invokevirtual 958	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   139: astore 4
    //   141: aload 4
    //   143: astore_1
    //   144: aload 4
    //   146: invokestatic 953	com/estrongs/android/util/bk:a	(Ljava/lang/CharSequence;)Z
    //   149: ifeq +14 -> 163
    //   152: aload_0
    //   153: invokevirtual 838	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   156: ldc_w 960
    //   159: invokevirtual 958	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   162: astore_1
    //   163: aload_1
    //   164: invokestatic 953	com/estrongs/android/util/bk:a	(Ljava/lang/CharSequence;)Z
    //   167: ifne +566 -> 733
    //   170: aload_0
    //   171: aload_1
    //   172: invokestatic 620	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   175: putfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   178: aload_0
    //   179: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   182: ifnonnull +13 -> 195
    //   185: aload_0
    //   186: ldc_w 962
    //   189: invokestatic 620	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   192: putfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   195: ldc_w 947
    //   198: aload_0
    //   199: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   202: invokevirtual 185	android/net/Uri:getScheme	()Ljava/lang/String;
    //   205: invokevirtual 191	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   208: ifeq +11 -> 219
    //   211: aload_0
    //   212: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   215: invokevirtual 950	android/net/Uri:getPath	()Ljava/lang/String;
    //   218: astore_1
    //   219: aload_1
    //   220: invokestatic 223	com/estrongs/android/util/ap:aY	(Ljava/lang/String;)Z
    //   223: ifne +10 -> 233
    //   226: aload_1
    //   227: invokestatic 965	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   230: ifeq +113 -> 343
    //   233: aload_0
    //   234: getfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   237: invokestatic 967	com/estrongs/android/util/ap:e	(Ljava/lang/String;)Ljava/lang/String;
    //   240: astore 5
    //   242: aload 5
    //   244: astore 4
    //   246: aload 5
    //   248: ldc_w 405
    //   251: invokevirtual 970	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   254: ifne +26 -> 280
    //   257: new 387	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 388	java/lang/StringBuilder:<init>	()V
    //   264: aload 5
    //   266: invokevirtual 398	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: ldc_w 405
    //   272: invokevirtual 398	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 408	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: astore 4
    //   280: aload_0
    //   281: new 972	com/estrongs/fs/b
    //   284: dup
    //   285: aconst_null
    //   286: invokespecial 975	com/estrongs/fs/b:<init>	(Lcom/estrongs/fs/i;)V
    //   289: putfield 103	com/estrongs/android/pop/app/imageviewer/ViewImage21:z	Lcom/estrongs/fs/b;
    //   292: ldc_w 976
    //   295: istore_2
    //   296: invokestatic 982	com/estrongs/android/pop/view/FileExplorerActivity:X	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   299: invokevirtual 985	com/estrongs/android/pop/view/FileExplorerActivity:O	()Lcom/estrongs/android/view/cr;
    //   302: invokevirtual 988	java/lang/Object:hashCode	()I
    //   305: istore_3
    //   306: iload_3
    //   307: istore_2
    //   308: aload_0
    //   309: invokevirtual 838	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   312: ldc_w 990
    //   315: iconst_0
    //   316: invokevirtual 994	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   319: ifne +24 -> 343
    //   322: new 996	com/estrongs/android/view/bn
    //   325: dup
    //   326: aload 4
    //   328: iload_2
    //   329: invokespecial 999	com/estrongs/android/view/bn:<init>	(Ljava/lang/String;I)V
    //   332: astore 4
    //   334: aload_0
    //   335: getfield 103	com/estrongs/android/pop/app/imageviewer/ViewImage21:z	Lcom/estrongs/fs/b;
    //   338: aload 4
    //   340: invokevirtual 1001	com/estrongs/fs/b:a	(Lcom/estrongs/fs/i;)V
    //   343: aload_1
    //   344: invokestatic 1003	com/estrongs/android/util/bg:c	(Ljava/lang/String;)Z
    //   347: ifne +23 -> 370
    //   350: aload_0
    //   351: invokestatic 237	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   354: astore 5
    //   356: aload_1
    //   357: invokestatic 1005	com/estrongs/android/util/ap:X	(Ljava/lang/String;)Z
    //   360: ifeq +387 -> 747
    //   363: aload_0
    //   364: getstatic 336	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   367: putfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   370: aload_0
    //   371: aload_0
    //   372: ldc_w 1006
    //   375: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   378: checkcast 377	com/estrongs/android/pop/app/imageviewer/ESGallery
    //   381: putfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   384: aload_0
    //   385: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   388: invokestatic 1009	com/estrongs/android/util/bk:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   391: invokestatic 1012	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   394: ifeq +516 -> 910
    //   397: aload_0
    //   398: aload_0
    //   399: aload_0
    //   400: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   403: invokestatic 1009	com/estrongs/android/util/bk:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   406: invokestatic 394	com/estrongs/android/util/ap:cc	(Ljava/lang/String;)Ljava/lang/String;
    //   409: invokevirtual 1014	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   412: putfield 390	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   415: aload_0
    //   416: iconst_1
    //   417: putfield 105	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   420: aload_0
    //   421: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   424: new 1016	com/estrongs/android/pop/app/imageviewer/cd
    //   427: dup
    //   428: aload_0
    //   429: invokespecial 1017	com/estrongs/android/pop/app/imageviewer/cd:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   432: invokevirtual 1021	com/estrongs/android/pop/app/imageviewer/ESGallery:setOnScrollListener	(Lcom/estrongs/android/pop/app/imageviewer/o;)V
    //   435: aload_0
    //   436: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   439: aload 6
    //   441: invokevirtual 1025	com/estrongs/android/pop/app/imageviewer/ESGallery:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   444: aload_0
    //   445: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   448: iconst_0
    //   449: invokevirtual 1028	com/estrongs/android/pop/app/imageviewer/ESGallery:setCallbackDuringFling	(Z)V
    //   452: aload_0
    //   453: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   456: ldc_w 1029
    //   459: invokevirtual 1032	com/estrongs/android/pop/app/imageviewer/ESGallery:setUnselectedAlpha	(F)V
    //   462: aload_0
    //   463: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   466: new 1034	com/estrongs/android/pop/app/imageviewer/ce
    //   469: dup
    //   470: aload_0
    //   471: invokespecial 1035	com/estrongs/android/pop/app/imageviewer/ce:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   474: invokevirtual 1039	com/estrongs/android/pop/app/imageviewer/ESGallery:setOnItemSelectedListener	(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    //   477: aload_0
    //   478: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   481: new 1041	com/estrongs/android/pop/app/imageviewer/at
    //   484: dup
    //   485: aload_0
    //   486: invokespecial 1042	com/estrongs/android/pop/app/imageviewer/at:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   489: invokevirtual 1043	com/estrongs/android/pop/app/imageviewer/ESGallery:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   492: aload_0
    //   493: aload_0
    //   494: ldc_w 1044
    //   497: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   500: checkcast 649	com/estrongs/android/widget/RealViewSwitcher
    //   503: putfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   506: aload_0
    //   507: getfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   510: iconst_1
    //   511: invokevirtual 1045	com/estrongs/android/widget/RealViewSwitcher:a	(Z)V
    //   514: aload_0
    //   515: getfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   518: iconst_0
    //   519: invokevirtual 1048	com/estrongs/android/widget/RealViewSwitcher:setSwitchControlable	(Z)V
    //   522: new 1050	com/estrongs/android/pop/app/imageviewer/au
    //   525: dup
    //   526: aload_0
    //   527: invokespecial 1051	com/estrongs/android/pop/app/imageviewer/au:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   530: astore_1
    //   531: aload_0
    //   532: getfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   535: aload_1
    //   536: invokevirtual 1055	com/estrongs/android/widget/RealViewSwitcher:setOnScreenSwitchListener	(Lcom/estrongs/android/widget/bd;)V
    //   539: aload_0
    //   540: aload_0
    //   541: getfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   544: invokevirtual 1057	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Landroid/view/View;)V
    //   547: aload_0
    //   548: aload_0
    //   549: ldc_w 1058
    //   552: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   555: checkcast 410	android/widget/TextView
    //   558: putfield 383	com/estrongs/android/pop/app/imageviewer/ViewImage21:B	Landroid/widget/TextView;
    //   561: aload_0
    //   562: aload_0
    //   563: ldc_w 1059
    //   566: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   569: putfield 380	com/estrongs/android/pop/app/imageviewer/ViewImage21:D	Landroid/view/View;
    //   572: aload_0
    //   573: aload_0
    //   574: ldc_w 1060
    //   577: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   580: checkcast 410	android/widget/TextView
    //   583: putfield 416	com/estrongs/android/pop/app/imageviewer/ViewImage21:C	Landroid/widget/TextView;
    //   586: aload_0
    //   587: aload_0
    //   588: ldc_w 1061
    //   591: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   594: putfield 319	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   597: aload_0
    //   598: getfield 319	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   601: iconst_1
    //   602: invokevirtual 1064	android/view/View:setFocusable	(Z)V
    //   605: aload_0
    //   606: getfield 319	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   609: new 1066	com/estrongs/android/pop/app/imageviewer/av
    //   612: dup
    //   613: aload_0
    //   614: invokespecial 1067	com/estrongs/android/pop/app/imageviewer/av:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   617: invokevirtual 1071	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   620: aload_0
    //   621: ldc_w 1072
    //   624: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   627: new 1074	com/estrongs/android/pop/app/imageviewer/aw
    //   630: dup
    //   631: aload_0
    //   632: invokespecial 1075	com/estrongs/android/pop/app/imageviewer/aw:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   635: invokevirtual 1071	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   638: aload_0
    //   639: aload_0
    //   640: invokestatic 1080	com/estrongs/android/pop/esclasses/k:a	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   643: putfield 1082	com/estrongs/android/pop/app/imageviewer/ViewImage21:j	Landroid/view/LayoutInflater;
    //   646: aload_0
    //   647: getfield 105	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   650: ifeq +11 -> 661
    //   653: aload_0
    //   654: getfield 375	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   657: iconst_4
    //   658: invokevirtual 378	com/estrongs/android/pop/app/imageviewer/ESGallery:setVisibility	(I)V
    //   661: iconst_0
    //   662: istore_2
    //   663: iload_2
    //   664: iconst_3
    //   665: if_icmpge +339 -> 1004
    //   668: new 652	com/estrongs/android/pop/app/imageviewer/cg
    //   671: dup
    //   672: aload_0
    //   673: aload_0
    //   674: invokespecial 1085	com/estrongs/android/pop/app/imageviewer/cg:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/content/Context;)V
    //   677: astore_1
    //   678: aload_1
    //   679: aload_0
    //   680: getfield 160	com/estrongs/android/pop/app/imageviewer/ViewImage21:r	Landroid/view/ViewGroup$LayoutParams;
    //   683: invokevirtual 1089	com/estrongs/android/pop/app/imageviewer/cg:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   686: aload_0
    //   687: getfield 647	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   690: aload_1
    //   691: invokevirtual 1092	com/estrongs/android/widget/RealViewSwitcher:addView	(Landroid/view/View;)V
    //   694: iload_2
    //   695: iconst_1
    //   696: iadd
    //   697: istore_2
    //   698: goto -35 -> 663
    //   701: astore_1
    //   702: aload_0
    //   703: ldc2_w 150
    //   706: putfield 153	com/estrongs/android/pop/app/imageviewer/ViewImage21:q	J
    //   709: aload_1
    //   710: invokevirtual 608	java/lang/Exception:printStackTrace	()V
    //   713: goto -676 -> 37
    //   716: aload_0
    //   717: aload_0
    //   718: invokevirtual 838	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   721: ldc_w 960
    //   724: invokevirtual 958	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   727: putfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   730: goto -619 -> 111
    //   733: aload_0
    //   734: aload_0
    //   735: getfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   738: invokestatic 620	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   741: putfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   744: goto -566 -> 178
    //   747: new 1094	com/estrongs/android/pop/utils/co
    //   750: dup
    //   751: invokespecial 1095	com/estrongs/android/pop/utils/co:<init>	()V
    //   754: astore 4
    //   756: aload 4
    //   758: invokevirtual 1096	com/estrongs/android/pop/utils/co:a	()V
    //   761: aload 5
    //   763: aload_1
    //   764: invokevirtual 1098	com/estrongs/fs/d:h	(Ljava/lang/String;)Z
    //   767: ifeq +127 -> 894
    //   770: aload 5
    //   772: aload_1
    //   773: invokevirtual 1101	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   776: invokeinterface 1107 1 0
    //   781: astore_1
    //   782: aload_1
    //   783: invokeinterface 1112 1 0
    //   788: ifeq +321 -> 1109
    //   791: aload_1
    //   792: invokeinterface 1115 1 0
    //   797: checkcast 1117	com/estrongs/fs/h
    //   800: astore 5
    //   802: aload 5
    //   804: invokeinterface 1121 1 0
    //   809: invokevirtual 1124	com/estrongs/fs/w:a	()Z
    //   812: ifne -30 -> 782
    //   815: aload 5
    //   817: invokeinterface 1125 1 0
    //   822: invokestatic 1003	com/estrongs/android/util/bg:c	(Ljava/lang/String;)Z
    //   825: ifeq -43 -> 782
    //   828: aload_0
    //   829: aload 5
    //   831: invokeinterface 1125 1 0
    //   836: invokestatic 620	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   839: putfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   842: iconst_1
    //   843: istore_2
    //   844: iload_2
    //   845: ifne +49 -> 894
    //   848: aload_0
    //   849: new 387	java/lang/StringBuilder
    //   852: dup
    //   853: invokespecial 388	java/lang/StringBuilder:<init>	()V
    //   856: aload_0
    //   857: ldc_w 1126
    //   860: invokevirtual 492	com/estrongs/android/pop/app/imageviewer/ViewImage21:getString	(I)Ljava/lang/String;
    //   863: invokevirtual 398	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: ldc_w 1128
    //   869: invokevirtual 398	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: aload_0
    //   873: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   876: invokevirtual 950	android/net/Uri:getPath	()Ljava/lang/String;
    //   879: invokevirtual 398	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   882: invokevirtual 408	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   885: iconst_1
    //   886: invokestatic 1133	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   889: aload_0
    //   890: invokevirtual 871	com/estrongs/android/pop/app/imageviewer/ViewImage21:finish	()V
    //   893: return
    //   894: aload 4
    //   896: invokevirtual 1135	com/estrongs/android/pop/utils/co:b	()V
    //   899: goto -529 -> 370
    //   902: astore_1
    //   903: aload_1
    //   904: invokevirtual 1136	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   907: goto -537 -> 370
    //   910: aload_0
    //   911: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   914: invokestatic 1009	com/estrongs/android/util/bk:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   917: invokestatic 1139	com/estrongs/android/util/ap:bh	(Ljava/lang/String;)Z
    //   920: ifeq +28 -> 948
    //   923: aload_0
    //   924: aload_0
    //   925: ldc_w 1140
    //   928: invokevirtual 492	com/estrongs/android/pop/app/imageviewer/ViewImage21:getString	(I)Ljava/lang/String;
    //   931: putfield 390	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   934: aload_0
    //   935: aload_0
    //   936: getfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   939: invokestatic 1012	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   942: putfield 105	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   945: goto -525 -> 420
    //   948: aload_0
    //   949: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   952: invokestatic 1009	com/estrongs/android/util/bk:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   955: invokestatic 223	com/estrongs/android/util/ap:aY	(Ljava/lang/String;)Z
    //   958: ifeq +23 -> 981
    //   961: aload_0
    //   962: aload_0
    //   963: aload_0
    //   964: getfield 107	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   967: invokevirtual 1014	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   970: putfield 390	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   973: aload_0
    //   974: iconst_0
    //   975: putfield 105	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   978: goto -558 -> 420
    //   981: aload_0
    //   982: aload_0
    //   983: aload_0
    //   984: getfield 218	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   987: invokestatic 1009	com/estrongs/android/util/bk:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   990: invokevirtual 1014	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   993: putfield 390	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   996: aload_0
    //   997: iconst_0
    //   998: putfield 105	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   1001: goto -581 -> 420
    //   1004: aload_0
    //   1005: getfield 698	com/estrongs/android/pop/app/imageviewer/ViewImage21:t	Lcom/estrongs/android/pop/app/imageviewer/t;
    //   1008: ifnonnull +18 -> 1026
    //   1011: aload_0
    //   1012: new 1142	com/estrongs/android/pop/app/imageviewer/ax
    //   1015: dup
    //   1016: aload_0
    //   1017: ldc_w 1144
    //   1020: invokespecial 1147	com/estrongs/android/pop/app/imageviewer/ax:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    //   1023: putfield 698	com/estrongs/android/pop/app/imageviewer/ViewImage21:t	Lcom/estrongs/android/pop/app/imageviewer/t;
    //   1026: aload_0
    //   1027: aload_0
    //   1028: ldc_w 1148
    //   1031: invokevirtual 449	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   1034: putfield 429	com/estrongs/android/pop/app/imageviewer/ViewImage21:L	Landroid/view/View;
    //   1037: aload_0
    //   1038: getfield 429	com/estrongs/android/pop/app/imageviewer/ViewImage21:L	Landroid/view/View;
    //   1041: new 1150	com/estrongs/android/pop/app/imageviewer/ay
    //   1044: dup
    //   1045: aload_0
    //   1046: invokespecial 1151	com/estrongs/android/pop/app/imageviewer/ay:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   1049: invokevirtual 1071	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1052: aload_0
    //   1053: getfield 123	com/estrongs/android/pop/app/imageviewer/ViewImage21:K	Lcom/estrongs/android/pop/app/ag;
    //   1056: aload_0
    //   1057: getfield 132	com/estrongs/android/pop/app/imageviewer/ViewImage21:O	Lcom/estrongs/android/pop/app/imageviewer/cf;
    //   1060: invokevirtual 1154	com/estrongs/android/pop/app/ag:a	(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    //   1063: aload_0
    //   1064: getfield 123	com/estrongs/android/pop/app/imageviewer/ViewImage21:K	Lcom/estrongs/android/pop/app/ag;
    //   1067: aload_0
    //   1068: getfield 132	com/estrongs/android/pop/app/imageviewer/ViewImage21:O	Lcom/estrongs/android/pop/app/imageviewer/cf;
    //   1071: invokevirtual 1157	com/estrongs/android/pop/app/ag:a	(Lcom/estrongs/chromecast/CastDeviceListener;)V
    //   1074: aload_0
    //   1075: getfield 123	com/estrongs/android/pop/app/imageviewer/ViewImage21:K	Lcom/estrongs/android/pop/app/ag;
    //   1078: aload_0
    //   1079: getfield 132	com/estrongs/android/pop/app/imageviewer/ViewImage21:O	Lcom/estrongs/android/pop/app/imageviewer/cf;
    //   1082: invokevirtual 1160	com/estrongs/android/pop/app/ag:a	(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    //   1085: aload_0
    //   1086: invokespecial 262	com/estrongs/android/pop/app/imageviewer/ViewImage21:f	()V
    //   1089: new 1162	com/estrongs/android/pop/app/imageviewer/az
    //   1092: dup
    //   1093: aload_0
    //   1094: ldc_w 1164
    //   1097: invokespecial 1165	com/estrongs/android/pop/app/imageviewer/az:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    //   1100: invokevirtual 1166	com/estrongs/android/pop/app/imageviewer/az:start	()V
    //   1103: return
    //   1104: astore 5
    //   1106: goto -798 -> 308
    //   1109: iconst_0
    //   1110: istore_2
    //   1111: goto -267 -> 844
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1114	0	this	ViewImage21
    //   0	1114	1	paramBundle	Bundle
    //   295	816	2	i1	int
    //   305	2	3	i2	int
    //   139	756	4	localObject1	Object
    //   240	590	5	localObject2	Object
    //   1104	1	5	localException	Exception
    //   72	368	6	localColorDrawable	android.graphics.drawable.ColorDrawable
    // Exception table:
    //   from	to	target	type
    //   18	37	701	java/lang/Exception
    //   356	370	902	com/estrongs/fs/FileSystemException
    //   747	782	902	com/estrongs/fs/FileSystemException
    //   782	842	902	com/estrongs/fs/FileSystemException
    //   848	893	902	com/estrongs/fs/FileSystemException
    //   894	899	902	com/estrongs/fs/FileSystemException
    //   296	306	1104	java/lang/Exception
  }
  
  protected void onDestroy()
  {
    b.a();
    int i1;
    if (i != null) {
      i1 = 0;
    }
    for (;;)
    {
      cg localcg;
      if (i1 < i.getChildCount())
      {
        localcg = (cg)i.getChildAt(i1);
        if ((localcg == null) || (localcg.a() == null)) {}
      }
      try
      {
        localcg.a().stop();
        localcg.a(null);
        i1 += 1;
        continue;
        if (e != null) {
          e.a();
        }
        if (S != null) {
          S.a();
        }
        if (t != null)
        {
          t.a();
          t.b();
          t = null;
        }
        if (g != null) {
          g.a();
        }
        if (J != null) {
          J.a();
        }
        K.b(O);
        K.b(O);
        K.b(O);
        if (M != null) {
          M.a();
        }
        super.onDestroy();
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool2 = true;
    switch (paramInt)
    {
    }
    for (;;)
    {
      boolean bool1 = super.onKeyDown(paramInt, paramKeyEvent);
      do
      {
        long l1;
        do
        {
          return bool1;
          if (a(m))
          {
            c(m);
            return true;
          }
          if (!a(n)) {
            break;
          }
          c(n);
          return true;
          l1 = System.currentTimeMillis();
          bool1 = bool2;
        } while (l1 - T < 500L);
        T = l1;
        bool1 = bool2;
      } while (w == 2);
      if (!v) {
        g();
      }
      p();
      continue;
      if (!v)
      {
        int i1 = c - 1;
        int i2 = e.b();
        if ((i1 >= 0) && (i1 < i2) && (S != null))
        {
          a(i1, false);
          continue;
          if (!v)
          {
            i1 = c + 1;
            i2 = e.b();
            if ((i1 >= 0) && (i1 < i2) && (S != null)) {
              a(i1, false);
            }
          }
        }
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    int i1 = c;
    cg localcg = (cg)i.getChildAt(i1 % 3);
    if ((localcg != null) && (localcg.a() != null)) {
      localcg.a().stop();
    }
    a = true;
    if (w == 2) {
      a(false);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (getIntent().getBooleanExtra("slide_mode", false)) {
      new Handler().postDelayed(new bv(this), 500L);
    }
    a = false;
    if (w == 2) {
      a(true);
    }
    int i1 = c;
    cg localcg = (cg)i.getChildAt(i1 % 3);
    if ((localcg != null) && (localcg.a() != null)) {
      localcg.a().start();
    }
    h();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    try
    {
      paramBundle.putParcelable("uri", e.a(c).f());
      if (w == 2) {}
      for (boolean bool = true;; bool = false)
      {
        paramBundle.putBoolean("slideshow", bool);
        return;
      }
      return;
    }
    catch (Exception paramBundle) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ViewImage21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */