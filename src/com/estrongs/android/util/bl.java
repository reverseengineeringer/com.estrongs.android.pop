package com.estrongs.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.b.a.a;
import android.view.MenuItem;
import android.view.View;

public class bl
{
  public static Drawable a(Context paramContext, Drawable paramDrawable, int paramInt)
  {
    try
    {
      Drawable localDrawable = a.f(paramDrawable.getConstantState().newDrawable().mutate());
      a.a(localDrawable, paramContext.getResources().getColorStateList(paramInt));
      return localDrawable;
    }
    catch (Exception paramContext) {}
    return paramDrawable;
  }
  
  public static <T extends View> T a(View paramView, int paramInt)
  {
    return paramView.findViewById(paramInt);
  }
  
  public static void a(Activity paramActivity, MenuItem paramMenuItem, int paramInt)
  {
    Object localObject = null;
    if (paramInt != -1) {
      localObject = paramActivity.getResources().getDrawable(paramInt);
    }
    if (localObject == null)
    {
      localObject = new ColorDrawable(0);
      paramInt = paramActivity.getResources().getDimensionPixelSize(2131165253);
      ((Drawable)localObject).setBounds(0, 0, paramInt, paramInt);
      paramMenuItem.setIcon((Drawable)localObject);
      return;
    }
    paramInt = paramActivity.getResources().getDimensionPixelSize(2131165273);
    ((Drawable)localObject).setBounds(0, 0, paramInt, paramInt);
    paramMenuItem.setIcon(a(paramActivity, (Drawable)localObject, 2131558714));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */