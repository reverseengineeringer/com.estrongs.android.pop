package com.estrongs.android.ui.guesture;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.gesture.Gesture;
import android.gesture.GesturePoint;
import android.gesture.GestureStroke;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import java.util.ArrayList;
import java.util.LinkedList;

@SuppressLint({"NewApi"})
public class ESGesturePanel
  extends View
{
  public boolean a = true;
  public boolean b = false;
  public boolean c = false;
  private boolean d = false;
  private LinkedList<PointF> e = new LinkedList();
  private Paint f = null;
  private Paint g = null;
  private Bitmap h = null;
  private int i = 32;
  private Bitmap j = null;
  private int k = 32;
  private ArrayList<GesturePoint> l = null;
  private Gesture m = null;
  private int n = 1493211874;
  private int o = -1;
  private int p = -1;
  private int q = 0;
  private int r = 0;
  private int s;
  private int t;
  private int u;
  private Paint v = new Paint();
  private Path w = new Path();
  private c x;
  private Bitmap y = null;
  
  public ESGesturePanel(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESGesturePanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESGesturePanel(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    d = true;
    if (o == -1)
    {
      DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
      int i1 = Math.min(widthPixels, heightPixels);
      o = (i1 / 36);
      p = (i1 / 24);
    }
    invalidate();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    synchronized (e)
    {
      e.add(new PointF(paramFloat1, paramFloat2));
      return;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    t = paramInt1;
    u = paramInt2;
    invalidate();
  }
  
  public void a(c paramc)
  {
    x = paramc;
  }
  
  public void b()
  {
    d = false;
    synchronized (e)
    {
      e.clear();
      invalidate();
      return;
    }
  }
  
  public boolean b(float paramFloat1, float paramFloat2)
  {
    try
    {
      if (!b) {
        return false;
      }
      DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
      int i1 = widthPixels;
      int i2 = heightPixels;
      if ((paramFloat1 >= i1 - 100 - 18) && (paramFloat1 <= i1 - 100 + 36 + 18) && (paramFloat2 >= 32.0F) && (paramFloat2 <= 104.0F)) {
        return true;
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void c()
  {
    boolean bool = true;
    if (getContextgetResourcesgetConfigurationorientation == 1) {}
    Point localPoint;
    for (;;)
    {
      localPoint = ad.a(getContext()).s(bool);
      if (localPoint != null) {
        break;
      }
      a(-1, -1);
      return;
      bool = false;
    }
    a(x, y);
  }
  
  public int d()
  {
    return t;
  }
  
  public int e()
  {
    return u;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i1 = 1;
    super.onDraw(paramCanvas);
    ??? = getContext().getResources().getDisplayMetrics();
    if (b)
    {
      if (y == null) {
        y = BitmapFactory.decodeResource(getResources(), 2130838075);
      }
      paramCanvas.drawBitmap(y, widthPixels - 100, 50.0F, v);
    }
    if (a)
    {
      s = (densityDpi / 160 * r);
      if (!d) {
        break label508;
      }
      synchronized (e)
      {
        arrayOfPointF = new PointF[e.size()];
        e.toArray(arrayOfPointF);
        if ((arrayOfPointF == null) || (arrayOfPointF.length <= 1)) {
          break label383;
        }
        if (f == null)
        {
          f = new Paint();
          f.setStrokeWidth(o);
          f.setColor(n);
          f.setAntiAlias(true);
          f.setDither(true);
          f.setStrokeCap(Paint.Cap.ROUND);
          f.setStrokeJoin(Paint.Join.ROUND);
          f.setStyle(Paint.Style.STROKE);
          g = new Paint();
          g.setAntiAlias(true);
          g.setDither(true);
          g.setStyle(Paint.Style.FILL);
          g.setColor(n);
        }
        ??? = arrayOfPointF[0];
        if (c) {
          paramCanvas.drawCircle(x, y, p, g);
        }
        w.reset();
        w.moveTo(x, y);
        if (i1 < arrayOfPointF.length)
        {
          w.lineTo(x, y);
          i1 += 1;
        }
      }
      paramCanvas.drawPath(w, f);
      label383:
      if (c) {}
    }
    label508:
    while ((c) || (!b.d()) || (!b.b)) {
      try
      {
        PointF[] arrayOfPointF;
        if (j == null)
        {
          j = BitmapFactory.decodeResource(getResources(), 2130837676);
          k = (j.getWidth() / 2);
          c();
        }
        if (t == -1) {
          t = (getWidth() / 2);
        }
        if (u == -1) {
          u = (getHeight() / 2 + s);
        }
        paramCanvas.drawBitmap(j, t - k, u - k, v);
        return;
      }
      catch (Exception paramCanvas)
      {
        paramCanvas.printStackTrace();
        return;
      }
    }
    try
    {
      if (h == null)
      {
        h = BitmapFactory.decodeResource(getResources(), 2130837675);
        i = (h.getWidth() / 2);
        ESGestureCtrl.b = i;
        c();
      }
      if (t == -1) {
        t = (getWidth() / 2);
      }
      if (u == -1) {
        u = (getHeight() / 2 + s);
      }
      paramCanvas.drawBitmap(h, t - i, u - i, v);
      return;
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2;
    int i1;
    if (c)
    {
      i2 = 0;
      i1 = i2;
      if (ac.a() < 8) {}
    }
    try
    {
      i1 = paramMotionEvent.getActionIndex();
      if (i1 != 0) {
        return super.onTouchEvent(paramMotionEvent);
      }
      switch (paramMotionEvent.getAction())
      {
      }
      for (;;)
      {
        return true;
        if (l != null) {
          l.clear();
        }
        for (;;)
        {
          b();
          m = null;
          a(paramMotionEvent.getX(), paramMotionEvent.getY());
          l.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
          break;
          l = new ArrayList();
        }
        a(paramMotionEvent.getX(), paramMotionEvent.getY());
        a();
        l.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
        continue;
        l.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
        m = new Gesture();
        m.addStroke(new GestureStroke(l));
        if (x != null)
        {
          x.a(m);
          continue;
          b();
          l.clear();
          m = null;
        }
      }
      return super.onTouchEvent(paramMotionEvent);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        i1 = i2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.ESGesturePanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */