package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class DragActionZone
  extends LinearLayout
  implements s
{
  private c a;
  private int b;
  private Vibrator c;
  private Handler d = new Handler();
  private Runnable e;
  
  public DragActionZone(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DragActionZone(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }
  
  public DragActionZone(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    c = ((Vibrator)paramContext.getSystemService("vibrator"));
  }
  
  public void a(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    if (!isEnabled()) {}
    while (a == null) {
      return;
    }
    a.a(paraml, paramObject);
  }
  
  public boolean a(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i = getBackground().getIntrinsicWidth();
    switch (b)
    {
    default: 
      paramInt1 = i;
    }
    while (paramInt1 < i)
    {
      return true;
      paramInt1 = (int)Math.sqrt((paramInt1 - left) * (paramInt1 - left) + (paramInt2 - top) * (paramInt2 - top));
      continue;
      paramInt1 = (int)Math.sqrt((paramInt1 - right) * (paramInt1 - right) + (paramInt2 - top) * (paramInt2 - top));
      continue;
      paramInt1 = (int)Math.sqrt((paramInt1 - left) * (paramInt1 - left) + (paramInt2 - bottom) * (paramInt2 - bottom));
      continue;
      paramInt1 = (int)Math.sqrt((paramInt1 - right) * (paramInt1 - right) + (paramInt2 - bottom) * (paramInt2 - bottom));
    }
    return false;
  }
  
  public void b(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    if (!isEnabled()) {
      return;
    }
    setPressed(true);
    c.vibrate(40L);
    if (e == null) {
      e = new a(this, paraml, paramObject);
    }
    d.postDelayed(e, 250L);
  }
  
  public void c(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject) {}
  
  public void d(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    if (!isEnabled()) {
      return;
    }
    setPressed(false);
    if (e == null) {
      e = new b(this, paraml, paramObject);
    }
    d.removeCallbacks(e);
  }
  
  public boolean e(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    return isEnabled();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    ImageView localImageView = (ImageView)findViewById(2131624747);
    if (paramBoolean)
    {
      localImageView.setColorFilter(null);
      return;
    }
    localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
  }
  
  public void setImage(Drawable paramDrawable)
  {
    ImageView localImageView = (ImageView)findViewById(2131624747);
    localImageView.setImageDrawable(paramDrawable);
    if (!isEnabled())
    {
      localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
      return;
    }
    localImageView.setColorFilter(null);
  }
  
  public void setOnDropListener(c paramc)
  {
    a = paramc;
  }
  
  public void setPosition(int paramInt)
  {
    b = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragActionZone
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */