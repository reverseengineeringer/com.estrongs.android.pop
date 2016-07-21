package com.estrongs.android.ui.drag;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.view.do;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.List;

public class DragGrid
  extends FrameLayout
  implements s
{
  private d a;
  private boolean b = false;
  private h c;
  private String d;
  private List<h> e;
  private boolean f;
  private boolean g;
  private boolean h;
  private ImageView i;
  
  public DragGrid(Context paramContext)
  {
    super(paramContext);
  }
  
  public DragGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DragGrid(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    if (a == null)
    {
      setVisibility(0);
      return;
    }
    e = ((List)a.e());
    if ((d == null) || (e == null)) {
      f = false;
    }
    for (;;)
    {
      if (f) {
        break label112;
      }
      setVisibility(0);
      return;
      Iterator localIterator = e.iterator();
      if (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (!d.equals(localh.getAbsolutePath())) {
          break;
        }
        f = true;
      }
    }
    label112:
    setVisibility(4);
  }
  
  public void a(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paraml = getContext();
    boolean bool = false;
    if ((c instanceof b)) {
      bool = true;
    }
    ao.a((Activity)paraml, (List)paramObject, c, bool, true, null, true);
    if ((paraml instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)paraml).B();
    }
  }
  
  public void b(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    a();
    if (!f) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      invalidate();
      return;
    }
  }
  
  public void c(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject) {}
  
  public void d(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    b = false;
    invalidate();
  }
  
  @SuppressLint({"NewApi"})
  protected void dispatchDraw(Canvas paramCanvas)
  {
    for (;;)
    {
      try
      {
        if (!h) {
          continue;
        }
        if ((i != null) && ((i instanceof ESImageView)))
        {
          ((ESImageView)i).setTranslucent(true);
          i.invalidate();
        }
        super.dispatchDraw(paramCanvas);
      }
      catch (Throwable localThrowable)
      {
        boolean bool;
        int k;
        continue;
        int j = Color.argb(80, 255, 0, 0);
        continue;
      }
      if (b)
      {
        bool = g;
        if ((c instanceof b)) {
          bool = u.a().b();
        }
        if (!bool) {
          continue;
        }
        j = Color.argb(80, 49, 146, 249);
        k = paramCanvas.save();
        paramCanvas.drawColor(j);
        paramCanvas.restoreToCount(k);
      }
      return;
      if ((i != null) && ((i instanceof ESImageView)))
      {
        ((ESImageView)i).setTranslucent(false);
        i.invalidate();
      }
    }
  }
  
  public boolean e(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    boolean bool = g;
    if ((c instanceof b)) {
      bool = u.a().b();
    }
    return (getVisibility() == 0) && (bool);
  }
  
  public h getFileObject()
  {
    return (h)getTagm;
  }
  
  public void setDragController(d paramd)
  {
    a = paramd;
  }
  
  public void setFileObject(h paramh)
  {
    if (i == null) {
      i = ((ImageView)findViewById(2131624199));
    }
    if (paramh == null) {
      return;
    }
    c = paramh;
    d = c.getAbsolutePath();
    f = false;
    g = paramh.getFileType().a();
    if ((paramh.getName().startsWith(".")) || ((paramh.getExtra("item_is_scanned_server") != null) && (((Boolean)paramh.getExtra("item_is_scanned_server")).booleanValue()))) {}
    for (h = true;; h = false)
    {
      a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */