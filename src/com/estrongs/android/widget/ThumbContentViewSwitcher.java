package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import java.util.ArrayList;
import java.util.List;

public class ThumbContentViewSwitcher
  extends ContentViewSwitcher
{
  private List<Bitmap> a = new ArrayList();
  
  public ThumbContentViewSwitcher(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ThumbContentViewSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    c(e);
    c(paramInt);
    super.a(paramInt);
  }
  
  protected boolean a()
  {
    return true;
  }
  
  public void addView(View paramView, int paramInt)
  {
    super.addView(paramView, paramInt);
    if (paramInt > 0)
    {
      a.add(paramInt, null);
      return;
    }
    a.add(null);
  }
  
  public Bitmap b(int paramInt, boolean paramBoolean)
  {
    try
    {
      if (a.get(paramInt) != null) {
        return (Bitmap)a.get(paramInt);
      }
      Object localObject1 = getChildAt(paramInt);
      Object localObject2 = ((View)localObject1).getBackground();
      ((View)localObject1).setBackgroundDrawable(al.a(getContext()).h());
      Bitmap localBitmap2 = a.a((View)localObject1);
      ((View)localObject1).setBackgroundDrawable((Drawable)localObject2);
      if (localBitmap2 != null)
      {
        localObject2 = a.a(localBitmap2, paramBoolean);
        localObject1 = localObject2;
        if (!a()) {
          return ???;
        }
        a.set(paramInt, localObject2);
        return (Bitmap)localObject2;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Bitmap localBitmap1 = null;
      return localBitmap1;
    }
  }
  
  public void c(int paramInt)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)a.get(paramInt);
      a.set(paramInt, null);
      if (localBitmap != null) {
        localBitmap.recycle();
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void l()
  {
    int i = 0;
    while (i < a.size())
    {
      c(i);
      i += 1;
    }
  }
  
  public void removeViewAt(int paramInt)
  {
    super.removeViewAt(paramInt);
    if (paramInt < a.size())
    {
      Bitmap localBitmap = (Bitmap)a.remove(paramInt);
      if (localBitmap != null) {
        localBitmap.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ThumbContentViewSwitcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */