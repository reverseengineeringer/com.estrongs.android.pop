package com.estrongs.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.k;
import com.estrongs.android.ui.drag.l;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

public class ContentViewSwitcher
  extends RealViewSwitcher
  implements k, l
{
  private d a;
  protected List<aw> b = new ArrayList();
  private int j;
  private boolean k = false;
  
  public ContentViewSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    j = a.a(paramContext, 10.0F);
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    e.a(e);
  }
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public void a(d paramd)
  {
    a = paramd;
  }
  
  public void a(h paramh, aw paramaw, boolean paramBoolean)
  {
    a.a(paramh, paramaw, this, d.a, paramBoolean);
  }
  
  public void a(List<aw> paramList)
  {
    b = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void b() {}
  
  public void b(int paramInt)
  {
    if (getChildCount() == 0) {
      return;
    }
    e.a((getChildCount() + paramInt) % getChildCount());
    super.b(paramInt);
  }
  
  @TargetApi(8)
  public void c()
  {
    if ((b == null) || (b.isEmpty())) {
      return;
    }
    AbsListView localAbsListView = ((aw)b.get(e)).C();
    try
    {
      localAbsListView.smoothScrollBy(-j, 50);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public void c_() {}
  
  @TargetApi(8)
  public void d()
  {
    if ((b == null) || (b.isEmpty())) {
      return;
    }
    AbsListView localAbsListView = ((aw)b.get(e)).C();
    try
    {
      localAbsListView.smoothScrollBy(j, 50);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public Rect e()
  {
    int[] arrayOfInt = new int[2];
    getLocationOnScreen(arrayOfInt);
    return new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + getMeasuredWidth(), arrayOfInt[1] + getMeasuredHeight());
  }
  
  public boolean f()
  {
    return k;
  }
  
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
      a(i);
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ContentViewSwitcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */