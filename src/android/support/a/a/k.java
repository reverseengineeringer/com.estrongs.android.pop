package android.support.a.a;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.a;
import android.util.AttributeSet;

@TargetApi(21)
abstract class k
  extends Drawable
{
  Drawable a;
  
  static TypedArray b(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    if (paramTheme == null) {
      return paramResources.obtainAttributes(paramAttributeSet, paramArrayOfInt);
    }
    return paramTheme.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, 0, 0);
  }
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (a != null) {
      a.a(a, paramTheme);
    }
  }
  
  public void clearColorFilter()
  {
    if (a != null)
    {
      a.clearColorFilter();
      return;
    }
    super.clearColorFilter();
  }
  
  public ColorFilter getColorFilter()
  {
    if (a != null) {
      return a.e(a);
    }
    return null;
  }
  
  public Drawable getCurrent()
  {
    if (a != null) {
      return a.getCurrent();
    }
    return super.getCurrent();
  }
  
  public int getMinimumHeight()
  {
    if (a != null) {
      return a.getMinimumHeight();
    }
    return super.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    if (a != null) {
      return a.getMinimumWidth();
    }
    return super.getMinimumWidth();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    if (a != null) {
      return a.getPadding(paramRect);
    }
    return super.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    if (a != null) {
      return a.getState();
    }
    return super.getState();
  }
  
  public Region getTransparentRegion()
  {
    if (a != null) {
      return a.getTransparentRegion();
    }
    return super.getTransparentRegion();
  }
  
  public boolean isAutoMirrored()
  {
    if (a != null) {
      a.b(a);
    }
    return false;
  }
  
  public void jumpToCurrentState()
  {
    if (a != null) {
      a.a(a);
    }
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (a != null)
    {
      a.setBounds(paramRect);
      return;
    }
    super.onBoundsChange(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (a != null) {
      return a.setLevel(paramInt);
    }
    return super.onLevelChange(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    if (a != null) {
      a.a(a, paramBoolean);
    }
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    if (a != null)
    {
      a.setChangingConfigurations(paramInt);
      return;
    }
    super.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    if (a != null)
    {
      a.setColorFilter(paramInt, paramMode);
      return;
    }
    super.setColorFilter(paramInt, paramMode);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    if (a != null) {
      a.setFilterBitmap(paramBoolean);
    }
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (a != null) {
      a.a(a, paramFloat1, paramFloat2);
    }
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a != null) {
      a.a(a, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    if (a != null) {
      return a.setState(paramArrayOfInt);
    }
    return super.setState(paramArrayOfInt);
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */