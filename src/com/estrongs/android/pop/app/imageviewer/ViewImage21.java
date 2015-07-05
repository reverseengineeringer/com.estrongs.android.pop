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
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.pop.app.r;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;
import com.estrongs.android.pop.m;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
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
  private final Runnable H = new as(this);
  private a I;
  private aa J = aa.g();
  private View K;
  private r L = null;
  private int M = 0;
  private cg N = new cg(this);
  private final Runnable O = new bu(this);
  private final Runnable P = new bv(this);
  private int Q = 800;
  private q R;
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
  protected Runnable l = new bx(this);
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
    if (am.aO(u.toString())) {
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
        p.setAnimationListener(new bo(this));
      }
      p.start();
      paramESScrollMenuView.setAnimation(p);
      paramESScrollMenuView.setVisibility(0);
    } while (!paramESScrollMenuView.equals(paramESScrollMenuView));
    ((ImageView)h.findViewById(2131361853)).setImageResource(2130838204);
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
      o.setAnimationListener(new bp(this));
    }
    o.start();
    paramESScrollMenuView.setAnimation(o);
    paramESScrollMenuView.setVisibility(4);
    a();
  }
  
  private an e(int paramInt)
  {
    e locale = e.a(paramInt);
    an localan = I.a(locale);
    if ((localan != null) && (!localan.g())) {
      return localan;
    }
    I.b(locale);
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
      B.setText(am.bL(F) + " (" + (paramInt + 1) + "/" + e.b() + ")");
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
    if (aa.b())
    {
      K.setVisibility(0);
      return;
    }
    K.setVisibility(8);
  }
  
  private void i()
  {
    if (L != null) {
      return;
    }
    L = new r(this);
    L.a(new bd(this));
  }
  
  private boolean j()
  {
    return M == 1;
  }
  
  private void k()
  {
    M = 0;
    ((ImageView)K.findViewById(2131361853)).setImageResource(2130838199);
  }
  
  private void l()
  {
    M = 1;
    ((ImageView)K.findViewById(2131361853)).setImageResource(2130838158);
  }
  
  private void m()
  {
    m = ((ESScrollMenuView)findViewById(2131362218));
    m.a();
    int i1 = 0;
    try
    {
      boolean bool = ae.a(e.a(c).f());
      i1 = bool;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    if ((!E) && (i1 != 0)) {
      m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838172), getString(2131427347)), new be(this));
    }
    m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838249), getString(2131428198)), new bf(this));
    m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838231), getString(2131427982)), new bh(this));
    if (!E)
    {
      m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838235), getString(2131427934)), new bi(this));
      if (i1 != 0) {
        m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838188), getString(2131427388)), new bj(this));
      }
    }
    if (aa.a()) {
      m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838157), getString(2131428525)), new bk(this));
    }
    m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838182), getString(2131428025)), new bl(this));
  }
  
  private void n()
  {
    n = ((ESScrollMenuView)findViewById(2131362423));
    n.a(2131362424);
    n.a();
    n.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838180), getString(2131428524)), new bm(this));
    n.a(new com.estrongs.android.view.a.a(getResources().getDrawable(2130838157), getString(2131428523)), new bn(this));
  }
  
  private boolean o()
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
  
  private boolean p()
  {
    if (a(n))
    {
      c(n);
      return false;
    }
    if (n == null) {
      n();
    }
    b(n);
    return true;
  }
  
  private void q()
  {
    int i3 = 0;
    CharSequence[] arrayOfCharSequence = getResources().getTextArray(2131165199);
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
        new ct(this).a(2131427934).a(2131165194, i2, new bt(this, arrayOfCharSequence)).b(2131427390, new bq(this)).c(2131427340, null).c();
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
  
  private e r()
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
      I = new a(e, 10);
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
    b.removeCallbacks(H);
    if ((!a(m)) && (!a(n))) {
      b.postDelayed(H, 3000L);
    }
  }
  
  protected void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > e.b() - 1)) {}
    ch localch;
    Object localObject;
    do
    {
      do
      {
        return;
        localch = (ch)i.getChildAt(paramInt % 3);
      } while (localch == null);
      if (localch.a() != null)
      {
        localch.a().stop();
        localch.a(null);
      }
      localObject = e.a(paramInt).d();
      if ((!com.estrongs.android.util.bd.a("load-sucess::" + (String)localObject, localch.getTag())) && (!com.estrongs.android.util.bd.a("load-error::" + (String)localObject, localch.getTag()))) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        a(paramInt, localch);
        return;
      }
      localObject = a(localch);
    } while ((localObject == null) || (((ImageViewTouch)localObject).getDrawable() != null));
    a(paramInt, localch);
  }
  
  protected void a(int paramInt, ch paramch)
  {
    a(paramInt, paramch, null);
  }
  
  protected void a(int paramInt, ch paramch, Runnable paramRunnable)
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
      } while (paramch == null);
      paramch.a(e.a(paramInt), localan);
      return;
      if (paramch != null) {
        paramch.a(e.a(paramInt));
      }
    } while (t == null);
    t.a(e.a(paramInt), new cc(this, paramInt, paramch, paramRunnable), paramInt);
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
        ch localch;
        String str;
        label286:
        label325:
        Object localObject;
        if (!E)
        {
          R.a(i1);
          if (i1 > c) {
            R.a(i1 - 6, i1 + 10);
          }
        }
        else
        {
          if ((g != null) && (g.b() > 0.0F) && (g.f() - g.b() > 0.0F)) {
            g.a(g.b());
          }
          b.removeCallbacks(H);
          f(i1);
          if (i2 != 1) {
            break label519;
          }
          i.e(false);
          i.d(false);
          i2 = i1 % 3;
          localch = (ch)i.getChildAt(i2);
          if (localch == null) {
            break;
          }
          g = a;
          str = e.a(i1).d();
          if ((com.estrongs.android.util.bd.a("load-sucess::" + str, localch.getTag())) || (com.estrongs.android.util.bd.a("load-error::" + str, localch.getTag()))) {
            break label588;
          }
          paramInt = 1;
          if ((g.h == null) || (g.h.b() == null)) {
            break label593;
          }
          paramInt |= g.h.b().isRecycled();
          if (bc.b(str) != 65555) {
            break label684;
          }
          if (!E) {
            break label612;
          }
          if (!(e.a(i1) instanceof c)) {
            break label603;
          }
          File localFile = ((c)e.a(i1)).e();
          localObject = localFile.getAbsolutePath();
          if (localFile.exists()) {
            break label598;
          }
          paramInt = 1;
          label394:
          if (paramInt == 0) {
            break label621;
          }
          a(i1, localch, new ca(this, i1));
        }
        for (;;)
        {
          if (j()) {
            aa.g().a(str, am.a(str, com.estrongs.android.c.a.a(), true, true), am.d(str), bc.S(am.d(str)), null);
          }
          if (paramBoolean) {
            g();
          }
          a();
          if (i.h() != i2) {
            i.a(i2);
          }
          a(i1 - 1);
          a(i1 + 1);
          return;
          R.a(i1 - 10, i1 + 6);
          break;
          label519:
          if (i1 == 0)
          {
            i.e(false);
            i.d(true);
            break label170;
          }
          if (i1 == i2 - 1)
          {
            i.e(true);
            i.d(false);
            break label170;
          }
          i.e(true);
          i.d(true);
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
          localObject = new cb(this, (String)localObject, localch, i1);
          if (localch.a() != null) {}
          try
          {
            localch.a().stop();
            localch.a(null);
            localch.a((com.estrongs.android.b.a)localObject);
            ((com.estrongs.android.b.a)localObject).start();
            continue;
            label684:
            if (paramInt != 0) {
              a(i1, localch);
            } else if ((g != null) && (g.getDrawable() == null)) {
              a(i1, localch);
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
    f = new GestureDetector(this, new ci(this));
    paramView.setOnTouchListener(new br(this, new bg(this)));
  }
  
  protected void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!a))
    {
      a();
      b.removeCallbacks(P);
      b.postDelayed(P, q + Q);
      return;
    }
    g();
    b.removeCallbacks(H);
    b.removeCallbacks(O);
    b.removeCallbacks(P);
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
    localAlphaAnimation1.setDuration(Q);
    localAlphaAnimation2.setDuration(Q);
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
    case 2131362421: 
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
    //   2: invokespecial 880	com/estrongs/android/pop/app/imageviewer/NoSearchActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: iconst_1
    //   7: putfield 800	com/estrongs/android/pop/app/imageviewer/ViewImage21:x	Z
    //   10: aload_0
    //   11: aload_0
    //   12: invokestatic 886	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   15: putfield 602	com/estrongs/android/pop/app/imageviewer/ViewImage21:y	Landroid/content/SharedPreferences;
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 602	com/estrongs/android/pop/app/imageviewer/ViewImage21:y	Landroid/content/SharedPreferences;
    //   23: ldc_w 888
    //   26: ldc2_w 145
    //   29: invokeinterface 894 4 0
    //   34: putfield 148	com/estrongs/android/pop/app/imageviewer/ViewImage21:q	J
    //   37: aload_0
    //   38: iconst_1
    //   39: invokevirtual 898	com/estrongs/android/pop/app/imageviewer/ViewImage21:requestWindowFeature	(I)Z
    //   42: pop
    //   43: aload_0
    //   44: invokevirtual 793	com/estrongs/android/pop/app/imageviewer/ViewImage21:getWindow	()Landroid/view/Window;
    //   47: sipush 1024
    //   50: invokevirtual 803	android/view/Window:addFlags	(I)V
    //   53: aload_0
    //   54: ldc_w 899
    //   57: invokevirtual 902	com/estrongs/android/pop/app/imageviewer/ViewImage21:setContentView	(I)V
    //   60: new 904	android/graphics/drawable/ColorDrawable
    //   63: dup
    //   64: ldc_w 905
    //   67: invokespecial 907	android/graphics/drawable/ColorDrawable:<init>	(I)V
    //   70: astore 6
    //   72: aload 6
    //   74: sipush 150
    //   77: invokevirtual 910	android/graphics/drawable/ColorDrawable:setAlpha	(I)V
    //   80: aload_0
    //   81: invokevirtual 807	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   84: invokevirtual 913	android/content/Intent:getData	()Landroid/net/Uri;
    //   87: astore_1
    //   88: ldc_w 915
    //   91: aload_1
    //   92: invokevirtual 178	android/net/Uri:getScheme	()Ljava/lang/String;
    //   95: invokevirtual 184	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   98: ifeq +625 -> 723
    //   101: aload_0
    //   102: aload_1
    //   103: invokevirtual 918	android/net/Uri:getPath	()Ljava/lang/String;
    //   106: putfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   109: aload_0
    //   110: getfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   113: invokestatic 921	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   116: ifeq +11 -> 127
    //   119: aload_0
    //   120: aload_1
    //   121: invokevirtual 201	android/net/Uri:toString	()Ljava/lang/String;
    //   124: putfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   127: aload_0
    //   128: invokevirtual 807	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   131: ldc_w 923
    //   134: invokevirtual 926	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   137: astore 4
    //   139: aload 4
    //   141: astore_1
    //   142: aload 4
    //   144: invokestatic 921	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   147: ifeq +14 -> 161
    //   150: aload_0
    //   151: invokevirtual 807	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   154: ldc_w 928
    //   157: invokevirtual 926	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   160: astore_1
    //   161: aload_1
    //   162: invokestatic 921	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   165: ifne +575 -> 740
    //   168: aload_0
    //   169: aload_1
    //   170: invokestatic 594	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   173: putfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   176: aload_0
    //   177: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   180: ifnonnull +13 -> 193
    //   183: aload_0
    //   184: ldc_w 930
    //   187: invokestatic 594	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   190: putfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   193: ldc_w 915
    //   196: aload_0
    //   197: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   200: invokevirtual 178	android/net/Uri:getScheme	()Ljava/lang/String;
    //   203: invokevirtual 184	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   206: ifeq +11 -> 217
    //   209: aload_0
    //   210: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   213: invokevirtual 918	android/net/Uri:getPath	()Ljava/lang/String;
    //   216: astore_1
    //   217: aload_1
    //   218: invokestatic 216	com/estrongs/android/util/am:aO	(Ljava/lang/String;)Z
    //   221: ifne +10 -> 231
    //   224: aload_1
    //   225: invokestatic 933	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   228: ifeq +113 -> 341
    //   231: aload_0
    //   232: getfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   235: invokestatic 935	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   238: astore 5
    //   240: aload 5
    //   242: astore 4
    //   244: aload 5
    //   246: ldc_w 398
    //   249: invokevirtual 938	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   252: ifne +26 -> 278
    //   255: new 380	java/lang/StringBuilder
    //   258: dup
    //   259: invokespecial 381	java/lang/StringBuilder:<init>	()V
    //   262: aload 5
    //   264: invokevirtual 391	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: ldc_w 398
    //   270: invokevirtual 391	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: invokevirtual 401	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: astore 4
    //   278: aload_0
    //   279: new 940	com/estrongs/fs/b
    //   282: dup
    //   283: aconst_null
    //   284: invokespecial 943	com/estrongs/fs/b:<init>	(Lcom/estrongs/fs/i;)V
    //   287: putfield 100	com/estrongs/android/pop/app/imageviewer/ViewImage21:z	Lcom/estrongs/fs/b;
    //   290: ldc_w 944
    //   293: istore_2
    //   294: invokestatic 949	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   297: invokevirtual 952	com/estrongs/android/pop/view/FileExplorerActivity:y	()Lcom/estrongs/android/view/aw;
    //   300: invokevirtual 955	java/lang/Object:hashCode	()I
    //   303: istore_3
    //   304: iload_3
    //   305: istore_2
    //   306: aload_0
    //   307: invokevirtual 807	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   310: ldc_w 957
    //   313: iconst_0
    //   314: invokevirtual 961	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   317: ifne +24 -> 341
    //   320: new 963	com/estrongs/android/view/aj
    //   323: dup
    //   324: aload 4
    //   326: iload_2
    //   327: invokespecial 966	com/estrongs/android/view/aj:<init>	(Ljava/lang/String;I)V
    //   330: astore 4
    //   332: aload_0
    //   333: getfield 100	com/estrongs/android/pop/app/imageviewer/ViewImage21:z	Lcom/estrongs/fs/b;
    //   336: aload 4
    //   338: invokevirtual 968	com/estrongs/fs/b:a	(Lcom/estrongs/fs/i;)V
    //   341: aload_1
    //   342: invokestatic 970	com/estrongs/android/util/bc:c	(Ljava/lang/String;)Z
    //   345: ifne +23 -> 368
    //   348: aload_0
    //   349: invokestatic 230	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   352: astore 5
    //   354: aload_1
    //   355: invokestatic 973	com/estrongs/android/util/am:T	(Ljava/lang/String;)Z
    //   358: ifeq +396 -> 754
    //   361: aload_0
    //   362: getstatic 329	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   365: putfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   368: aload_0
    //   369: aload_0
    //   370: ldc_w 974
    //   373: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   376: checkcast 370	com/estrongs/android/pop/app/imageviewer/ESGallery
    //   379: putfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   382: aload_0
    //   383: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   386: invokestatic 977	com/estrongs/android/util/bd:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   389: invokestatic 980	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   392: ifeq +525 -> 917
    //   395: aload_0
    //   396: aload_0
    //   397: aload_0
    //   398: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   401: invokestatic 977	com/estrongs/android/util/bd:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   404: invokestatic 387	com/estrongs/android/util/am:bL	(Ljava/lang/String;)Ljava/lang/String;
    //   407: invokevirtual 982	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   410: putfield 383	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   413: aload_0
    //   414: iconst_1
    //   415: putfield 102	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   418: aload_0
    //   419: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   422: new 984	com/estrongs/android/pop/app/imageviewer/ce
    //   425: dup
    //   426: aload_0
    //   427: invokespecial 985	com/estrongs/android/pop/app/imageviewer/ce:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   430: invokevirtual 988	com/estrongs/android/pop/app/imageviewer/ESGallery:a	(Lcom/estrongs/android/pop/app/imageviewer/o;)V
    //   433: aload_0
    //   434: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   437: aload 6
    //   439: invokevirtual 992	com/estrongs/android/pop/app/imageviewer/ESGallery:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   442: aload_0
    //   443: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   446: iconst_0
    //   447: invokevirtual 995	com/estrongs/android/pop/app/imageviewer/ESGallery:setCallbackDuringFling	(Z)V
    //   450: aload_0
    //   451: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   454: ldc_w 996
    //   457: invokevirtual 999	com/estrongs/android/pop/app/imageviewer/ESGallery:setUnselectedAlpha	(F)V
    //   460: aload_0
    //   461: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   464: new 1001	com/estrongs/android/pop/app/imageviewer/cf
    //   467: dup
    //   468: aload_0
    //   469: invokespecial 1002	com/estrongs/android/pop/app/imageviewer/cf:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   472: invokevirtual 1006	com/estrongs/android/pop/app/imageviewer/ESGallery:setOnItemSelectedListener	(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    //   475: aload_0
    //   476: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   479: new 1008	com/estrongs/android/pop/app/imageviewer/at
    //   482: dup
    //   483: aload_0
    //   484: invokespecial 1009	com/estrongs/android/pop/app/imageviewer/at:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   487: invokevirtual 1010	com/estrongs/android/pop/app/imageviewer/ESGallery:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   490: aload_0
    //   491: aload_0
    //   492: ldc_w 1011
    //   495: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   498: checkcast 624	com/estrongs/android/widget/RealViewSwitcher
    //   501: putfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   504: aload_0
    //   505: getfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   508: iconst_1
    //   509: invokevirtual 1013	com/estrongs/android/widget/RealViewSwitcher:c	(Z)V
    //   512: aload_0
    //   513: getfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   516: iconst_0
    //   517: invokevirtual 1015	com/estrongs/android/widget/RealViewSwitcher:b	(Z)V
    //   520: new 1017	com/estrongs/android/pop/app/imageviewer/au
    //   523: dup
    //   524: aload_0
    //   525: invokespecial 1018	com/estrongs/android/pop/app/imageviewer/au:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   528: astore_1
    //   529: aload_0
    //   530: getfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   533: aload_1
    //   534: invokevirtual 1021	com/estrongs/android/widget/RealViewSwitcher:a	(Lcom/estrongs/android/widget/bc;)V
    //   537: aload_0
    //   538: aload_0
    //   539: getfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   542: invokevirtual 1023	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Landroid/view/View;)V
    //   545: aload_0
    //   546: aload_0
    //   547: ldc_w 1024
    //   550: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   553: checkcast 403	android/widget/TextView
    //   556: putfield 376	com/estrongs/android/pop/app/imageviewer/ViewImage21:B	Landroid/widget/TextView;
    //   559: aload_0
    //   560: aload_0
    //   561: ldc_w 1025
    //   564: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   567: putfield 373	com/estrongs/android/pop/app/imageviewer/ViewImage21:D	Landroid/view/View;
    //   570: aload_0
    //   571: getfield 373	com/estrongs/android/pop/app/imageviewer/ViewImage21:D	Landroid/view/View;
    //   574: aload 6
    //   576: invokevirtual 1026	android/view/View:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   579: aload_0
    //   580: aload_0
    //   581: ldc_w 1027
    //   584: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   587: checkcast 403	android/widget/TextView
    //   590: putfield 409	com/estrongs/android/pop/app/imageviewer/ViewImage21:C	Landroid/widget/TextView;
    //   593: aload_0
    //   594: aload_0
    //   595: ldc_w 1028
    //   598: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   601: putfield 312	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   604: aload_0
    //   605: getfield 312	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   608: iconst_1
    //   609: invokevirtual 1031	android/view/View:setFocusable	(Z)V
    //   612: aload_0
    //   613: getfield 312	com/estrongs/android/pop/app/imageviewer/ViewImage21:h	Landroid/view/View;
    //   616: new 1033	com/estrongs/android/pop/app/imageviewer/av
    //   619: dup
    //   620: aload_0
    //   621: invokespecial 1034	com/estrongs/android/pop/app/imageviewer/av:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   624: invokevirtual 1038	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   627: aload_0
    //   628: ldc_w 1039
    //   631: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   634: new 1041	com/estrongs/android/pop/app/imageviewer/aw
    //   637: dup
    //   638: aload_0
    //   639: invokespecial 1042	com/estrongs/android/pop/app/imageviewer/aw:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   642: invokevirtual 1038	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   645: aload_0
    //   646: aload_0
    //   647: invokestatic 1047	com/estrongs/android/pop/esclasses/g:a	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   650: putfield 1049	com/estrongs/android/pop/app/imageviewer/ViewImage21:j	Landroid/view/LayoutInflater;
    //   653: aload_0
    //   654: getfield 102	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   657: ifeq +11 -> 668
    //   660: aload_0
    //   661: getfield 368	com/estrongs/android/pop/app/imageviewer/ViewImage21:A	Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    //   664: iconst_4
    //   665: invokevirtual 371	com/estrongs/android/pop/app/imageviewer/ESGallery:setVisibility	(I)V
    //   668: iconst_0
    //   669: istore_2
    //   670: iload_2
    //   671: iconst_3
    //   672: if_icmpge +339 -> 1011
    //   675: new 627	com/estrongs/android/pop/app/imageviewer/ch
    //   678: dup
    //   679: aload_0
    //   680: aload_0
    //   681: invokespecial 1052	com/estrongs/android/pop/app/imageviewer/ch:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/content/Context;)V
    //   684: astore_1
    //   685: aload_1
    //   686: aload_0
    //   687: getfield 155	com/estrongs/android/pop/app/imageviewer/ViewImage21:r	Landroid/view/ViewGroup$LayoutParams;
    //   690: invokevirtual 1056	com/estrongs/android/pop/app/imageviewer/ch:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   693: aload_0
    //   694: getfield 622	com/estrongs/android/pop/app/imageviewer/ViewImage21:i	Lcom/estrongs/android/widget/RealViewSwitcher;
    //   697: aload_1
    //   698: invokevirtual 1059	com/estrongs/android/widget/RealViewSwitcher:addView	(Landroid/view/View;)V
    //   701: iload_2
    //   702: iconst_1
    //   703: iadd
    //   704: istore_2
    //   705: goto -35 -> 670
    //   708: astore_1
    //   709: aload_0
    //   710: ldc2_w 145
    //   713: putfield 148	com/estrongs/android/pop/app/imageviewer/ViewImage21:q	J
    //   716: aload_1
    //   717: invokevirtual 582	java/lang/Exception:printStackTrace	()V
    //   720: goto -683 -> 37
    //   723: aload_0
    //   724: aload_0
    //   725: invokevirtual 807	com/estrongs/android/pop/app/imageviewer/ViewImage21:getIntent	()Landroid/content/Intent;
    //   728: ldc_w 928
    //   731: invokevirtual 926	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   734: putfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   737: goto -628 -> 109
    //   740: aload_0
    //   741: aload_0
    //   742: getfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   745: invokestatic 594	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   748: putfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   751: goto -575 -> 176
    //   754: new 1061	com/estrongs/android/pop/utils/cf
    //   757: dup
    //   758: invokespecial 1062	com/estrongs/android/pop/utils/cf:<init>	()V
    //   761: astore 4
    //   763: aload 4
    //   765: invokevirtual 1063	com/estrongs/android/pop/utils/cf:a	()V
    //   768: aload 5
    //   770: aload_1
    //   771: invokevirtual 1065	com/estrongs/fs/d:h	(Ljava/lang/String;)Z
    //   774: ifeq +127 -> 901
    //   777: aload 5
    //   779: aload_1
    //   780: invokevirtual 1068	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   783: invokeinterface 1074 1 0
    //   788: astore_1
    //   789: aload_1
    //   790: invokeinterface 1079 1 0
    //   795: ifeq +321 -> 1116
    //   798: aload_1
    //   799: invokeinterface 1082 1 0
    //   804: checkcast 1084	com/estrongs/fs/h
    //   807: astore 5
    //   809: aload 5
    //   811: invokeinterface 1088 1 0
    //   816: invokevirtual 1091	com/estrongs/fs/m:a	()Z
    //   819: ifne -30 -> 789
    //   822: aload 5
    //   824: invokeinterface 1092 1 0
    //   829: invokestatic 970	com/estrongs/android/util/bc:c	(Ljava/lang/String;)Z
    //   832: ifeq -43 -> 789
    //   835: aload_0
    //   836: aload 5
    //   838: invokeinterface 1092 1 0
    //   843: invokestatic 594	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   846: putfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   849: iconst_1
    //   850: istore_2
    //   851: iload_2
    //   852: ifne +49 -> 901
    //   855: aload_0
    //   856: new 380	java/lang/StringBuilder
    //   859: dup
    //   860: invokespecial 381	java/lang/StringBuilder:<init>	()V
    //   863: aload_0
    //   864: ldc_w 1093
    //   867: invokevirtual 469	com/estrongs/android/pop/app/imageviewer/ViewImage21:getString	(I)Ljava/lang/String;
    //   870: invokevirtual 391	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   873: ldc_w 1095
    //   876: invokevirtual 391	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   879: aload_0
    //   880: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   883: invokevirtual 918	android/net/Uri:getPath	()Ljava/lang/String;
    //   886: invokevirtual 391	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   889: invokevirtual 401	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   892: iconst_1
    //   893: invokestatic 1100	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   896: aload_0
    //   897: invokevirtual 840	com/estrongs/android/pop/app/imageviewer/ViewImage21:finish	()V
    //   900: return
    //   901: aload 4
    //   903: invokevirtual 1102	com/estrongs/android/pop/utils/cf:b	()V
    //   906: goto -538 -> 368
    //   909: astore_1
    //   910: aload_1
    //   911: invokevirtual 1103	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   914: goto -546 -> 368
    //   917: aload_0
    //   918: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   921: invokestatic 977	com/estrongs/android/util/bd:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   924: invokestatic 1106	com/estrongs/android/util/am:aW	(Ljava/lang/String;)Z
    //   927: ifeq +28 -> 955
    //   930: aload_0
    //   931: aload_0
    //   932: ldc_w 1107
    //   935: invokevirtual 469	com/estrongs/android/pop/app/imageviewer/ViewImage21:getString	(I)Ljava/lang/String;
    //   938: putfield 383	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   941: aload_0
    //   942: aload_0
    //   943: getfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   946: invokestatic 980	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   949: putfield 102	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   952: goto -534 -> 418
    //   955: aload_0
    //   956: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   959: invokestatic 977	com/estrongs/android/util/bd:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   962: invokestatic 216	com/estrongs/android/util/am:aO	(Ljava/lang/String;)Z
    //   965: ifeq +23 -> 988
    //   968: aload_0
    //   969: aload_0
    //   970: aload_0
    //   971: getfield 104	com/estrongs/android/pop/app/imageviewer/ViewImage21:G	Ljava/lang/String;
    //   974: invokevirtual 982	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   977: putfield 383	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   980: aload_0
    //   981: iconst_0
    //   982: putfield 102	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   985: goto -567 -> 418
    //   988: aload_0
    //   989: aload_0
    //   990: aload_0
    //   991: getfield 211	com/estrongs/android/pop/app/imageviewer/ViewImage21:u	Landroid/net/Uri;
    //   994: invokestatic 977	com/estrongs/android/util/bd:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   997: invokevirtual 982	com/estrongs/android/pop/app/imageviewer/ViewImage21:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1000: putfield 383	com/estrongs/android/pop/app/imageviewer/ViewImage21:F	Ljava/lang/String;
    //   1003: aload_0
    //   1004: iconst_0
    //   1005: putfield 102	com/estrongs/android/pop/app/imageviewer/ViewImage21:E	Z
    //   1008: goto -590 -> 418
    //   1011: aload_0
    //   1012: getfield 673	com/estrongs/android/pop/app/imageviewer/ViewImage21:t	Lcom/estrongs/android/pop/app/imageviewer/t;
    //   1015: ifnonnull +18 -> 1033
    //   1018: aload_0
    //   1019: new 1109	com/estrongs/android/pop/app/imageviewer/ay
    //   1022: dup
    //   1023: aload_0
    //   1024: ldc_w 1111
    //   1027: invokespecial 1114	com/estrongs/android/pop/app/imageviewer/ay:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    //   1030: putfield 673	com/estrongs/android/pop/app/imageviewer/ViewImage21:t	Lcom/estrongs/android/pop/app/imageviewer/t;
    //   1033: aload_0
    //   1034: aload_0
    //   1035: ldc_w 1115
    //   1038: invokevirtual 443	com/estrongs/android/pop/app/imageviewer/ViewImage21:findViewById	(I)Landroid/view/View;
    //   1041: putfield 422	com/estrongs/android/pop/app/imageviewer/ViewImage21:K	Landroid/view/View;
    //   1044: aload_0
    //   1045: getfield 422	com/estrongs/android/pop/app/imageviewer/ViewImage21:K	Landroid/view/View;
    //   1048: new 1117	com/estrongs/android/pop/app/imageviewer/az
    //   1051: dup
    //   1052: aload_0
    //   1053: invokespecial 1118	com/estrongs/android/pop/app/imageviewer/az:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    //   1056: invokevirtual 1038	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1059: aload_0
    //   1060: getfield 118	com/estrongs/android/pop/app/imageviewer/ViewImage21:J	Lcom/estrongs/android/pop/app/aa;
    //   1063: aload_0
    //   1064: getfield 127	com/estrongs/android/pop/app/imageviewer/ViewImage21:N	Lcom/estrongs/android/pop/app/imageviewer/cg;
    //   1067: invokevirtual 1121	com/estrongs/android/pop/app/aa:a	(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    //   1070: aload_0
    //   1071: getfield 118	com/estrongs/android/pop/app/imageviewer/ViewImage21:J	Lcom/estrongs/android/pop/app/aa;
    //   1074: aload_0
    //   1075: getfield 127	com/estrongs/android/pop/app/imageviewer/ViewImage21:N	Lcom/estrongs/android/pop/app/imageviewer/cg;
    //   1078: invokevirtual 1124	com/estrongs/android/pop/app/aa:a	(Lcom/estrongs/chromecast/CastDeviceListener;)V
    //   1081: aload_0
    //   1082: getfield 118	com/estrongs/android/pop/app/imageviewer/ViewImage21:J	Lcom/estrongs/android/pop/app/aa;
    //   1085: aload_0
    //   1086: getfield 127	com/estrongs/android/pop/app/imageviewer/ViewImage21:N	Lcom/estrongs/android/pop/app/imageviewer/cg;
    //   1089: invokevirtual 1127	com/estrongs/android/pop/app/aa:a	(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    //   1092: aload_0
    //   1093: invokespecial 255	com/estrongs/android/pop/app/imageviewer/ViewImage21:f	()V
    //   1096: new 1129	com/estrongs/android/pop/app/imageviewer/ba
    //   1099: dup
    //   1100: aload_0
    //   1101: ldc_w 1131
    //   1104: invokespecial 1132	com/estrongs/android/pop/app/imageviewer/ba:<init>	(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    //   1107: invokevirtual 1133	com/estrongs/android/pop/app/imageviewer/ba:start	()V
    //   1110: return
    //   1111: astore 5
    //   1113: goto -807 -> 306
    //   1116: iconst_0
    //   1117: istore_2
    //   1118: goto -267 -> 851
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1121	0	this	ViewImage21
    //   0	1121	1	paramBundle	Bundle
    //   293	825	2	i1	int
    //   303	2	3	i2	int
    //   137	765	4	localObject1	Object
    //   238	599	5	localObject2	Object
    //   1111	1	5	localException	Exception
    //   70	505	6	localColorDrawable	android.graphics.drawable.ColorDrawable
    // Exception table:
    //   from	to	target	type
    //   18	37	708	java/lang/Exception
    //   354	368	909	com/estrongs/fs/FileSystemException
    //   754	789	909	com/estrongs/fs/FileSystemException
    //   789	849	909	com/estrongs/fs/FileSystemException
    //   855	900	909	com/estrongs/fs/FileSystemException
    //   901	906	909	com/estrongs/fs/FileSystemException
    //   294	304	1111	java/lang/Exception
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
      ch localch;
      if (i1 < i.getChildCount())
      {
        localch = (ch)i.getChildAt(i1);
        if ((localch == null) || (localch.a() == null)) {}
      }
      try
      {
        localch.a().stop();
        localch.a(null);
        i1 += 1;
        continue;
        if (e != null) {
          e.a();
        }
        if (R != null) {
          R.a();
        }
        if (t != null)
        {
          t.a();
          t.b();
          t = null;
        }
        if (g != null) {
          g.e();
        }
        if (I != null) {
          I.a();
        }
        J.b(N);
        J.b(N);
        J.b(N);
        if (L != null) {
          L.a();
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
    boolean bool = true;
    switch (paramInt)
    {
    }
    for (;;)
    {
      bool = super.onKeyDown(paramInt, paramKeyEvent);
      do
      {
        return bool;
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
      } while (w == 2);
      if (!v) {
        g();
      }
      o();
      continue;
      if (!v)
      {
        int i1 = c - 1;
        int i2 = e.b();
        if ((i1 >= 0) && (i1 < i2))
        {
          a(i1, false);
          continue;
          if (!v)
          {
            i1 = c + 1;
            i2 = e.b();
            if ((i1 >= 0) && (i1 < i2)) {
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
    ch localch = (ch)i.getChildAt(i1 % 3);
    if ((localch != null) && (localch.a() != null)) {
      localch.a().stop();
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
      new Handler().postDelayed(new bw(this), 500L);
    }
    a = false;
    if (w == 2) {
      a(true);
    }
    int i1 = c;
    ch localch = (ch)i.getChildAt(i1 % 3);
    if ((localch != null) && (localch.a() != null)) {
      localch.a().start();
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