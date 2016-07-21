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
import android.view.View.MeasureSpec;
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
  private f f;
  private g g;
  private Handler h;
  private Runnable i;
  private String j;
  private int k = 0;
  private boolean l = false;
  private boolean m = true;
  private boolean n = false;
  private boolean o = false;
  private int p = 0;
  
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
  
  private void b()
  {
    a = new a(getContext(), this);
    setFocusable(true);
    setClickable(true);
    h = new Handler();
    i = new c(this);
    setOnLongClickListener(new d(this));
    setOnKeyListener(new e(this));
    setCurrentIndex(-1);
  }
  
  private void c()
  {
    c = null;
    setCurrentIndex(-1);
    invalidate();
  }
  
  private void d()
  {
    if (e == 0) {}
    for (;;)
    {
      return;
      if (!n)
      {
        int i1 = getWidth();
        int i2 = getHeight();
        if ((i1 == 0) || (i2 == 0))
        {
          h.postDelayed(i, 100L);
          return;
        }
        int i3 = i1 / e;
        b.clear();
        i1 = 0;
        while (i1 < e)
        {
          RectF localRectF = new RectF(i3 * i1, 0.0F, (i1 + 1) * i3, i2);
          b.add(localRectF);
          i1 += 1;
        }
      }
    }
  }
  
  private void setCurrentIndex(int paramInt)
  {
    d = paramInt;
    a.a(paramInt);
  }
  
  public void a(List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    if (n)
    {
      String str;
      if ((paramList1 != null) && (paramList1.size() > 1))
      {
        str = (String)paramList1.get(paramList1.size() - 1);
        paramList1.clear();
        paramList1.add(str);
      }
      if ((paramList2 != null) && (paramList2.size() > 1))
      {
        str = (String)paramList2.get(paramList2.size() - 1);
        paramList2.clear();
        paramList2.add(str);
      }
    }
    a.a(paramList1, paramList2, paramFloat);
    invalidate();
  }
  
  public boolean a()
  {
    return l;
  }
  
  public String getCurrentPath()
  {
    return j;
  }
  
  public int getMeasureHeight()
  {
    if (p == 0) {
      return getHeight();
    }
    return p;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (verifyDrawable(paramDrawable))
    {
      paramDrawable = paramDrawable.getBounds();
      int i1 = getScrollX() + getPaddingLeft();
      int i2 = getScrollY() + getPaddingTop();
      invalidate(left + i1, top + i2, i1 + right, bottom + i2);
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (a.d()) {
      a.e().jumpToCurrentState();
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
        setCurrentIndex(e - 1);
      }
    }
    for (;;)
    {
      invalidate();
      return;
      setCurrentIndex(0);
      continue;
      setCurrentIndex(-1);
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    p = View.MeasureSpec.getSize(paramInt2);
    super.onMeasure(paramInt1, paramInt2);
    if (o) {
      setMeasuredDimension(a.b(), paramInt2);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    d();
    a.f();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a.c()) || (!m)) {
      return super.onTouchEvent(paramMotionEvent);
    }
    int i1 = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i1)
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      i1 = 0;
      for (;;)
      {
        if (i1 < e)
        {
          RectF localRectF = (RectF)b.get(i1);
          if (localRectF.contains(f1, f2))
          {
            setCurrentIndex(i1);
            c = localRectF;
          }
        }
        else
        {
          invalidate();
          break;
        }
        i1 += 1;
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
  
  public void setCurrentPath(String paramString)
  {
    j = paramString;
  }
  
  public void setDisplayPaths(String... paramVarArgs)
  {
    String[] arrayOfString = paramVarArgs;
    if (n)
    {
      paramVarArgs = paramVarArgs[(paramVarArgs.length - 1)];
      arrayOfString = new String[1];
      arrayOfString[0] = paramVarArgs;
    }
    a.f();
    a.a(arrayOfString, 0);
    int i1 = a.a();
    if (e != i1)
    {
      e = i1;
      h.post(i);
    }
    c();
    invalidate();
    requestLayout();
  }
  
  public void setDrawableRes(b paramb)
  {
    a.a(paramb);
  }
  
  public void setEnableClick(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setIsBroadMode(boolean paramBoolean)
  {
    o = paramBoolean;
    a.c(paramBoolean);
  }
  
  public void setIsLoading(boolean paramBoolean)
  {
    if (a != null) {
      a.a(paramBoolean);
    }
    postInvalidate();
  }
  
  public void setIsNarrowMode(boolean paramBoolean)
  {
    n = paramBoolean;
    a.b(paramBoolean);
  }
  
  public void setIsScreenSwitching(boolean paramBoolean)
  {
    l = paramBoolean;
    if (paramBoolean)
    {
      m = false;
      return;
    }
    m = true;
  }
  
  public void setLevelDirection(int paramInt)
  {
    k = paramInt;
  }
  
  public void setOnAddressBarClickListener(f paramf)
  {
    f = paramf;
  }
  
  public void setOnAddressBarLongClickListener(g paramg)
  {
    g = paramg;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == a.e()) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.AdvancedAddressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */