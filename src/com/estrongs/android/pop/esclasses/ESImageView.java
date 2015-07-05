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
import com.estrongs.android.d.f;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;

public class ESImageView
  extends ImageView
{
  private Drawable a;
  private Drawable b;
  private d c;
  float p = 0.33333334F;
  float q = 0.33333334F;
  
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
  
  private boolean b(Drawable paramDrawable)
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
  
  private boolean c(Drawable paramDrawable)
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
  
  public void a(Drawable paramDrawable)
  {
    a(paramDrawable, 0.33333334F);
  }
  
  public void a(Drawable paramDrawable, float paramFloat)
  {
    p = paramFloat;
    a = paramDrawable;
  }
  
  public void a(d paramd)
  {
    c = paramd;
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (bd.h())
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
      if (!b(getDrawable()))
      {
        localDrawable = getDrawable().getConstantState().newDrawable().mutate();
        localDrawable.setAlpha(128);
        super.setImageDrawable(localDrawable);
        if ((a != null) && (!b(a)))
        {
          a = a.getConstantState().newDrawable().mutate();
          a.setAlpha(128);
        }
        if ((b != null) && (!b(b)))
        {
          b = b.getConstantState().newDrawable().mutate();
          b.mutate().setAlpha(128);
        }
      }
    }
    for (;;)
    {
      invalidate();
      return;
      if (!c(getDrawable()))
      {
        localDrawable = getDrawable().getConstantState().newDrawable().mutate();
        localDrawable.setAlpha(255);
        super.setImageDrawable(localDrawable);
        if ((a != null) && (!c(a)))
        {
          a = a.mutate();
          a.setAlpha(255);
        }
        if ((b != null) && (!c(b)))
        {
          b = b.mutate();
          b.mutate().setAlpha(255);
        }
      }
    }
  }
  
  protected void finalize()
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable != null) {
      f.a(localDrawable);
    }
    super.finalize();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = getPaddingLeft();
    if (c != null) {
      c.a();
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
        int m = Math.min(j / 3, k / 3);
        b.setBounds(k - m, j - m, k, j);
        b.draw(paramCanvas);
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
        if ((localRuntimeException.getMessage().indexOf("recycled bitmap") >= 0) && ((getTag() instanceof h)))
        {
          f.b(getDrawable());
          h localh = (h)getTag();
          boolean[] arrayOfBoolean = new boolean[1];
          arrayOfBoolean[0] = false;
          Drawable localDrawable = f.a(localh, false, arrayOfBoolean);
          setImageDrawable(localDrawable);
          if (arrayOfBoolean[0] != 0) {
            f.a(f.f(localh), localDrawable, true);
          }
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */