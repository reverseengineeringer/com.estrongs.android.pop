package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout.LayoutParams;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

public class gg
  extends gh
{
  private static final String a = gg.class.getSimpleName();
  private int c = 0;
  private boolean d = false;
  private float e = 0.0F;
  private float f = 0.0F;
  private AtomicBoolean g = new AtomicBoolean(false);
  
  public gg(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
    if (b == null) {
      b = new go(paramContext);
    }
    if (b != null) {
      b.a(this);
    }
    setAutoPlay(laq);
    setVideoUri(c(a(params.l())));
    if (!TextUtils.isEmpty(b(params.l()))) {
      bool = true;
    }
    d = bool;
    e = (lax / 100.0F);
    f = (lay / 100.0F);
  }
  
  private String a(au paramau)
  {
    paramau = paramau.g();
    if (paramau != null) {
      return ma.a(paramau.f());
    }
    return null;
  }
  
  private String b(au paramau)
  {
    paramau = paramau.g();
    if (paramau != null)
    {
      paramau = paramau.i();
      if (!TextUtils.isEmpty(paramau)) {
        return ma.a(paramau);
      }
    }
    return null;
  }
  
  private void d()
  {
    kg.a(3, a, "Reward granted: ");
    getAdController().m().h(true);
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    if (!g.get())
    {
      kg.a(3, a, "Showing progress bar again. Cant play video as its not prepared yet." + g.get());
      showProgressDialog();
    }
  }
  
  public void a(String paramString)
  {
    super.a(paramString);
    g.set(true);
    kg.a(3, a, "Video prepared onVideoPrepared." + g.get());
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    super.a(paramString, paramFloat1, paramFloat2);
    if (paramFloat2 > 3000.0F) {
      if (!d) {
        break label180;
      }
    }
    label180:
    for (int i = c | 0x4;; i = c)
    {
      c = i;
      if (paramFloat2 > 3.0F)
      {
        c |= 0x2;
        c &= 0xFFFFFFF7;
      }
      long l = getAdControlleraj;
      if (paramFloat1 > 15000.0F) {
        l = getAdControllerak;
      }
      if (paramFloat2 > (float)l) {
        c |= 0x1;
      }
      paramString = getAdController().m();
      if ((f > 0.0F) && (paramFloat2 >= f * paramFloat1) && (!paramString.i()))
      {
        d();
        a(bb.M, Collections.emptyMap());
      }
      if (!g.get()) {
        g.set(true);
      }
      return;
    }
  }
  
  public void b()
  {
    c &= 0xFFFFFFF7;
    super.b();
  }
  
  public void b(String paramString)
  {
    super.b(paramString);
    if (f == 0.0F) {
      a(bb.M, Collections.emptyMap());
    }
  }
  
  public void c()
  {
    super.c();
    g.set(false);
    kg.a(3, a, "Video prepared suspendVideo." + g.get());
  }
  
  public void cleanupLayout()
  {
    super.cleanupLayout();
    g.set(false);
    kg.a(3, a, "Video prepared cleanupLayout." + g.get());
  }
  
  protected int getViewParams()
  {
    if (c == 0) {
      c = getAdController().m().k();
    }
    return c;
  }
  
  public void initLayout()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    addView(b.j(), localLayoutParams);
    showProgressDialog();
  }
  
  public void setAutoPlay(boolean paramBoolean)
  {
    super.setAutoPlay(paramBoolean);
    if (getAdController().m().a() <= 3) {
      if (!paramBoolean) {
        break label34;
      }
    }
    label34:
    for (int i = c;; i = c | 0x8)
    {
      c = i;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */