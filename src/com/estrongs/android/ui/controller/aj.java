package com.estrongs.android.ui.controller;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.e.ch;
import com.estrongs.android.ui.f.l;
import com.estrongs.android.ui.view.ck;
import com.estrongs.android.view.cq;
import com.estrongs.android.view.cr;
import java.util.ArrayList;
import java.util.List;

public class aj
  extends a
{
  private View A;
  public boolean o = false;
  public ck p = null;
  public ch q = null;
  private ProgressBar r;
  private View s;
  private TextView t;
  private ProgressBar u;
  private ImageView v;
  private EditText w;
  private Button x;
  private TextWatcher y;
  private RelativeLayout z = null;
  
  public aj(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  private void A()
  {
    if (b)
    {
      i.setOnAddressBarClickListener(new av(this));
      i.setOnAddressBarLongClickListener(new be(this));
      return;
    }
    View localView = a.findViewById(2131625102);
    ImageView localImageView = (ImageView)localView.findViewById(2131624054);
    localImageView.setImageDrawable(g.a(localImageView.getDrawable(), e.c(2131558718)));
    localView.setOnClickListener(new bf(this));
    localView.setOnLongClickListener(new bg(this));
  }
  
  private void B()
  {
    View localView = a.findViewById(2131625105);
    if (localView == null) {
      return;
    }
    ImageView localImageView = (ImageView)localView.findViewById(2131624054);
    localImageView.setImageDrawable(g.a(localImageView.getDrawable(), e.c(2131558718)));
    localView.setOnClickListener(new bh(this));
    localView.setOnLongClickListener(new bi(this));
  }
  
  private void C()
  {
    View localView = a.findViewById(2131625101);
    ImageView localImageView = (ImageView)localView.findViewById(2131624054);
    bj localbj = new bj(this);
    bk localbk = new bk(this);
    if (b) {
      localImageView.setImageResource(2130838125);
    }
    for (;;)
    {
      localView.setFocusable(true);
      localView.setOnClickListener(localbj);
      localView.setOnLongClickListener(localbk);
      return;
      localImageView.setImageResource(2130838126);
      localImageView.setImageDrawable(g.a(localImageView.getDrawable(), e.c(2131558718)));
    }
  }
  
  private void D()
  {
    View localView = a.findViewById(2131625106);
    if ((ImageView)localView.findViewById(2131624054) == null) {
      return;
    }
    al localal = new al(this);
    am localam = new am(this);
    localView.setOnClickListener(localal);
    localView.setOnLongClickListener(localam);
  }
  
  private void E()
  {
    s = a.findViewById(2131625401);
    t = ((TextView)a.findViewById(2131624518));
    if (s != null)
    {
      s.findViewById(2131625412).setOnClickListener(new an(this));
      ((ImageView)s.findViewById(2131625413)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).g(2130838525));
      s.findViewById(2131625404).setOnClickListener(new ao(this));
      ((ImageView)s.findViewById(2131625405)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).g(2130838529));
      s.findViewById(2131625407).setOnClickListener(new ap(this));
      ((ImageView)s.findViewById(2131625408)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).g(2130838529));
      s.findViewById(2131625402).setOnClickListener(new aq(this));
      ((ImageView)s.findViewById(2131625410)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).g(2130838527));
      s.findViewById(2131625030).setOnClickListener(new ar(this));
    }
    if ("edit_mode".equals(p.a()))
    {
      s.setVisibility(0);
      t.setVisibility(0);
      cr localcr = a.O();
      if ((localcr != null) && (a.F != null)) {
        a.F.a(localcr.o());
      }
      return;
    }
    s.setVisibility(4);
  }
  
  private void F()
  {
    if (s != null)
    {
      if (a.d())
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
        localAlphaAnimation.setDuration(200L);
        localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
        s.setAnimation(localAlphaAnimation);
        localAlphaAnimation.start();
      }
      s.setVisibility(0);
      if (!b) {
        a.findViewById(2131625100).setVisibility(4);
      }
    }
    if (t != null) {
      t.setVisibility(0);
    }
  }
  
  private TextWatcher G()
  {
    if (y == null) {
      y = new ba(this);
    }
    return y;
  }
  
  private View.OnKeyListener H()
  {
    if (m == null) {
      m = new bb(this);
    }
    return m;
  }
  
  private void I()
  {
    n = new bd(this, a);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    ImageView localImageView;
    if (s != null)
    {
      if (paramInt1 != paramInt2) {
        break label175;
      }
      s.findViewById(2131625407).setVisibility(0);
      s.findViewById(2131625404).setVisibility(8);
      t.setText(paramInt1 + "/" + paramInt2);
      localImageView = (ImageView)s.findViewById(2131625402).findViewById(2131625410);
      boolean bool = a.O().L();
      localImageView.setEnabled(bool);
      if (!bool) {
        break label205;
      }
      localImageView.getDrawable().setAlpha(255);
    }
    for (;;)
    {
      localImageView = (ImageView)s.findViewById(2131625030).findViewById(2131625403);
      if ((paramInt1 <= 0) || (paramInt1 > 3)) {
        break label218;
      }
      s.findViewById(2131625030).setEnabled(true);
      localImageView.getDrawable().setAlpha(255);
      return;
      label175:
      s.findViewById(2131625407).setVisibility(8);
      s.findViewById(2131625404).setVisibility(0);
      break;
      label205:
      localImageView.getDrawable().setAlpha(120);
    }
    label218:
    s.findViewById(2131625030).setEnabled(false);
    localImageView.getDrawable().setAlpha(120);
  }
  
  private void e(boolean paramBoolean)
  {
    if ((s != null) && (s.getVisibility() == 0))
    {
      if (paramBoolean)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.1F);
        localAlphaAnimation.setDuration(200L);
        localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
        s.setAnimation(localAlphaAnimation);
        localAlphaAnimation.start();
      }
      s.setVisibility(8);
      if (!b) {
        a.findViewById(2131625100).setVisibility(0);
      }
    }
    if (t != null) {
      t.setVisibility(4);
    }
  }
  
  private void f(boolean paramBoolean)
  {
    if (com.estrongs.android.util.ap.aQ(a.P())) {
      com.estrongs.android.ui.view.ak.a(a, a.getString(2131231109), 1);
    }
    View localView;
    Object localObject;
    do
    {
      do
      {
        return;
      } while (o);
      localView = a.findViewById(2131624081);
      w = ((EditText)localView.findViewById(2131624501));
      if (u == null) {
        u = ((ProgressBar)localView.findViewById(2131624503));
      }
      if (v == null)
      {
        v = ((ImageView)localView.findViewById(2131624502));
        v.setOnClickListener(new as(this));
      }
      v.setVisibility(4);
      localView.setClickable(true);
      localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(500L);
      ((TranslateAnimation)localObject).setInterpolator(new DecelerateInterpolator());
      ((TranslateAnimation)localObject).setAnimationListener(new at(this, localView));
      localView.setVisibility(0);
      o = true;
      localView.setAnimation((Animation)localObject);
      ((TranslateAnimation)localObject).start();
      localObject = a.O();
    } while (localObject == null);
    FrameLayout localFrameLayout = (FrameLayout)localView.findViewById(2131624498);
    ImageView localImageView = (ImageView)localView.findViewById(2131624499);
    ((cr)localObject).f(true);
    w.removeTextChangedListener(G());
    w.setText(null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131624505);
    ((ImageView)localView.findViewById(2131624506)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).b(2130838597, 2131558745));
    if ((localObject instanceof e)) {
      localLinearLayout.setVisibility(0);
    }
    for (;;)
    {
      localLinearLayout.setOnClickListener(new au(this, (cr)localObject));
      w.addTextChangedListener(G());
      w.setOnEditorActionListener(null);
      localLinearLayout = (LinearLayout)localView.findViewById(2131624508);
      ((ImageView)localView.findViewById(2131624509)).setImageDrawable(com.estrongs.android.ui.theme.at.a(a).b(2130838638, 2131558745));
      localLinearLayout.setOnClickListener(new aw(this, (cr)localObject));
      w.setOnKeyListener(H());
      if (l == null) {
        l = new ax(this, a, localView, localImageView, ((cr)localObject).aq(), localImageView);
      }
      localImageView.setImageDrawable(l.c(((cr)localObject).aq()));
      localFrameLayout.setOnClickListener(new ay(this, (cr)localObject, paramBoolean));
      return;
      localLinearLayout.setVisibility(8);
    }
  }
  
  public void a()
  {
    if ((d) && (!c))
    {
      Object localObject = g.inflate(2130903134, null);
      LinearLayout localLinearLayout = (LinearLayout)((View)localObject).findViewById(2131624524);
      a.f.addView((View)localObject);
      a.z = c();
      localObject = new LinearLayout.LayoutParams(a.getResources().getDisplayMetrics().widthPixels * 3 / 10, -1);
      localLinearLayout.addView(a.z, (ViewGroup.LayoutParams)localObject);
      a.g = g.inflate(2130903382, null);
      localObject = new LinearLayout.LayoutParams(0, -1);
      weight = 1.0F;
      localLinearLayout.addView(a.g, (ViewGroup.LayoutParams)localObject);
      a.ae();
      a.setTabletSideBar(a.z);
      if (b) {}
      a.getWindow().setBackgroundDrawable(e.h());
      A = a.findViewById(2131624513);
      if (b) {}
      i = ((AdvancedAddressBar)a.findViewById(2131625416));
      x = ((Button)a.findViewById(2131624516));
      z = ((RelativeLayout)a.findViewById(2131624523));
      q = new ch(a, b, false);
      q.e(2131558501);
      q.d(false);
      p = q.l();
      if (!"edit_mode".equals(a.q)) {
        break label411;
      }
      q.f(a.e);
      q.n();
    }
    for (;;)
    {
      if (!b) {
        a.findViewById(2131625103);
      }
      return;
      a.g = g.inflate(2130903133, null);
      a.f.addView(a.g);
      a.ae();
      break;
      label411:
      p.a(a.q, Boolean.valueOf(false));
    }
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat)
  {
    Object localObject1 = null;
    if (b) {
      if (Math.abs(paramFloat) >= 1.0E-4F) {
        break label42;
      }
    }
    label42:
    for (float f = 0.0F; (!i.a()) && (f == 0.0F); f = Math.abs(paramFloat)) {
      return;
    }
    Object localObject2 = z().c(paramInt1);
    if (localObject2 != null) {}
    for (localObject2 = ((com.estrongs.android.ui.d.h)localObject2).d();; localObject2 = null)
    {
      com.estrongs.android.ui.d.h localh = z().c(paramInt2);
      if (localh != null) {
        localObject1 = localh.d();
      }
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        localObject3 = new String[2];
        a.a(a.h(paramInt2), localh, localh.a(), (String[])localObject3);
        localObject1 = localObject3[0];
        Object localObject4 = localObject3[1];
        localObject3 = new ArrayList();
        if (localObject4 != null) {
          ((ArrayList)localObject3).add(localObject4);
        }
        ((ArrayList)localObject3).add(localObject1);
        localh.a((ArrayList)localObject3);
      }
      localObject1 = i;
      if (f > 0.0F) {}
      for (boolean bool = true;; bool = false)
      {
        ((AdvancedAddressBar)localObject1).setIsScreenSwitching(bool);
        if (paramFloat <= 0.0F) {
          break;
        }
        i.a((List)localObject2, (List)localObject3, paramFloat);
        return;
      }
      i.a((List)localObject3, (List)localObject2, paramFloat);
      return;
    }
  }
  
  public void a(cr paramcr, String paramString)
  {
    super.a(paramcr, paramString);
  }
  
  public void a(cr paramcr, String paramString, String[] paramArrayOfString, int paramInt)
  {
    super.a(paramcr, paramString, paramArrayOfString, paramInt);
  }
  
  public void a(List<com.estrongs.fs.h> paramList, int paramInt)
  {
    q.a(a.P(), paramList);
    j = paramList.size();
    k = paramInt;
    a(j, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    a(new ak(this, paramBoolean));
  }
  
  public boolean a(Menu paramMenu)
  {
    return false;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void b()
  {
    r = ((ProgressBar)a.findViewById(2131624517));
    A();
    if ((c) || (d)) {}
    for (;;)
    {
      C();
      D();
      E();
      I();
      return;
      B();
    }
  }
  
  public void b(String paramString)
  {
    Object localObject;
    com.estrongs.android.view.a.a locala;
    if (q != null)
    {
      localObject = p.a("paste_mode");
      locala = ((com.estrongs.android.ui.e.a)localObject).a(0);
      localObject = ((com.estrongs.android.ui.e.a)localObject).a(1);
      if (a.i(paramString)) {
        break label106;
      }
      if ((locala != null) && (locala.isEnabled())) {
        locala.d(false);
      }
      if ((localObject != null) && (((com.estrongs.android.view.a.a)localObject).isEnabled())) {
        ((com.estrongs.android.view.a.a)localObject).d(false);
      }
    }
    for (;;)
    {
      if (!"paste_mode".equals(p.a())) {
        p.a("paste_mode", Boolean.valueOf(false));
      }
      return;
      label106:
      if ((locala != null) && (!locala.isEnabled())) {
        locala.d(true);
      }
      if ((localObject != null) && (!((com.estrongs.android.view.a.a)localObject).isEnabled())) {
        ((com.estrongs.android.view.a.a)localObject).d(true);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    try
    {
      l.dismiss();
      View localView;
      Object localObject;
      if (o)
      {
        o = false;
        localView = a.findViewById(2131624081);
        if (!paramBoolean) {
          break label125;
        }
        localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1.0F);
        ((TranslateAnimation)localObject).setDuration(500L);
        ((TranslateAnimation)localObject).setInterpolator(new AccelerateInterpolator());
        ((TranslateAnimation)localObject).setAnimationListener(new az(this, localView));
        localView.setAnimation((Animation)localObject);
        ((TranslateAnimation)localObject).start();
      }
      for (;;)
      {
        localView.setVisibility(8);
        w.removeTextChangedListener(G());
        w.setOnKeyListener(null);
        a.aa();
        return;
        label125:
        o = false;
        localObject = (EditText)localView.findViewById(2131624501);
        ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(((EditText)localObject).getWindowToken(), 0);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean b(Menu paramMenu)
  {
    return false;
  }
  
  public View c()
  {
    return g.inflate(2130903347, null);
  }
  
  public void c(String paramString)
  {
    p.a(a.q, Boolean.valueOf(false));
  }
  
  public void c(boolean paramBoolean)
  {
    q.b(paramBoolean);
  }
  
  public View d()
  {
    return g.inflate(2130903385, null);
  }
  
  public void d(boolean paramBoolean)
  {
    q.c(true);
  }
  
  public void g()
  {
    super.g();
    u = null;
    v = null;
    if (p != null) {
      p.b();
    }
  }
  
  public void g(int paramInt)
  {
    if (q == null) {
      return;
    }
    q.f(paramInt);
    if (paramInt == 25)
    {
      n.e();
      return;
    }
    n.a(false);
  }
  
  public View h()
  {
    return A;
  }
  
  public View i()
  {
    return z;
  }
  
  public void j()
  {
    if (p != null) {
      p.b(false);
    }
    if (A != null) {
      A.setVisibility(4);
    }
  }
  
  public void k()
  {
    if (p != null) {
      p.b(true);
    }
    if (A != null) {
      A.setVisibility(0);
    }
  }
  
  public void l()
  {
    if ((!com.estrongs.android.util.ap.bw(a.P())) && (!com.estrongs.android.util.ap.by(a.P()))) {
      F();
    }
  }
  
  public void m()
  {
    if (!a.c()) {}
    for (boolean bool = true;; bool = false)
    {
      e(bool);
      return;
    }
  }
  
  public void n()
  {
    boolean bool = true;
    String str = a.P();
    if (o)
    {
      b(true);
      return;
    }
    if ((com.estrongs.android.util.ap.bs(str)) || (com.estrongs.android.util.ap.bk(str)))
    {
      a.j(q());
      return;
    }
    if (!a.h(str)) {}
    for (;;)
    {
      f(bool);
      return;
      bool = false;
    }
  }
  
  public void o()
  {
    cr localcr = a.O();
    if (localcr == null) {}
    while ((!o) || (com.estrongs.android.util.ap.bi(localcr.c()))) {
      return;
    }
    a.e(false);
  }
  
  public void p()
  {
    cr localcr = a.O();
    String str;
    if (localcr == null)
    {
      str = "";
      if (u != null)
      {
        if ((!com.estrongs.android.util.ap.bi(str)) || (localcr == null) || (!localcr.p())) {
          break label73;
        }
        u.setVisibility(0);
        if (v != null) {
          v.setVisibility(4);
        }
      }
    }
    label73:
    do
    {
      return;
      str = localcr.c();
      break;
      u.setVisibility(8);
    } while ((w == null) || (w.getEditableText().length() <= 0) || (v == null));
    v.setVisibility(0);
  }
  
  public String q()
  {
    if (w != null) {
      return w.getEditableText().toString();
    }
    return null;
  }
  
  public boolean r()
  {
    return o;
  }
  
  public void s()
  {
    q.c(true);
    q.j();
  }
  
  public void t()
  {
    p.a(true);
    if ("edit_mode".equals(a.q)) {
      q.m();
    }
  }
  
  public void u()
  {
    p.a("normal_mode", Boolean.valueOf(true));
    a.q = "normal_mode";
  }
  
  public boolean v()
  {
    if ((p != null) && (p.d())) {
      return true;
    }
    if (a.ae() != null)
    {
      if (!a.v())
      {
        a.q();
        return true;
      }
      a.x();
      return true;
    }
    return false;
  }
  
  public boolean w()
  {
    return p.c();
  }
  
  public void x()
  {
    if (q != null) {
      q.k();
    }
  }
  
  public void y() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */