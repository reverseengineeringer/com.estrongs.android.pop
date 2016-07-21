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
  private boolean c = false;
  private LinkedList<PointF> d = new LinkedList();
  private Paint e = null;
  private Paint f = null;
  private Bitmap g = null;
  private int h = 32;
  private Bitmap i = null;
  private int j = 32;
  private ArrayList<GesturePoint> k = null;
  private Gesture l = null;
  private int m = 1493211874;
  private int n = -1;
  private int o = -1;
  private int p = 0;
  private int q = 0;
  private int r;
  private int s;
  private int t;
  private Paint u = new Paint();
  private Path v = new Path();
  private c w;
  
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
    c = true;
    if (n == -1)
    {
      DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
      int i1 = Math.min(widthPixels, heightPixels);
      n = (i1 / 36);
      o = (i1 / 24);
    }
    invalidate();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    synchronized (d)
    {
      d.add(new PointF(paramFloat1, paramFloat2));
      return;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    s = paramInt1;
    t = paramInt2;
    invalidate();
  }
  
  public void b()
  {
    c = false;
    synchronized (d)
    {
      d.clear();
      invalidate();
      return;
    }
  }
  
  public void c()
  {
    boolean bool = true;
    if (getContextgetResourcesgetConfigurationorientation == 1) {}
    Point localPoint;
    for (;;)
    {
      localPoint = ad.a(getContext()).r(bool);
      if (localPoint != null) {
        break;
      }
      a(-1, -1);
      return;
      bool = false;
    }
    a(x, y);
  }
  
  public Gesture getGesture()
  {
    return l;
  }
  
  public int getGestureStartX()
  {
    return s;
  }
  
  public int getGestureStartY()
  {
    return t;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i1 = 1;
    super.onDraw(paramCanvas);
    ??? = getContext().getResources().getDisplayMetrics();
    if (a)
    {
      r = (densityDpi / 160 * q);
      if (!c) {
        break label459;
      }
      synchronized (d)
      {
        arrayOfPointF = new PointF[d.size()];
        d.toArray(arrayOfPointF);
        if ((arrayOfPointF == null) || (arrayOfPointF.length <= 1)) {
          break label334;
        }
        if (e == null)
        {
          e = new Paint();
          e.setStrokeWidth(n);
          e.setColor(m);
          e.setAntiAlias(true);
          e.setDither(true);
          e.setStrokeCap(Paint.Cap.ROUND);
          e.setStrokeJoin(Paint.Join.ROUND);
          e.setStyle(Paint.Style.STROKE);
          f = new Paint();
          f.setAntiAlias(true);
          f.setDither(true);
          f.setStyle(Paint.Style.FILL);
          f.setColor(m);
        }
        ??? = arrayOfPointF[0];
        if (b) {
          paramCanvas.drawCircle(x, y, o, f);
        }
        v.reset();
        v.moveTo(x, y);
        if (i1 < arrayOfPointF.length)
        {
          v.lineTo(x, y);
          i1 += 1;
        }
      }
      paramCanvas.drawPath(v, e);
      label334:
      if (b) {}
    }
    label459:
    while ((b) || (!b.d()) || (!b.b)) {
      try
      {
        PointF[] arrayOfPointF;
        if (i == null)
        {
          i = BitmapFactory.decodeResource(getResources(), 2130837936);
          j = (i.getWidth() / 2);
          c();
        }
        if (s == -1) {
          s = (getWidth() / 2);
        }
        if (t == -1) {
          t = (getHeight() / 2 + r);
        }
        paramCanvas.drawBitmap(i, s - j, t - j, u);
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
      if (g == null)
      {
        g = BitmapFactory.decodeResource(getResources(), 2130837935);
        h = (g.getWidth() / 2);
        ESGestureCtrl.h = h;
        c();
      }
      if (s == -1) {
        s = (getWidth() / 2);
      }
      if (t == -1) {
        t = (getHeight() / 2 + r);
      }
      paramCanvas.drawBitmap(g, s - h, t - h, u);
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
    if (b)
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
        if (k != null) {
          k.clear();
        }
        for (;;)
        {
          b();
          l = null;
          a(paramMotionEvent.getX(), paramMotionEvent.getY());
          k.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
          break;
          k = new ArrayList();
        }
        a(paramMotionEvent.getX(), paramMotionEvent.getY());
        a();
        k.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
        continue;
        k.add(new GesturePoint(paramMotionEvent.getX(), paramMotionEvent.getY(), System.currentTimeMillis()));
        l = new Gesture();
        l.addStroke(new GestureStroke(k));
        if (w != null)
        {
          w.a(l);
          continue;
          b();
          k.clear();
          l = null;
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
  
  public void setForegroundColor(int paramInt)
  {
    m = paramInt;
  }
  
  public void setGesture(Gesture arg1)
  {
    int i1 = 0;
    if (??? == null) {
      return;
    }
    try
    {
      l = ???;
      GestureStroke localGestureStroke = (GestureStroke)l.getStrokes().get(0);
      synchronized (d)
      {
        d.clear();
        if (i1 < points.length)
        {
          a(points[i1], points[(i1 + 1)]);
          i1 += 2;
        }
      }
      c = true;
    }
    catch (Exception ???)
    {
      l = null;
      k = null;
      return;
    }
  }
  
  public void setOnGestureCompleteListener(c paramc)
  {
    w = paramc;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.ESGesturePanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */