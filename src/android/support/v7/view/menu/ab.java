package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.c.a.a;
import android.support.v4.c.a.b;
import android.support.v4.c.a.c;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

public final class ab
{
  public static Menu a(Context paramContext, a parama)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return new ac(paramContext, parama);
    }
    throw new UnsupportedOperationException();
  }
  
  public static MenuItem a(Context paramContext, b paramb)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new t(paramContext, paramb);
    }
    if (Build.VERSION.SDK_INT >= 14) {
      return new o(paramContext, paramb);
    }
    throw new UnsupportedOperationException();
  }
  
  public static SubMenu a(Context paramContext, c paramc)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return new ae(paramContext, paramc);
    }
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */