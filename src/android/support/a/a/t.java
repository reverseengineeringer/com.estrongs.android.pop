package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;

class t
  extends Drawable.ConstantState
{
  private final Drawable.ConstantState a;
  
  public t(Drawable.ConstantState paramConstantState)
  {
    a = paramConstantState;
  }
  
  public boolean canApplyTheme()
  {
    return a.canApplyTheme();
  }
  
  public int getChangingConfigurations()
  {
    return a.getChangingConfigurations();
  }
  
  public Drawable newDrawable()
  {
    l locall = new l(null);
    a = ((VectorDrawable)a.newDrawable());
    return locall;
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    l locall = new l(null);
    a = ((VectorDrawable)a.newDrawable(paramResources));
    return locall;
  }
  
  public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
  {
    l locall = new l(null);
    a = ((VectorDrawable)a.newDrawable(paramResources, paramTheme));
    return locall;
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */