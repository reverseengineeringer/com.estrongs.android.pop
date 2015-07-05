package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.ui.theme.al;

public abstract class AbsDragListView
  extends ListView
{
  protected int a;
  protected int b;
  private ImageView c;
  private int d;
  private int e;
  private WindowManager f;
  private WindowManager.LayoutParams g;
  private int h;
  private int i;
  private int j;
  
  public AbsDragListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }
  
  public void a()
  {
    requestDisallowInterceptTouchEvent(false);
    if (c != null)
    {
      f.removeView(c);
      c = null;
    }
  }
  
  public void a(int paramInt)
  {
    int k = 0;
    if (c != null)
    {
      g.alpha = 0.8F;
      g.y = (paramInt - d + e);
      f.updateViewLayout(c, g);
    }
    int m = pointToPosition(0, paramInt);
    if (m != -1) {
      b = m;
    }
    if (paramInt < i) {
      k = 8;
    }
    for (;;)
    {
      if (k != 0) {}
      try
      {
        setSelectionFromTop(b, k + getChildAt(b - getFirstVisiblePosition()).getTop());
        return;
      }
      catch (Exception localException) {}
      if (paramInt > j) {
        k = -8;
      }
    }
  }
  
  public abstract void a(int paramInt1, int paramInt2);
  
  public void a(Bitmap paramBitmap, int paramInt)
  {
    a();
    g = new WindowManager.LayoutParams();
    g.gravity = 48;
    g.x = 0;
    g.y = (paramInt - d + e);
    g.width = -2;
    g.height = -2;
    g.flags = 408;
    g.format = -3;
    g.windowAnimations = 0;
    ImageView localImageView = new ImageView(getContext());
    localImageView.setImageBitmap(paramBitmap);
    f = ((WindowManager)getContext().getSystemService("window"));
    f.addView(localImageView, g);
    c = localImageView;
  }
  
  public int b()
  {
    return a;
  }
  
  public void b(int paramInt)
  {
    int k = pointToPosition(0, paramInt);
    if (k != -1) {
      b = k;
    }
    if (paramInt < getChildAt(0).getTop()) {}
    while ((paramInt > getChildAt(getChildCount() - 1).getBottom()) || (b < 0) || (b >= getAdapter().getCount()) || (a == b)) {
      return;
    }
    a(a, b);
  }
  
  public abstract int c();
  
  public abstract boolean d();
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int k = (int)paramMotionEvent.getX();
      int m = (int)paramMotionEvent.getY();
      int n = pointToPosition(k, m);
      b = n;
      a = n;
      if ((b == -1) || (getChildCount() <= 1) || (!d())) {
        return super.onInterceptTouchEvent(paramMotionEvent);
      }
      ViewGroup localViewGroup = (ViewGroup)getChildAt(b - getFirstVisiblePosition());
      d = (m - localViewGroup.getTop());
      e = ((int)(paramMotionEvent.getRawY() - m));
      paramMotionEvent = localViewGroup.findViewById(c());
      if ((paramMotionEvent != null) && (k < paramMotionEvent.getRight()))
      {
        i = Math.min(m - h, getHeight() / 3);
        j = Math.max(h + m, getHeight() * 2 / 3);
        localViewGroup.setBackgroundDrawable(al.a(getContext()).a(2130837806));
        localViewGroup.setDrawingCacheEnabled(true);
        a(Bitmap.createBitmap(localViewGroup.getDrawingCache()), m);
        localViewGroup.destroyDrawingCache();
        localViewGroup.setBackgroundDrawable(null);
        requestDisallowInterceptTouchEvent(true);
        return true;
      }
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((c != null) && (b != -1))
    {
      switch (paramMotionEvent.getAction())
      {
      }
      for (;;)
      {
        return true;
        int k = (int)paramMotionEvent.getY();
        a();
        b(k);
        continue;
        a((int)paramMotionEvent.getY());
        continue;
        a();
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.AbsDragListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */