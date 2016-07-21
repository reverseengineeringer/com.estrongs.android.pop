package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

public abstract class s
  extends Drawable.ConstantState
{
  int a;
  Drawable.ConstantState b;
  ColorStateList c = null;
  PorterDuff.Mode d = r.a;
  
  s(s params, Resources paramResources)
  {
    if (params != null)
    {
      a = a;
      b = b;
      c = c;
      d = d;
    }
  }
  
  boolean a()
  {
    return b != null;
  }
  
  public int getChangingConfigurations()
  {
    int j = a;
    if (b != null) {}
    for (int i = b.getChangingConfigurations();; i = 0) {
      return i | j;
    }
  }
  
  public Drawable newDrawable()
  {
    return newDrawable(null);
  }
  
  public abstract Drawable newDrawable(Resources paramResources);
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */