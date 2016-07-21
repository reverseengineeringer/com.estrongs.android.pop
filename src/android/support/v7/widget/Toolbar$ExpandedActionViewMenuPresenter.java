package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.x;
import android.support.v7.view.menu.y;
import android.support.v7.view.menu.z;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;

class Toolbar$ExpandedActionViewMenuPresenter
  implements x
{
  m mCurrentExpandedItem;
  i mMenu;
  
  private Toolbar$ExpandedActionViewMenuPresenter(Toolbar paramToolbar) {}
  
  public boolean collapseItemActionView(i parami, m paramm)
  {
    if ((this$0.mExpandedActionView instanceof CollapsibleActionView)) {
      ((CollapsibleActionView)this$0.mExpandedActionView).onActionViewCollapsed();
    }
    this$0.removeView(this$0.mExpandedActionView);
    this$0.removeView(Toolbar.access$300(this$0));
    this$0.mExpandedActionView = null;
    this$0.addChildrenForExpandedActionView();
    mCurrentExpandedItem = null;
    this$0.requestLayout();
    paramm.e(false);
    return true;
  }
  
  public boolean expandItemActionView(i parami, m paramm)
  {
    Toolbar.access$200(this$0);
    if (Toolbar.access$300(this$0).getParent() != this$0) {
      this$0.addView(Toolbar.access$300(this$0));
    }
    this$0.mExpandedActionView = paramm.getActionView();
    mCurrentExpandedItem = paramm;
    if (this$0.mExpandedActionView.getParent() != this$0)
    {
      parami = this$0.generateDefaultLayoutParams();
      gravity = (0x800003 | Toolbar.access$400(this$0) & 0x70);
      mViewType = 2;
      this$0.mExpandedActionView.setLayoutParams(parami);
      this$0.addView(this$0.mExpandedActionView);
    }
    this$0.removeChildrenForExpandedActionView();
    this$0.requestLayout();
    paramm.e(true);
    if ((this$0.mExpandedActionView instanceof CollapsibleActionView)) {
      ((CollapsibleActionView)this$0.mExpandedActionView).onActionViewExpanded();
    }
    return true;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return 0;
  }
  
  public z getMenuView(ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public void initForMenu(Context paramContext, i parami)
  {
    if ((mMenu != null) && (mCurrentExpandedItem != null)) {
      mMenu.d(mCurrentExpandedItem);
    }
    mMenu = parami;
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean onSubMenuSelected(ad paramad)
  {
    return false;
  }
  
  public void setCallback(y paramy) {}
  
  public void updateMenuView(boolean paramBoolean)
  {
    int k = 0;
    int j;
    int m;
    int i;
    if (mCurrentExpandedItem != null)
    {
      j = k;
      if (mMenu != null)
      {
        m = mMenu.size();
        i = 0;
      }
    }
    for (;;)
    {
      j = k;
      if (i < m)
      {
        if (mMenu.getItem(i) == mCurrentExpandedItem) {
          j = 1;
        }
      }
      else
      {
        if (j == 0) {
          collapseItemActionView(mMenu, mCurrentExpandedItem);
        }
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.Toolbar.ExpandedActionViewMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */