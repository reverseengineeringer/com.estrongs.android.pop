package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;

public class ImageViewTouch
  extends ImageViewTouchBase
{
  private final ViewImage21 a;
  private boolean b;
  private am c;
  private long d;
  
  public ImageViewTouch(Context paramContext)
  {
    super(paramContext);
    a = ((ViewImage21)paramContext);
  }
  
  public ImageViewTouch(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = ((ViewImage21)paramContext);
  }
  
  public float a()
  {
    return k;
  }
  
  public void a(am paramam)
  {
    c = paramam;
  }
  
  protected void b(float paramFloat1, float paramFloat2)
  {
    super.a(paramFloat1, paramFloat2);
    a(true, true);
    RectF localRectF = new RectF(0.0F, 0.0F, h.b().getWidth(), h.b().getHeight());
    g().mapRect(localRectF);
    if ((Math.abs(left) < 20.0F) && (c != null)) {
      c.a(0, paramFloat1);
    }
    if ((Math.abs(right) - getWidth() < 20.0F) && (c != null)) {
      c.a(1, paramFloat1);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent arg2)
  {
    if (a.a) {
      return false;
    }
    if ((!b) && (paramInt >= 19) && (paramInt <= 22)) {
      return super.onKeyDown(paramInt, ???);
    }
    int i = a.c;
    switch (paramInt)
    {
    }
    for (;;)
    {
      return super.onKeyDown(paramInt, ???);
      try
      {
        if (!a.b()) {
          continue;
        }
        ??? = a.e.a(a.c);
        a.setResult(-1, new Intent().setData(((e)???).f()));
        a.finish();
        continue;
      }
      finally
      {
        paramInt = -2;
      }
      if ((paramInt >= 0) && (paramInt < a.e.b())) {}
      synchronized (a)
      {
        a.b(1);
        a.a(paramInt, true);
        throw ???;
        long l1;
        long l2;
        if (f() <= 1.0F)
        {
          l1 = ???.getEventTime();
          l2 = d;
          if (l1 >= l2)
          {
            i -= 1;
            paramInt = i;
          }
        }
        try
        {
          d = (???.getEventTime() + 500L);
          if ((i >= 0) && (i < a.e.b())) {}
          for (;;)
          {
            synchronized (a)
            {
              a.b(1);
              a.a(i, true);
              return true;
              c(20.0F, 0.0F);
              a(true, false);
              i = -2;
            }
            if (i != -2) {
              a(true, true);
            }
          }
          if (f() <= 1.0F)
          {
            l1 = ???.getEventTime();
            l2 = d;
            if (l1 >= l2)
            {
              i += 1;
              paramInt = i;
              d = (???.getEventTime() + 500L);
              if ((i < 0) || (i >= a.e.b())) {
                break label489;
              }
            }
          }
          for (;;)
          {
            synchronized (a)
            {
              a.b(1);
              a.a(i, true);
              return true;
              c(-20.0F, 0.0F);
              a(true, false);
              i = -2;
            }
            label489:
            if (i != -2) {
              a(true, true);
            }
          }
          c(0.0F, 20.0F);
          a(false, true);
          return true;
        }
        finally {}
        c(0.0F, -20.0F);
        a(false, true);
        return true;
        ae.a(a, a.l, a.c());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ImageViewTouch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */