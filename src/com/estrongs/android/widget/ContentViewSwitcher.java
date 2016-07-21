package com.estrongs.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.app.a;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.k;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

public class ContentViewSwitcher
  extends RealViewSwitcher
  implements k, l
{
  private d a;
  protected List<cr> b = new ArrayList();
  private int j;
  private boolean k = false;
  private long l = 0L;
  
  public ContentViewSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    j = g.a(paramContext, 10.0F);
  }
  
  public void a(int paramInt)
  {
    if (getChildCount() == 0) {
      return;
    }
    getWindowListManager().a((getChildCount() + paramInt) % getChildCount());
    super.a(paramInt);
  }
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public void a(h paramh, cr paramcr, boolean paramBoolean)
  {
    a.a(paramh, paramcr, this, d.a, paramBoolean);
  }
  
  public void b() {}
  
  @TargetApi(8)
  public void c()
  {
    if ((b == null) || (b.isEmpty())) {
      return;
    }
    RecyclerView localRecyclerView = ((cr)b.get(e)).Q();
    try
    {
      localRecyclerView.smoothScrollBy(0, -j);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  @TargetApi(8)
  public void d()
  {
    if ((b == null) || (b.isEmpty())) {
      return;
    }
    RecyclerView localRecyclerView = ((cr)b.get(e)).Q();
    try
    {
      localRecyclerView.smoothScrollBy(0, j);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public boolean e()
  {
    return k;
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
    if (k) {
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void removeViewAt(int paramInt)
  {
    try
    {
      super.removeViewAt(paramInt);
      int m = e;
      int i = m;
      if (paramInt <= e) {
        i = m - 1;
      }
      if (getChildCount() == 1) {
        i = 0;
      }
      setCurrentScreen(i);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void setCurrentScreen(int paramInt)
  {
    super.setCurrentScreen(paramInt);
    getWindowListManager().a(e);
  }
  
  public void setDragController(d paramd)
  {
    a = paramd;
  }
  
  public void setGestureListener(a parama) {}
  
  public void setGridViewWrappers(List<cr> paramList)
  {
    b = paramList;
  }
  
  public void setPageLocked(boolean paramBoolean)
  {
    k = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ContentViewSwitcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */