package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class e
  extends Drawable.ConstantState
{
  private final Drawable.ConstantState a;
  
  public e(Drawable.ConstantState paramConstantState)
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
    b localb = new b(null);
    a = a.newDrawable();
    a.setCallback(b.a(localb));
    return localb;
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    b localb = new b(null);
    a = a.newDrawable(paramResources);
    a.setCallback(b.a(localb));
    return localb;
  }
  
  public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
  {
    b localb = new b(null);
    a = a.newDrawable(paramResources, paramTheme);
    a.setCallback(b.a(localb));
    return localb;
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */