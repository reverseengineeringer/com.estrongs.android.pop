package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build.VERSION;

class aa
  extends y
{
  aa(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  aa(s params, Resources paramResources)
  {
    super(params, paramResources);
  }
  
  s b()
  {
    return new ab(b, null);
  }
  
  protected boolean c()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT == 21)
    {
      Drawable localDrawable = c;
      if ((!(localDrawable instanceof GradientDrawable)) && (!(localDrawable instanceof DrawableContainer)))
      {
        bool1 = bool2;
        if (!(localDrawable instanceof InsetDrawable)) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public Rect getDirtyBounds()
  {
    return c.getDirtyBounds();
  }
  
  public void getOutline(Outline paramOutline)
  {
    c.getOutline(paramOutline);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    c.setHotspot(paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    if (super.setState(paramArrayOfInt))
    {
      invalidateSelf();
      return true;
    }
    return false;
  }
  
  public void setTint(int paramInt)
  {
    if (c())
    {
      a(paramInt);
      return;
    }
    c.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (c())
    {
      a(paramColorStateList);
      return;
    }
    c.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (c())
    {
      a(paramMode);
      return;
    }
    c.setTintMode(paramMode);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */