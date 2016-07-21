package com.estrongs.android.ui.controller;

import android.support.v7.widget.SearchView;
import android.view.View;
import android.widget.ImageView;
import java.lang.reflect.Field;

class ab
  implements Runnable
{
  ab(aa paramaa) {}
  
  public void run()
  {
    h.h(a.a).setOnQueryTextListener(h.g(a.a));
    h.h(a.a).findViewById(2131624086).setBackgroundResource(2130837576);
    ((ImageView)h.h(a.a).findViewById(2131624088)).setImageDrawable(a.a.b(2130837525));
    Object localObject = h.e(a.a).getClass();
    try
    {
      localObject = ((Class)localObject).getDeclaredField("mCollapseButtonView");
      ((Field)localObject).setAccessible(true);
      localObject = (ImageView)((Field)localObject).get(h.e(a.a));
      if (localObject != null) {
        ((ImageView)localObject).setImageResource(2130838592);
      }
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */