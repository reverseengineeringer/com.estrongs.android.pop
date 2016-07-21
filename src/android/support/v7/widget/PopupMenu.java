package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.v;
import android.support.v7.view.menu.y;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnTouchListener;

public class PopupMenu
  implements j, y
{
  private View mAnchor;
  private Context mContext;
  private PopupMenu.OnDismissListener mDismissListener;
  private View.OnTouchListener mDragListener;
  private i mMenu;
  private PopupMenu.OnMenuItemClickListener mMenuItemClickListener;
  private v mPopup;
  
  public PopupMenu(Context paramContext, View paramView)
  {
    this(paramContext, paramView, 0);
  }
  
  public PopupMenu(Context paramContext, View paramView, int paramInt)
  {
    this(paramContext, paramView, paramInt, R.attr.popupMenuStyle, 0);
  }
  
  public PopupMenu(Context paramContext, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    mContext = paramContext;
    mMenu = new i(paramContext);
    mMenu.a(this);
    mAnchor = paramView;
    mPopup = new v(paramContext, mMenu, paramView, false, paramInt2, paramInt3);
    mPopup.setGravity(paramInt1);
    mPopup.setCallback(this);
  }
  
  public void dismiss()
  {
    mPopup.dismiss();
  }
  
  public View.OnTouchListener getDragToOpenListener()
  {
    if (mDragListener == null) {
      mDragListener = new PopupMenu.1(this, mAnchor);
    }
    return mDragListener;
  }
  
  public int getGravity()
  {
    return mPopup.getGravity();
  }
  
  public Menu getMenu()
  {
    return mMenu;
  }
  
  public MenuInflater getMenuInflater()
  {
    return new SupportMenuInflater(mContext);
  }
  
  public void inflate(int paramInt)
  {
    getMenuInflater().inflate(paramInt, mMenu);
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (mDismissListener != null) {
      mDismissListener.onDismiss(this);
    }
  }
  
  public void onCloseSubMenu(ad paramad) {}
  
  public boolean onMenuItemSelected(i parami, MenuItem paramMenuItem)
  {
    if (mMenuItemClickListener != null) {
      return mMenuItemClickListener.onMenuItemClick(paramMenuItem);
    }
    return false;
  }
  
  public void onMenuModeChange(i parami) {}
  
  public boolean onOpenSubMenu(i parami)
  {
    boolean bool = true;
    if (parami == null) {
      bool = false;
    }
    while (!parami.hasVisibleItems()) {
      return bool;
    }
    new v(mContext, parami, mAnchor).show();
    return true;
  }
  
  public void setGravity(int paramInt)
  {
    mPopup.setGravity(paramInt);
  }
  
  public void setOnDismissListener(PopupMenu.OnDismissListener paramOnDismissListener)
  {
    mDismissListener = paramOnDismissListener;
  }
  
  public void setOnMenuItemClickListener(PopupMenu.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    mMenuItemClickListener = paramOnMenuItemClickListener;
  }
  
  public void show()
  {
    mPopup.show();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.PopupMenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */