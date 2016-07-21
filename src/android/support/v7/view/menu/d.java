package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.cn;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class d
  implements x
{
  private y mCallback;
  protected Context mContext;
  private int mId;
  protected LayoutInflater mInflater;
  private int mItemLayoutRes;
  protected i mMenu;
  private int mMenuLayoutRes;
  protected z mMenuView;
  protected Context mSystemContext;
  protected LayoutInflater mSystemInflater;
  
  public d(Context paramContext, int paramInt1, int paramInt2)
  {
    mSystemContext = paramContext;
    mSystemInflater = LayoutInflater.from(paramContext);
    mMenuLayoutRes = paramInt1;
    mItemLayoutRes = paramInt2;
  }
  
  protected void addItemView(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)mMenuView).addView(paramView, paramInt);
  }
  
  public abstract void bindItemView(m paramm, aa paramaa);
  
  public boolean collapseItemActionView(i parami, m paramm)
  {
    return false;
  }
  
  public aa createItemView(ViewGroup paramViewGroup)
  {
    return (aa)mSystemInflater.inflate(mItemLayoutRes, paramViewGroup, false);
  }
  
  public boolean expandItemActionView(i parami, m paramm)
  {
    return false;
  }
  
  protected boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public y getCallback()
  {
    return mCallback;
  }
  
  public int getId()
  {
    return mId;
  }
  
  public View getItemView(m paramm, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof aa)) {}
    for (paramView = (aa)paramView;; paramView = createItemView(paramViewGroup))
    {
      bindItemView(paramm, paramView);
      return (View)paramView;
    }
  }
  
  public z getMenuView(ViewGroup paramViewGroup)
  {
    if (mMenuView == null)
    {
      mMenuView = ((z)mSystemInflater.inflate(mMenuLayoutRes, paramViewGroup, false));
      mMenuView.initialize(mMenu);
      updateMenuView(true);
    }
    return mMenuView;
  }
  
  public void initForMenu(Context paramContext, i parami)
  {
    mContext = paramContext;
    mInflater = LayoutInflater.from(mContext);
    mMenu = parami;
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (mCallback != null) {
      mCallback.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public boolean onSubMenuSelected(ad paramad)
  {
    if (mCallback != null) {
      return mCallback.onOpenSubMenu(paramad);
    }
    return false;
  }
  
  public void setCallback(y paramy)
  {
    mCallback = paramy;
  }
  
  public void setId(int paramInt)
  {
    mId = paramInt;
  }
  
  public boolean shouldIncludeItem(int paramInt, m paramm)
  {
    return true;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    if (localViewGroup == null) {}
    label198:
    label204:
    for (;;)
    {
      return;
      int j;
      if (mMenu != null)
      {
        mMenu.j();
        ArrayList localArrayList = mMenu.i();
        int m = localArrayList.size();
        int k = 0;
        int i = 0;
        j = i;
        if (k < m)
        {
          m localm2 = (m)localArrayList.get(k);
          if (!shouldIncludeItem(i, localm2)) {
            break label198;
          }
          View localView1 = localViewGroup.getChildAt(i);
          if ((localView1 instanceof aa)) {}
          for (m localm1 = ((aa)localView1).getItemData();; localm1 = null)
          {
            View localView2 = getItemView(localm2, localView1, localViewGroup);
            if (localm2 != localm1)
            {
              localView2.setPressed(false);
              cn.A(localView2);
            }
            if (localView2 != localView1) {
              addItemView(localView2, i);
            }
            i += 1;
            k += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (j >= localViewGroup.getChildCount()) {
          break label204;
        }
        if (!filterLeftoverView(localViewGroup, j))
        {
          j += 1;
          continue;
          break;
          j = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */