package com.estrongs.android.ui.drag;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.estrongs.android.ui.d.g;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class j
{
  Map<String, t> a = new HashMap();
  DragGrid b;
  Bitmap c;
  private int d;
  
  public int a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {}
    try
    {
      c = Bitmap.createBitmap(paramBitmap);
      return;
    }
    catch (OutOfMemoryError paramBitmap)
    {
      paramBitmap.printStackTrace();
    }
  }
  
  public void a(Rect paramRect, j paramj, View paramView)
  {
    paramRect = paramRect.toShortString();
    if (a.containsKey(paramRect))
    {
      paramRect = (t)a.get(paramRect);
      a += 1;
      return;
    }
    Drawable localDrawable = paramView.getBackground();
    paramView.setBackgroundDrawable(null);
    paramj.a(g.a(paramView));
    paramView.setBackgroundDrawable(localDrawable);
    a.put(paramRect, new t(paramj));
  }
  
  public void a(DragGrid paramDragGrid)
  {
    b = paramDragGrid;
  }
  
  public DragGrid b()
  {
    if (d == 0)
    {
      j localj = d();
      if (localj == null) {
        return b;
      }
      return b;
    }
    return b;
  }
  
  public Bitmap c()
  {
    if (d == 0)
    {
      j localj = d();
      if (localj == null) {
        return c;
      }
      return c;
    }
    return c;
  }
  
  public j d()
  {
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext())
    {
      t localt = (t)localIterator.next();
      if (a == 1) {
        return b;
      }
    }
    return null;
  }
  
  public void e()
  {
    if (d == 0)
    {
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext())
      {
        Bitmap localBitmap = nextb.c;
        if ((localBitmap != null) && (!localBitmap.isRecycled())) {
          localBitmap.recycle();
        }
      }
    }
    if ((c != null) && (!c.isRecycled())) {
      c.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */