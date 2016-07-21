package com.estrongs.android.pop.app.imageviewer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.view.View;

class HighlightView
{
  View a;
  boolean b;
  boolean c;
  Rect d;
  Rect e;
  RectF f;
  Matrix g;
  private HighlightView.ModifyMode h = HighlightView.ModifyMode.None;
  private RectF i;
  private boolean j = false;
  private float k;
  private boolean l = false;
  private Drawable m;
  private Drawable n;
  private Drawable o;
  private final Paint p = new Paint();
  private final Paint q = new Paint();
  private final Paint r = new Paint();
  
  public HighlightView(View paramView)
  {
    a = paramView;
  }
  
  private void f()
  {
    Resources localResources = a.getResources();
    m = localResources.getDrawable(2130837836);
    n = localResources.getDrawable(2130837835);
    o = localResources.getDrawable(2130837834);
  }
  
  private Rect g()
  {
    RectF localRectF = new RectF(f.left, f.top, f.right, f.bottom);
    g.mapRect(localRectF);
    return new Rect(Math.round(left), Math.round(top), Math.round(right), Math.round(bottom));
  }
  
  public int a(float paramFloat1, float paramFloat2)
  {
    int i5 = 32;
    int i1 = 0;
    Rect localRect = g();
    if (e != null) {
      localRect.union(e());
    }
    int i3;
    if (l)
    {
      paramFloat1 -= localRect.centerX();
      paramFloat2 -= localRect.centerY();
      i2 = (int)Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
      i3 = d.width() / 2;
      if (Math.abs(i2 - i3) <= 20.0F) {
        if (Math.abs(paramFloat2) > Math.abs(paramFloat1)) {
          if (paramFloat2 < 0.0F) {
            i1 = 8;
          }
        }
      }
      do
      {
        return i1;
        return 16;
        if (paramFloat1 < 0.0F) {
          return 2;
        }
        return 4;
        i1 = i5;
      } while (i2 < i3);
      return 1;
    }
    int i4;
    if ((paramFloat2 >= top - 20.0F) && (paramFloat2 < bottom + 20.0F))
    {
      i4 = 1;
      label172:
      i3 = i1;
      if (paramFloat1 >= left - 20.0F)
      {
        i3 = i1;
        if (paramFloat1 < right + 20.0F) {
          i3 = 1;
        }
      }
      if ((Math.abs(left - paramFloat1) >= 20.0F) || (i4 == 0)) {
        break label363;
      }
    }
    label363:
    for (int i2 = 3;; i2 = 1)
    {
      i1 = i2;
      if (Math.abs(right - paramFloat1) < 20.0F)
      {
        i1 = i2;
        if (i4 != 0) {
          i1 = i2 | 0x4;
        }
      }
      i2 = i1;
      if (Math.abs(top - paramFloat2) < 20.0F)
      {
        i2 = i1;
        if (i3 != 0) {
          i2 = i1 | 0x8;
        }
      }
      if ((Math.abs(bottom - paramFloat2) < 20.0F) && (i3 != 0)) {
        i2 |= 0x10;
      }
      for (;;)
      {
        if (i2 == 1)
        {
          i1 = i5;
          if (localRect.contains((int)paramFloat1, (int)paramFloat2)) {
            break;
          }
        }
        return i2;
        i4 = 0;
        break label172;
      }
    }
  }
  
  void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    Rect localRect = g();
    if (e != null) {
      localRect.union(e());
    }
    if (paramInt == 1) {
      return;
    }
    if (paramInt == 32)
    {
      b(f.width() / localRect.width() * paramFloat1, f.height() / localRect.height() * paramFloat2);
      return;
    }
    if ((paramInt & 0x6) == 0) {
      paramFloat1 = 0.0F;
    }
    if ((paramInt & 0x18) == 0) {
      paramFloat2 = 0.0F;
    }
    float f1 = f.width() / localRect.width();
    float f2 = f.height() / localRect.height();
    int i1;
    float f3;
    if ((paramInt & 0x2) != 0)
    {
      i1 = -1;
      f3 = i1;
      if ((paramInt & 0x8) == 0) {
        break label169;
      }
    }
    label169:
    for (paramInt = -1;; paramInt = 1)
    {
      c(paramFloat1 * f1 * f3, paramInt * (paramFloat2 * f2));
      return;
      i1 = 1;
      break;
    }
  }
  
  protected void a(Canvas paramCanvas)
  {
    if (c) {}
    for (;;)
    {
      return;
      paramCanvas.save();
      Path localPath = new Path();
      if (!a())
      {
        r.setColor(-16777216);
        paramCanvas.drawRect(d, r);
        return;
      }
      Rect localRect = new Rect();
      a.getDrawingRect(localRect);
      if (l)
      {
        float f1 = d.width();
        float f2 = d.height();
        float f3 = d.left;
        float f4 = f1 / 2.0F;
        float f5 = d.top;
        localPath.addCircle(f3 + f4, f2 / 2.0F + f5, f1 / 2.0F, Path.Direction.CW);
        r.setColor(-1112874);
      }
      try
      {
        label150:
        paramCanvas.clipPath(localPath, Region.Op.DIFFERENCE);
        if (a()) {}
        for (Paint localPaint = p;; localPaint = q)
        {
          paramCanvas.drawRect(localRect, localPaint);
          paramCanvas.restore();
          paramCanvas.drawPath(localPath, r);
          if (h != HighlightView.ModifyMode.Grow) {
            break;
          }
          if (!l) {
            break label416;
          }
          i3 = o.getIntrinsicWidth();
          i1 = o.getIntrinsicHeight();
          i2 = (int)Math.round(Math.cos(0.7853981633974483D) * (d.width() / 2.0D));
          i3 = d.left + d.width() / 2 + i2 - i3 / 2;
          i1 = d.top + d.height() / 2 - i2 - i1 / 2;
          o.setBounds(i3, i1, o.getIntrinsicWidth() + i3, o.getIntrinsicHeight() + i1);
          o.draw(paramCanvas);
          return;
          localPath.addRect(new RectF(d), Path.Direction.CW);
          if (e != null) {
            localPath.addRect(new RectF(e()), Path.Direction.CW);
          }
          r.setColor(35328);
          break label150;
        }
        label416:
        int i2 = d.left + 1;
        int i1 = d.right + 1;
        int i3 = d.top + 4;
        int i4 = d.bottom + 3;
        if (e != null)
        {
          i2 = e.left + 1;
          i1 = e.right + 1;
        }
        int i5 = m.getIntrinsicWidth() / 2;
        int i6 = m.getIntrinsicHeight() / 2;
        int i7 = n.getIntrinsicHeight() / 2;
        int i8 = n.getIntrinsicWidth() / 2;
        int i9 = d.left + (d.right - d.left) / 2;
        int i10 = d.top + (d.bottom - d.top) / 2;
        m.setBounds(i2 - i5, i10 - i6, i2 + i5, i10 + i6);
        m.draw(paramCanvas);
        m.setBounds(i1 - i5, i10 - i6, i1 + i5, i10 + i6);
        m.draw(paramCanvas);
        n.setBounds(i9 - i8, i3 - i7, i9 + i8, i3 + i7);
        n.draw(paramCanvas);
        n.setBounds(i9 - i8, i4 - i7, i9 + i8, i4 + i7);
        n.draw(paramCanvas);
        return;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(Matrix paramMatrix, Rect paramRect, RectF paramRectF, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      paramBoolean2 = true;
    }
    g = new Matrix(paramMatrix);
    f = paramRectF;
    i = new RectF(paramRect);
    j = paramBoolean2;
    l = paramBoolean1;
    k = (f.width() / f.height());
    d = g();
    p.setARGB(125, 50, 50, 50);
    q.setARGB(125, 50, 50, 50);
    r.setStrokeWidth(3.0F);
    r.setStyle(Paint.Style.STROKE);
    r.setAntiAlias(true);
    h = HighlightView.ModifyMode.None;
    if (paramBoolean3) {
      e = new Rect();
    }
    f();
  }
  
  public void a(HighlightView.ModifyMode paramModifyMode)
  {
    if (paramModifyMode != h)
    {
      h = paramModifyMode;
      a.invalidate();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public Rect b()
  {
    return new Rect((int)f.left, (int)f.top, (int)f.right, (int)f.bottom);
  }
  
  void b(float paramFloat1, float paramFloat2)
  {
    f.offset(paramFloat1, paramFloat2);
    Rect localRect;
    RectF localRectF;
    if (e == null)
    {
      localRect = new Rect(d);
      localRectF = f;
      f.offset(Math.max(0.0F, i.left - left), Math.max(0.0F, i.top - top));
      f.offset(Math.min(0.0F, i.right - right), Math.min(0.0F, i.bottom - bottom));
      d = g();
      if (e == null) {
        break label362;
      }
      localRect.union(d);
    }
    for (;;)
    {
      localRect.inset(-10, -10);
      a.invalidate(localRect);
      return;
      int i1 = Math.max(d.width(), d.height());
      int i2 = d.centerX();
      int i3 = i1 / 2;
      int i4 = d.centerY();
      int i5 = i1 / 2;
      int i6 = d.centerX();
      int i7 = i1 / 2;
      int i8 = d.centerY();
      localRect = new Rect(i2 - i3, i4 - i5, i6 + i7, i1 / 2 + i8);
      paramFloat1 = Math.max(f.width(), f.height());
      paramFloat2 = f.centerX();
      float f1 = paramFloat1 / 2.0F;
      float f2 = f.centerY();
      float f3 = paramFloat1 / 2.0F;
      float f4 = f.centerX();
      float f5 = paramFloat1 / 2.0F;
      float f6 = f.centerY();
      localRectF = new RectF(paramFloat2 - f1, f2 - f3, f4 + f5, paramFloat1 / 2.0F + f6);
      break;
      label362:
      i1 = Math.max(d.width(), d.height());
      i2 = d.centerX();
      i3 = i1 / 2;
      i4 = d.centerY();
      i5 = i1 / 2;
      i6 = d.centerX();
      i7 = i1 / 2;
      i8 = d.centerY();
      localRect.union(new Rect(i2 - i3, i4 - i5, i6 + i7, i1 / 2 + i8));
    }
  }
  
  public void b(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public Rect c()
  {
    float f1 = f.centerX();
    float f2 = f.centerY();
    float f3 = f.width() / 2.0F;
    float f4 = f.height() / 2.0F;
    return new Rect((int)(f1 - f4), (int)(f2 - f3), (int)(f1 + f4), (int)(f2 + f3));
  }
  
  void c(float paramFloat1, float paramFloat2)
  {
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    RectF localRectF;
    float f3;
    if (j)
    {
      if (paramFloat1 != 0.0F)
      {
        f1 = paramFloat1 / k;
        f2 = paramFloat1;
      }
    }
    else
    {
      if (e != null) {
        break label433;
      }
      localRectF = new RectF(f);
      f3 = 0.0F;
      label51:
      paramFloat1 = f2;
      if (f2 <= 0.0F) {
        break label629;
      }
      paramFloat1 = f2;
      if (localRectF.width() + 2.0F * f2 <= i.width()) {
        break label629;
      }
      paramFloat2 = (i.width() - localRectF.width()) / 2.0F;
      paramFloat1 = paramFloat2;
      if (!j) {
        break label629;
      }
      f1 = paramFloat2 / k;
      paramFloat1 = paramFloat2;
    }
    label251:
    label312:
    label347:
    label433:
    label525:
    label564:
    label603:
    label629:
    for (paramFloat2 = f1;; paramFloat2 = f1)
    {
      f1 = paramFloat2;
      f2 = paramFloat1;
      if (paramFloat2 > 0.0F)
      {
        f1 = paramFloat2;
        f2 = paramFloat1;
        if (localRectF.height() + 2.0F * paramFloat2 > i.height())
        {
          paramFloat2 = (i.height() - localRectF.height()) / 2.0F;
          f1 = paramFloat2;
          f2 = paramFloat1;
          if (j)
          {
            f2 = k * paramFloat2;
            f1 = paramFloat2;
          }
        }
      }
      localRectF.inset(-f2, -f1);
      if (localRectF.width() < 25.0F) {
        localRectF.inset(-(25.0F - localRectF.width()) / 2.0F, 0.0F);
      }
      if (j)
      {
        paramFloat1 = 25.0F / k;
        if (localRectF.height() < paramFloat1) {
          localRectF.inset(0.0F, -(paramFloat1 - localRectF.height()) / 2.0F);
        }
        if (left >= i.left) {
          break label525;
        }
        localRectF.offset(i.left - left, 0.0F);
        if (top >= i.top) {
          break label564;
        }
        localRectF.offset(0.0F, i.top - top);
        if (f3 != 0.0F)
        {
          if (f3 <= 1.0F) {
            break label603;
          }
          localRectF.inset(0.0F, -(localRectF.width() / f3 - localRectF.height()) / 2.0F);
        }
      }
      for (;;)
      {
        f.set(localRectF);
        d = g();
        a.invalidate();
        return;
        f2 = paramFloat1;
        f1 = paramFloat2;
        if (paramFloat2 == 0.0F) {
          break;
        }
        f2 = paramFloat2 * k;
        f1 = paramFloat2;
        break;
        f3 = f.width() / f.height();
        paramFloat1 = Math.max(f.width(), f.height()) / 2.0F;
        localRectF = new RectF(f.centerX() - paramFloat1, f.centerY() - paramFloat1, f.centerX() + paramFloat1, paramFloat1 + f.centerY());
        break label51;
        paramFloat1 = 25.0F;
        break label251;
        if (right <= i.right) {
          break label312;
        }
        localRectF.offset(-(right - i.right), 0.0F);
        break label312;
        if (bottom <= i.bottom) {
          break label347;
        }
        localRectF.offset(0.0F, -(bottom - i.bottom));
        break label347;
        localRectF.inset(-(localRectF.height() * f3 - localRectF.width()) / 2.0F, 0.0F);
      }
    }
  }
  
  public void d()
  {
    d = g();
  }
  
  Rect e()
  {
    if (e != null)
    {
      int i1 = d.centerX();
      int i2 = d.centerY();
      e.left = (i1 - d.height() / 2);
      e.right = (e.left + d.height());
      e.top = (i2 - d.width() / 2);
      e.bottom = (e.top + d.width());
    }
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.HighlightView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */