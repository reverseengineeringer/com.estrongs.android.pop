package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.util.bk;

public class ESImageView
  extends ImageView
{
  private Drawable a;
  private Drawable b;
  private Drawable c;
  private h d;
  float p = 0.33333334F;
  float q = 0.33333334F;
  float r = 0.33333334F;
  
  public ESImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean a(Drawable paramDrawable)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramDrawable instanceof BitmapDrawable))
    {
      bool1 = bool2;
      if (((BitmapDrawable)paramDrawable).getPaint().getAlpha() == 128) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean b(Drawable paramDrawable)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramDrawable instanceof BitmapDrawable))
    {
      bool1 = bool2;
      if (((BitmapDrawable)paramDrawable).getPaint().getAlpha() == 255) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void a(Drawable paramDrawable, float paramFloat)
  {
    p = paramFloat;
    a = paramDrawable;
  }
  
  public void b(Drawable paramDrawable, float paramFloat)
  {
    b = paramDrawable;
    q = paramFloat;
  }
  
  public void c(Drawable paramDrawable, float paramFloat)
  {
    c = paramDrawable;
    if (c != null) {
      c.mutate();
    }
    r = paramFloat;
  }
  
  protected void finalize()
  {
    super.finalize();
  }
  
  public Drawable getLeftCornorImage()
  {
    return a;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = getPaddingLeft();
    if (d != null) {
      d.a();
    }
    try
    {
      super.onDraw(paramCanvas);
      if (a != null)
      {
        j = getMeasuredHeight();
        k = getMeasuredWidth();
        k = (int)Math.min(j * p, k * p);
        a.setBounds(i, j - k, k + i, j);
        a.draw(paramCanvas);
      }
      if (b != null)
      {
        j = getMeasuredHeight();
        k = getMeasuredWidth();
        int m = (int)Math.min(j * q, k * q);
        b.setBounds(k - m, j - m, k, j);
        b.draw(paramCanvas);
      }
      if (c != null)
      {
        k = getMeasuredHeight();
        j = getMeasuredWidth();
        k = (int)Math.min(k * r, j * r);
        c.setBounds(j - k, 0, j, k);
        c.draw(paramCanvas);
      }
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        int j;
        int k;
        localRuntimeException.printStackTrace();
        if ((localRuntimeException.getMessage().indexOf("recycled bitmap") >= 0) && ((getTag() instanceof com.estrongs.fs.h)))
        {
          com.estrongs.fs.h localh = (com.estrongs.fs.h)getTag();
          e.a(localh.getAbsolutePath(), this, localh);
          super.onDraw(paramCanvas);
          try
          {
            if (a != null)
            {
              j = getMeasuredHeight();
              k = getMeasuredWidth();
              k = (int)Math.min(j * p, k * p);
              a.setBounds(i, j - k, k + i, j);
              a.draw(paramCanvas);
            }
            if (b != null)
            {
              i = getMeasuredHeight();
              j = getMeasuredWidth();
              k = (int)Math.min(i * q, j * q);
              b.setBounds(j - k, i - k, j, i);
              b.draw(paramCanvas);
            }
            if (c != null)
            {
              j = getMeasuredHeight();
              i = getMeasuredWidth();
              j = (int)Math.min(j * r, i * r);
              c.setBounds(i - j, 0, i, j);
              c.draw(paramCanvas);
              return;
            }
          }
          catch (Exception paramCanvas)
          {
            paramCanvas.printStackTrace();
          }
        }
      }
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    a = null;
    b = null;
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    a = null;
    b = null;
  }
  
  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    a = null;
    b = null;
  }
  
  public void setLeftCornerImage(Drawable paramDrawable)
  {
    a(paramDrawable, 0.33333334F);
  }
  
  public void setOnDrawer(h paramh)
  {
    d = paramh;
  }
  
  public void setRightCornerImage(Drawable paramDrawable)
  {
    b(paramDrawable, 0.33333334F);
  }
  
  public void setTopCornerImage(Drawable paramDrawable)
  {
    c(paramDrawable, 0.33333334F);
  }
  
  public void setTranslucent(boolean paramBoolean)
  {
    try
    {
      if (bk.h())
      {
        if (paramBoolean)
        {
          setAlpha(0.5F);
          return;
        }
        setAlpha(1.0F);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    Drawable localDrawable;
    if (paramBoolean) {
      if (!a(getDrawable()))
      {
        localDrawable = getDrawable().getConstantState().newDrawable().mutate();
        localDrawable.setAlpha(128);
        super.setImageDrawable(localDrawable);
        if ((a != null) && (!a(a)))
        {
          a = a.getConstantState().newDrawable().mutate();
          a.setAlpha(128);
        }
        if ((b != null) && (!a(b)))
        {
          b = b.getConstantState().newDrawable().mutate();
          b.mutate().setAlpha(128);
        }
        if ((c != null) && (!a(c)))
        {
          c = c.getConstantState().newDrawable().mutate();
          c.mutate().setAlpha(128);
        }
      }
    }
    for (;;)
    {
      invalidate();
      return;
      if (!b(getDrawable()))
      {
        localDrawable = getDrawable().getConstantState().newDrawable().mutate();
        localDrawable.setAlpha(255);
        super.setImageDrawable(localDrawable);
        if ((a != null) && (!b(a)))
        {
          a = a.mutate();
          a.setAlpha(255);
        }
        if ((b != null) && (!b(b)))
        {
          b = b.mutate();
          b.mutate().setAlpha(255);
        }
        if ((c != null) && (!b(c)))
        {
          c = c.mutate();
          c.mutate().setAlpha(255);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */