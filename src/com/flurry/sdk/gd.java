package com.flurry.sdk;

import android.content.Context;
import android.widget.RelativeLayout.LayoutParams;

public class gd
  extends gh
{
  private int a = 0;
  
  public gd(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
    if (b == null) {
      b = new go(paramContext);
    }
    if (b != null) {
      b.a(this);
    }
    setAutoPlay(laq);
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    super.a(paramString, paramFloat1, paramFloat2);
    if (paramFloat2 > 0.0F) {
      a |= 0x1;
    }
  }
  
  protected int getViewParams()
  {
    if (a == 0) {
      a = getAdController().m().k();
    }
    return a;
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
    super.setAutoPlay(true);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */