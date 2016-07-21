package com.estrongs.android.ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.menu.d;
import android.support.v7.view.menu.y;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.FitWindowsFrameLayout;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.u;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.lang.reflect.Field;

public abstract class a
  implements ActionMode.Callback
{
  private boolean a = false;
  private Handler b = new Handler();
  
  private void a(ActionMode paramActionMode)
  {
    Object localObject = paramActionMode.getClass();
    try
    {
      localObject = ((Class)localObject).getDeclaredField("mContextView");
      ((Field)localObject).setAccessible(true);
      paramActionMode = (ViewGroup)((Field)localObject).get(paramActionMode);
      paramActionMode.setBackgroundResource(2131558516);
      localObject = paramActionMode.getClass();
      Field localField = ((Class)localObject).getDeclaredField("mClose");
      localField.setAccessible(true);
      ((ImageView)localField.get(paramActionMode)).setImageDrawable(a().getResources().getDrawable(2130838592));
      localObject = ((Class)localObject).getDeclaredField("mTitleView");
      ((Field)localObject).setAccessible(true);
      ((TextView)((Field)localObject).get(paramActionMode)).setTextColor(at.a(a()).c(2131558723));
      return;
    }
    catch (NoSuchFieldException paramActionMode)
    {
      paramActionMode.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramActionMode)
    {
      paramActionMode.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramActionMode)
    {
      paramActionMode.printStackTrace();
    }
  }
  
  private void a(ActionMenuView paramActionMenuView)
  {
    try
    {
      Object localObject = ActionMenuView.class.getDeclaredField("mPresenter");
      ((Field)localObject).setAccessible(true);
      paramActionMenuView = (d)((Field)localObject).get(paramActionMenuView);
      localObject = paramActionMenuView.getCallback();
      if (!(localObject instanceof c)) {
        paramActionMenuView.setCallback(new c((y)localObject, paramActionMenuView));
      }
      return;
    }
    catch (NoSuchFieldException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
      return;
    }
    catch (NullPointerException paramActionMenuView)
    {
      paramActionMenuView.printStackTrace();
    }
  }
  
  private void b(ActionMode paramActionMode)
  {
    Object localObject = paramActionMode.getClass();
    try
    {
      localObject = ((Class)localObject).getDeclaredField("mContextView");
      ((Field)localObject).setAccessible(true);
      paramActionMode = (ActionBarContextView)((Field)localObject).get(paramActionMode);
      localObject = ActionBarContextView.class.getSuperclass().getDeclaredField("mMenuView");
      ((Field)localObject).setAccessible(true);
      a((ActionMenuView)((Field)localObject).get(paramActionMode));
      return;
    }
    catch (NoSuchFieldException paramActionMode)
    {
      paramActionMode.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramActionMode)
    {
      paramActionMode.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramActionMode)
    {
      paramActionMode.printStackTrace();
    }
  }
  
  public abstract Context a();
  
  public abstract boolean b();
  
  public boolean c()
  {
    return false;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return true;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    a = false;
    if (!b()) {}
    do
    {
      do
      {
        return true;
        paramActionMode = (StandaloneActionMode)paramActionMode;
        try
        {
          paramMenu = StandaloneActionMode.class.getDeclaredField("mContextView");
          paramMenu.setAccessible(true);
          paramActionMode = (View)paramMenu.get(paramActionMode);
          if (cu.b(a())) {
            break;
          }
          int i = new u((Activity)a()).a();
          if (i > 0) {
            paramActionMode.setPadding(paramActionMode.getPaddingLeft(), paramActionMode.getPaddingTop(), i, paramActionMode.getPaddingBottom());
          }
        }
        catch (NoSuchFieldException paramActionMode)
        {
          for (;;)
          {
            LinearLayout localLinearLayout;
            paramActionMode.printStackTrace();
            return true;
            paramActionMode.setPadding(paramActionMode.getPaddingLeft(), paramActionMode.getPaddingTop(), 0, paramActionMode.getPaddingBottom());
          }
        }
        catch (IllegalAccessException paramActionMode)
        {
          paramActionMode.printStackTrace();
          return true;
        }
        catch (IllegalArgumentException paramActionMode)
        {
          paramActionMode.printStackTrace();
        }
      } while (!c());
      paramMenu = (ViewGroup)paramActionMode.getParent();
    } while (!(paramMenu instanceof FitWindowsFrameLayout));
    localLinearLayout = new LinearLayout(a());
    localLinearLayout.setPadding(0, g.a(a(), 17.0F), 0, 0);
    paramActionMode.getLayoutParams();
    paramMenu.removeView(paramActionMode);
    localLinearLayout.addView(paramActionMode, new LinearLayout.LayoutParams(-1, -2));
    paramMenu.addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -2));
    return true;
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {}
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    b.post(new b(this, paramActionMode));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.base.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */