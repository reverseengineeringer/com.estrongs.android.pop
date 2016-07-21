package android.support.v4.b.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class u
  extends r
{
  u(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  u(s params, Resources paramResources)
  {
    super(params, paramResources);
  }
  
  protected Drawable a(Drawable.ConstantState paramConstantState, Resources paramResources)
  {
    return paramConstantState.newDrawable(paramResources);
  }
  
  s b()
  {
    return new v(b, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */