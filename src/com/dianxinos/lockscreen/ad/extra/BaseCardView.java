package com.dianxinos.lockscreen.ad.extra;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.duapps.ad.base.j;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;

public abstract class BaseCardView
  extends FrameLayout
  implements View.OnClickListener
{
  private static final String l = BaseCardView.class.getSimpleName();
  protected Context a;
  protected int b = -1;
  protected com.duapps.ad.c c;
  protected boolean d = false;
  protected ImageLoader e;
  protected DisplayImageOptions f;
  protected DisplayImageOptions g;
  protected TextView h;
  protected TextView i;
  protected ImageView j;
  protected boolean k = false;
  private d m;
  private final Object n = new Object();
  
  public BaseCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BaseCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public BaseCardView(Context paramContext, com.duapps.ad.c paramc, boolean paramBoolean)
  {
    super(paramContext, null);
    d = paramBoolean;
    a(paramContext, paramc);
  }
  
  private void b(Context paramContext, com.duapps.ad.c paramc)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context is null");
    }
    if (paramc == null) {
      throw new IllegalArgumentException("DuAdData is null");
    }
  }
  
  protected abstract void a();
  
  protected void a(Context paramContext, com.duapps.ad.c paramc)
  {
    b(paramContext, paramc);
    a = paramContext;
    c = paramc;
    e = j.a(a);
  }
  
  protected abstract void a(View paramView);
  
  protected abstract void b();
  
  public void c()
  {
    c.a(this);
    d();
  }
  
  protected void d()
  {
    c.a(new c(this));
  }
  
  public void e()
  {
    e.stop();
  }
  
  public int getCardType()
  {
    return b;
  }
  
  public String getSourceType()
  {
    return c.h();
  }
  
  public void onClick(View paramView)
  {
    a(paramView);
  }
  
  public void setDXClickListener(d paramd)
  {
    synchronized (n)
    {
      m = paramd;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.BaseCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */