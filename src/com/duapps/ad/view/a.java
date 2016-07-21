package com.duapps.ad.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

public class a
{
  private static int a;
  private static long b;
  private boolean A = false;
  private int B = 800;
  private int c;
  private int d;
  private int e;
  private final View f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private float l;
  private float m;
  private float n;
  private float o;
  private float p;
  private final Paint q;
  private boolean r;
  private boolean s;
  private int t;
  private int u;
  private RectF v;
  private float w;
  private int x = 0;
  private int y = 0;
  private boolean z = true;
  
  public a(View paramView)
  {
    paramView.setClickable(true);
    f = paramView;
    q = new Paint();
    q.setAntiAlias(true);
  }
  
  public static void a(a parama)
  {
    parama.d();
  }
  
  private boolean a(ViewGroup paramViewGroup, float paramFloat1, float paramFloat2)
  {
    int i2 = paramViewGroup.getChildCount();
    if (i2 <= 0) {
      return false;
    }
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = paramViewGroup.getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        if (!(localView instanceof ViewGroup)) {
          break label128;
        }
        if ((paramFloat1 >= localView.getRight()) || (paramFloat1 <= localView.getLeft()) || (paramFloat2 >= localView.getBottom()) || (paramFloat2 <= localView.getTop()) || (a((ViewGroup)localView, paramFloat1 - localView.getLeft(), paramFloat2 - localView.getTop()))) {}
      }
      label128:
      while ((!localView.isClickable()) || (paramFloat1 >= localView.getRight()) || (paramFloat1 <= localView.getLeft()) || (paramFloat2 >= localView.getBottom()) || (paramFloat2 <= localView.getTop()))
      {
        i1 += 1;
        break;
      }
      return true;
    }
    return false;
  }
  
  public static View b(a parama)
  {
    return f;
  }
  
  private void c()
  {
    if ((r) && (o > 0.0F))
    {
      n = 0.1F;
      o = (-o);
      p = 0.0F;
      h = (h * c / d);
      l = (l * c / d);
    }
  }
  
  private void d()
  {
    try
    {
      Object localObject = (View)f.getParent();
      if ((localObject instanceof AdapterView))
      {
        localObject = (AdapterView)localObject;
        int i1 = ((AdapterView)localObject).getPositionForView(f);
        AdapterView.OnItemClickListener localOnItemClickListener = ((AdapterView)localObject).getOnItemClickListener();
        if (localOnItemClickListener != null) {
          localOnItemClickListener.onItemClick((AdapterView)localObject, f, i1, ((AdapterView)localObject).getItemIdAtPosition(i1));
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a(float paramFloat)
  {
    w = paramFloat;
  }
  
  public void a(int paramInt)
  {
    x = paramInt;
  }
  
  public final void a(Canvas paramCanvas)
  {
    int i1;
    if ((r) && (z))
    {
      paramCanvas.save();
      i1 = f.getScrollX();
      int i2 = f.getScrollY();
      if ((i1 != 0) || (i2 != 0)) {
        paramCanvas.translate(i1, i2);
      }
      q.reset();
      q.setAntiAlias(true);
      q.setColor(x);
      if (w != 0.0F) {
        break label324;
      }
      q.setAlpha((int)(255.0F * n));
      paramCanvas.drawRect(0.0F, 0.0F, t, u, q);
      n += o;
      if (o >= 0.0F) {
        break label347;
      }
      if (n < p)
      {
        n = p;
        r = false;
        if (s)
        {
          f.post(new b(this, this));
          s = false;
        }
      }
      label197:
      if (w != 0.0F) {
        break label370;
      }
      q.setColor(y);
      paramCanvas.drawCircle(g, j, k, q);
      label237:
      g += h;
      if (h >= 0.0F) {
        break label490;
      }
      if (g < i) {
        g = i;
      }
    }
    for (;;)
    {
      k += l;
      if (k > m) {
        k = m;
      }
      paramCanvas.restore();
      f.invalidate();
      return;
      label324:
      paramCanvas.drawRoundRect(v, w, w, q);
      break;
      label347:
      if (n <= p) {
        break label197;
      }
      n = p;
      break label197;
      label370:
      paramCanvas.drawRoundRect(v, w, w, q);
      i1 = paramCanvas.saveLayer(v, q, 31);
      q.setColor(-1);
      paramCanvas.drawRoundRect(v, w, w, q);
      q.setColor(y);
      q.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      paramCanvas.drawCircle(g, j, k, q);
      paramCanvas.restoreToCount(i1);
      break label237;
      label490:
      if (g > i) {
        g = i;
      }
    }
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    if (z)
    {
      if (paramMotionEvent.getAction() != 0) {
        break label424;
      }
      if ((!s) && (f.isEnabled()) && ((!(f instanceof ViewGroup)) || (!a((ViewGroup)f, paramMotionEvent.getX(), paramMotionEvent.getY())))) {
        break label64;
      }
    }
    label64:
    label382:
    label424:
    float f1;
    float f2;
    do
    {
      return;
      r = true;
      j = paramMotionEvent.getY();
      if (a == 0) {
        a = ((WindowManager)f.getContext().getSystemService("window")).getDefaultDisplay().getWidth();
      }
      t = f.getWidth();
      u = f.getHeight();
      if (v == null) {
        v = new RectF(0.0F, 0.0F, t, u);
      }
      int i1;
      if (!A)
      {
        c = ((int)(2000.0F * t / a));
        if (c < 1000) {
          c = 1000;
        }
        d = 200;
        e = 150;
        g = paramMotionEvent.getX();
        i = (t >> 1);
        h = ((i - g) * 20.0F / c);
        k = 0.0F;
        i1 = u;
        if (j < i1 >> 1) {
          break label382;
        }
      }
      double d1;
      for (m = ((float)Math.sqrt(Math.pow(t >> 1, 2.0D) + Math.pow(j, 2.0D)));; m = ((float)Math.sqrt(Math.pow(i1 - j, 2.0D) + d1)))
      {
        l = ((m - k) * 20.0F / c);
        n = 0.0F;
        p = 0.1F;
        o = (2.0F / e);
        f.invalidate();
        return;
        c = B;
        break;
        d1 = Math.pow(t >> 1, 2.0D);
      }
      if (paramMotionEvent.getAction() != 2) {
        break;
      }
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
    } while ((f1 >= 0.0F) && (f1 <= t) && (f2 >= 0.0F) && (f2 <= u));
    c();
    return;
    if ((paramMotionEvent.getAction() != 1) && (paramMotionEvent.getAction() != 3))
    {
      A = false;
      return;
    }
    c();
  }
  
  public final boolean a()
  {
    return r;
  }
  
  public final void b()
  {
    long l1 = System.currentTimeMillis();
    if (Math.abs(l1 - b) > 200L)
    {
      b = l1;
      s = true;
    }
  }
  
  public void b(int paramInt)
  {
    y = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */