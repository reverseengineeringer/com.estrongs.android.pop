package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class n
{
  private static final String TAG = "ActionProvider(support)";
  private final Context mContext;
  private o mSubUiVisibilityListener;
  private p mVisibilityListener;
  
  public n(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean isVisible()
  {
    return true;
  }
  
  public abstract View onCreateActionView();
  
  public View onCreateActionView(MenuItem paramMenuItem)
  {
    return onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public boolean overridesItemVisibility()
  {
    return false;
  }
  
  public void refreshVisibility()
  {
    if ((mVisibilityListener != null) && (overridesItemVisibility())) {
      mVisibilityListener.a(isVisible());
    }
  }
  
  public void reset()
  {
    mVisibilityListener = null;
    mSubUiVisibilityListener = null;
  }
  
  public void setSubUiVisibilityListener(o paramo)
  {
    mSubUiVisibilityListener = paramo;
  }
  
  public void setVisibilityListener(p paramp)
  {
    if ((mVisibilityListener != null) && (paramp != null)) {
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    }
    mVisibilityListener = paramp;
  }
  
  public void subUiVisibilityChanged(boolean paramBoolean)
  {
    if (mSubUiVisibilityListener != null) {
      mSubUiVisibilityListener.onSubUiVisibilityChanged(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */