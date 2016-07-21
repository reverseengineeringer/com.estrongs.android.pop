package android.support.design.internal;

import android.content.Context;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.view.SubMenu;

public class a
  extends i
{
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (m)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    n localn = new n(e(), this, paramCharSequence);
    paramCharSequence.a(localn);
    return localn;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */