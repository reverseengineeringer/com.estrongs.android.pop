package android.support.v4.content.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public final class a
{
  public static Drawable a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return b.a(paramResources, paramInt, paramTheme);
    }
    return paramResources.getDrawable(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */