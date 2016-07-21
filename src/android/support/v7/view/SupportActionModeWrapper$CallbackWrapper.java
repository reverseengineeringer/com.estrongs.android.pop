package android.support.v7.view;

import android.content.Context;
import android.support.v4.c.a.a;
import android.support.v4.c.a.b;
import android.support.v4.e.r;
import android.support.v7.view.menu.ab;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

public class SupportActionModeWrapper$CallbackWrapper
  implements ActionMode.Callback
{
  final ArrayList<SupportActionModeWrapper> mActionModes;
  final Context mContext;
  final r<Menu, Menu> mMenus;
  final android.view.ActionMode.Callback mWrappedCallback;
  
  public SupportActionModeWrapper$CallbackWrapper(Context paramContext, android.view.ActionMode.Callback paramCallback)
  {
    mContext = paramContext;
    mWrappedCallback = paramCallback;
    mActionModes = new ArrayList();
    mMenus = new r();
  }
  
  private Menu getMenuWrapper(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)mMenus.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = ab.a(mContext, (a)paramMenu);
      mMenus.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  public android.view.ActionMode getActionModeWrapper(ActionMode paramActionMode)
  {
    int j = mActionModes.size();
    int i = 0;
    while (i < j)
    {
      SupportActionModeWrapper localSupportActionModeWrapper = (SupportActionModeWrapper)mActionModes.get(i);
      if ((localSupportActionModeWrapper != null) && (mWrappedObject == paramActionMode)) {
        return localSupportActionModeWrapper;
      }
      i += 1;
    }
    paramActionMode = new SupportActionModeWrapper(mContext, paramActionMode);
    mActionModes.add(paramActionMode);
    return paramActionMode;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return mWrappedCallback.onActionItemClicked(getActionModeWrapper(paramActionMode), ab.a(mContext, (b)paramMenuItem));
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrappedCallback.onCreateActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    mWrappedCallback.onDestroyActionMode(getActionModeWrapper(paramActionMode));
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrappedCallback.onPrepareActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.SupportActionModeWrapper.CallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */