package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;

class r
  extends Drawable
  implements Drawable.Callback, q
{
  static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  s b;
  Drawable c;
  private int d;
  private PorterDuff.Mode e;
  private boolean f;
  private boolean g;
  
  r(Drawable paramDrawable)
  {
    if ((paramDrawable != null) && (paramDrawable.getConstantState() != null)) {
      b = b();
    }
    a(paramDrawable);
  }
  
  r(s params, Resources paramResources)
  {
    b = params;
    a(paramResources);
  }
  
  private void a(Resources paramResources)
  {
    if ((b != null) && (b.b != null)) {
      a(a(b.b, paramResources));
    }
  }
  
  private boolean a(int[] paramArrayOfInt)
  {
    if (!c()) {}
    PorterDuff.Mode localMode;
    int i;
    do
    {
      return false;
      ColorStateList localColorStateList = b.c;
      localMode = b.d;
      if ((localColorStateList == null) || (localMode == null)) {
        break;
      }
      i = localColorStateList.getColorForState(paramArrayOfInt, localColorStateList.getDefaultColor());
    } while ((f) && (i == d) && (localMode == e));
    setColorFilter(i, localMode);
    d = i;
    e = localMode;
    f = true;
    return true;
    f = false;
    clearColorFilter();
    return false;
  }
  
  public final Drawable a()
  {
    return c;
  }
  
  protected Drawable a(Drawable.ConstantState paramConstantState, Resources paramResources)
  {
    return paramConstantState.newDrawable();
  }
  
  public void a(int paramInt)
  {
    a(ColorStateList.valueOf(paramInt));
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    b.c = paramColorStateList;
    a(getState());
  }
  
  public void a(PorterDuff.Mode paramMode)
  {
    b.d = paramMode;
    a(getState());
  }
  
  public final void a(Drawable paramDrawable)
  {
    if (c != null) {
      c.setCallback(null);
    }
    c = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      paramDrawable.setVisible(isVisible(), true);
      paramDrawable.setState(getState());
      paramDrawable.setLevel(getLevel());
      paramDrawable.setBounds(getBounds());
      if (b != null) {
        b.b = paramDrawable.getConstantState();
      }
    }
    invalidateSelf();
  }
  
  s b()
  {
    return new t(b, null);
  }
  
  protected boolean c()
  {
    return true;
  }
  
  public void draw(Canvas paramCanvas)
  {
    c.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    int j = super.getChangingConfigurations();
    if (b != null) {}
    for (int i = b.getChangingConfigurations();; i = 0) {
      return i | j | c.getChangingConfigurations();
    }
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if ((b != null) && (b.a()))
    {
      b.a = getChangingConfigurations();
      return b;
    }
    return null;
  }
  
  public Drawable getCurrent()
  {
    return c.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return c.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return c.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return c.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return c.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return c.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return c.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return c.getState();
  }
  
  public Region getTransparentRegion()
  {
    return c.getTransparentRegion();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isStateful()
  {
    if (c()) {}
    for (ColorStateList localColorStateList = b.c; ((localColorStateList != null) && (localColorStateList.isStateful())) || (c.isStateful()); localColorStateList = null) {
      return true;
    }
    return false;
  }
  
  public Drawable mutate()
  {
    s locals;
    if ((!g) && (super.mutate() == this))
    {
      b = b();
      if (c != null) {
        c.mutate();
      }
      if (b != null)
      {
        locals = b;
        if (c == null) {
          break label77;
        }
      }
    }
    label77:
    for (Drawable.ConstantState localConstantState = c.getConstantState();; localConstantState = null)
    {
      b = localConstantState;
      g = true;
      return this;
    }
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (c != null) {
      c.setBounds(paramRect);
    }
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return c.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    c.setAlpha(paramInt);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    c.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    c.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    c.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    c.setFilterBitmap(paramBoolean);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    boolean bool = c.setState(paramArrayOfInt);
    return (a(paramArrayOfInt)) || (bool);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (c.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */