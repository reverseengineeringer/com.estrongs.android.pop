package com.estrongs.android.ui.drag;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.view.cr;

public class DragPanel
  extends LinearLayout
  implements k, l
{
  d a;
  protected cr b;
  private int c;
  
  public DragPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c = g.a(paramContext, 10.0F);
  }
  
  @SuppressLint({"NewApi"})
  public DragPanel(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = g.a(paramContext, 10.0F);
  }
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public void b() {}
  
  @TargetApi(8)
  public void c()
  {
    b.Q().smoothScrollBy(-c, 50);
  }
  
  @TargetApi(8)
  public void d()
  {
    b.Q().smoothScrollBy(c, 50);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (a != null) {
      return (a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    if (a != null) {
      return a.a(paramView, paramInt);
    }
    return super.dispatchUnhandledMove(paramView, paramInt);
  }
  
  public Rect getScrollViewRect()
  {
    int[] arrayOfInt = new int[2];
    getLocationOnScreen(arrayOfInt);
    return new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + getMeasuredWidth(), arrayOfInt[1] + getMeasuredHeight());
  }
  
  public void k_() {}
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a != null) {
      return a.a(paramMotionEvent);
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a != null) {
      return a.b(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setDragController(d paramd)
  {
    a = paramd;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragPanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */