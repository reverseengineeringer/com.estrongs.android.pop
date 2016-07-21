package com.estrongs.android.ui.fastscroller;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.estrongs.android.pop.ah;
import com.estrongs.android.ui.theme.at;

public abstract class AbsRecyclerViewFastScroller
  extends FrameLayout
{
  private static final int[] f = ah.AbsRecyclerViewFastScroller;
  protected final View a;
  protected final View b;
  protected RecyclerView.OnScrollListener c;
  protected d d;
  protected boolean e = false;
  private RecyclerView g;
  private boolean h = false;
  private final Runnable i = new a(this);
  
  public AbsRecyclerViewFastScroller(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public AbsRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AbsRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, f, 0, 0);
    try
    {
      paramInt = paramAttributeSet.getResourceId(0, getLayoutResourceId());
      ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(paramInt, this, true);
      a = findViewById(2131625608);
      b = findViewById(2131625609);
      paramContext = paramAttributeSet.getDrawable(2);
      paramInt = paramAttributeSet.getColor(1, -7829368);
      a(a, paramContext, paramInt);
      paramContext = paramAttributeSet.getDrawable(4);
      paramInt = paramAttributeSet.getColor(3, -7829368);
      a(b, paramContext, paramInt);
      paramAttributeSet.recycle();
      if (!at.a(getContext()).o()) {
        setPadding(0, 0, 0, 0);
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  @TargetApi(16)
  private void a(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.setBackground(paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  private void a(View paramView, Drawable paramDrawable, int paramInt)
  {
    if (paramDrawable != null)
    {
      a(paramView, paramDrawable);
      return;
    }
    paramView.setBackgroundColor(paramInt);
  }
  
  private int b(float paramFloat)
  {
    return (int)(g.getAdapter().getItemCount() * paramFloat);
  }
  
  private boolean c(float paramFloat)
  {
    float f1 = cn.p(b);
    float f2 = b.getTop();
    float f3 = b.getBottom();
    return (paramFloat >= f2 + f1) && (paramFloat <= f1 + f3);
  }
  
  public float a(MotionEvent paramMotionEvent)
  {
    if (getScrollProgressCalculator() != null) {
      return getScrollProgressCalculator().a(paramMotionEvent);
    }
    return 0.0F;
  }
  
  protected abstract void a();
  
  public abstract void a(float paramFloat);
  
  public void a(float paramFloat, boolean paramBoolean)
  {
    int j = b(paramFloat);
    if (paramBoolean) {
      post(new b(this, j));
    }
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    return c(paramFloat2);
  }
  
  public void b()
  {
    removeCallbacks(i);
    postDelayed(i, 500L);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    getParent().requestDisallowInterceptTouchEvent(true);
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public View getHandleView()
  {
    return b;
  }
  
  protected abstract int getLayoutResourceId();
  
  public RecyclerView.OnScrollListener getOnScrollListener()
  {
    if (c == null) {
      c = new c(this);
    }
    return c;
  }
  
  protected abstract com.estrongs.android.ui.fastscroller.a.b.b getScrollProgressCalculator();
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getAction() == 0) && (a(paramMotionEvent.getX(), paramMotionEvent.getY()));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (getScrollProgressCalculator() == null) {
      a();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getActionMasked())
    {
    }
    for (;;)
    {
      return false;
      if (a(paramMotionEvent.getX(), paramMotionEvent.getY()))
      {
        return true;
        setFromTouchHandle(true);
        float f1 = a(paramMotionEvent);
        a(f1, true);
        a(f1);
        continue;
        setFromTouchHandle(false);
        b();
      }
    }
  }
  
  public void setBarBackground(Drawable paramDrawable)
  {
    a(a, paramDrawable);
  }
  
  public void setBarColor(int paramInt)
  {
    a.setBackgroundColor(paramInt);
  }
  
  public void setFromTouchHandle(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setHandleBackground(Drawable paramDrawable)
  {
    a(b, paramDrawable);
  }
  
  public void setHandleColor(int paramInt)
  {
    b.setBackgroundColor(paramInt);
  }
  
  public void setHandleViewDisplayListener(d paramd)
  {
    d = paramd;
  }
  
  public void setIsShowAdressBar(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setRecyclerView(RecyclerView paramRecyclerView)
  {
    g = paramRecyclerView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.fastscroller.AbsRecyclerViewFastScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */