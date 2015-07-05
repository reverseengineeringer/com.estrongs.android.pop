package com.estrongs.android.ui.addressbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class AdvancedAddressBar
  extends View
{
  private a a;
  private ArrayList<RectF> b = new ArrayList();
  private RectF c;
  private int d;
  private int e = -1;
  private e f;
  private f g;
  private Handler h;
  private Runnable i;
  private String j;
  private int k = 0;
  private boolean l = false;
  private boolean m = true;
  
  public AdvancedAddressBar(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public AdvancedAddressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public AdvancedAddressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void a(int paramInt)
  {
    d = paramInt;
    a.a(paramInt);
  }
  
  private void b()
  {
    a = new a(getContext(), this);
    setFocusable(true);
    setClickable(true);
    h = new Handler();
    i = new b(this);
    setOnLongClickListener(new c(this));
    setOnKeyListener(new d(this));
    a(-1);
  }
  
  private void c()
  {
    c = null;
    a(-1);
    invalidate();
  }
  
  private void d()
  {
    int n = getWidth();
    int i1 = getHeight();
    if ((n == 0) || (i1 == 0)) {
      h.postDelayed(i, 100L);
    }
    for (;;)
    {
      return;
      int i2 = n / e;
      b.clear();
      n = 0;
      while (n < e)
      {
        RectF localRectF = new RectF(i2 * n, 0.0F, (n + 1) * i2, i1);
        b.add(localRectF);
        n += 1;
      }
    }
  }
  
  public void a(e parame)
  {
    f = parame;
  }
  
  public void a(f paramf)
  {
    g = paramf;
  }
  
  public void a(String paramString)
  {
    j = paramString;
  }
  
  public void a(List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    a.a(paramList1, paramList2, paramFloat);
    invalidate();
  }
  
  public void a(boolean paramBoolean)
  {
    if (a != null) {
      a.a(paramBoolean);
    }
    postInvalidate();
  }
  
  public void a(String... paramVarArgs)
  {
    a.e();
    a.a(paramVarArgs, 0);
    int n = a.a();
    if (e != n)
    {
      e = n;
      h.post(i);
    }
    c();
    invalidate();
  }
  
  public boolean a()
  {
    return l;
  }
  
  public void b(boolean paramBoolean)
  {
    l = paramBoolean;
    if (paramBoolean)
    {
      m = false;
      return;
    }
    m = true;
  }
  
  public void c(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (verifyDrawable(paramDrawable))
    {
      paramDrawable = paramDrawable.getBounds();
      int n = getScrollX() + getPaddingLeft();
      int i1 = getScrollY() + getPaddingTop();
      invalidate(left + n, top + i1, n + right, bottom + i1);
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (a.c()) {
      a.d().jumpToCurrentState();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    try
    {
      boolean bool = l;
      if (bool) {
        try
        {
          a.b(paramCanvas);
          return;
        }
        catch (Exception localException)
        {
          a.a(paramCanvas);
          return;
        }
      }
      a.a(paramCanvas);
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
      return;
    }
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (paramBoolean) {
      if (paramInt == 17) {
        a(e - 1);
      }
    }
    for (;;)
    {
      invalidate();
      return;
      a(0);
      continue;
      a(-1);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    d();
    a.e();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a.b()) || (!m)) {
      return super.onTouchEvent(paramMotionEvent);
    }
    int n = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (n)
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      n = 0;
      for (;;)
      {
        if (n < e)
        {
          RectF localRectF = (RectF)b.get(n);
          if (localRectF.contains(f1, f2))
          {
            a(n);
            c = localRectF;
          }
        }
        else
        {
          invalidate();
          break;
        }
        n += 1;
      }
      if ((c != null) && (!c.contains(f1, f2)))
      {
        c();
        continue;
        if ((d != -1) && (f != null)) {
          f.a(this, d, e);
        }
        c();
        continue;
        c();
      }
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == a.d()) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.AdvancedAddressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */