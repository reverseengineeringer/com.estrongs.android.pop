package com.flurry.sdk;

import android.content.Context;
import android.widget.RelativeLayout.LayoutParams;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

public class gb
  extends gh
{
  private static final String a = gb.class.getName();
  private int c = 0;
  private AtomicBoolean d = new AtomicBoolean(false);
  
  public gb(Context paramContext, s params, gt.a parama)
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
  }
  
  private String a(au paramau)
  {
    return jb;
  }
  
  public void a()
  {
    a(bb.u, Collections.emptyMap());
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    if (!d.get())
    {
      kg.a(3, a, "Showing progress bar again. Cant play video as its not prepared yet." + d.get());
      showProgressDialog();
    }
  }
  
  public void a(String paramString)
  {
    super.a(paramString);
    d.set(true);
    kg.a(3, a, "Video prepared onVideoPrepared." + d.get());
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    super.a(paramString, paramFloat1, paramFloat2);
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
    if (!d.get()) {
      d.set(true);
    }
  }
  
  public void b()
  {
    c &= 0xFFFFFFF7;
    super.b();
  }
  
  public void c()
  {
    super.c();
    d.set(false);
    kg.a(3, a, "Video prepared suspendVideo." + d.get());
  }
  
  public void cleanupLayout()
  {
    super.cleanupLayout();
    d.set(false);
    kg.a(3, a, "Video prepared cleanupLayout." + d.get());
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
 * Qualified Name:     com.flurry.sdk.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */