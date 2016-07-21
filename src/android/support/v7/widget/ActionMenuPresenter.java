package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.n;
import android.support.v4.view.o;
import android.support.v7.appcompat.R.integer;
import android.support.v7.appcompat.R.layout;
import android.support.v7.transition.ActionBarTransition;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.aa;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.d;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.v;
import android.support.v7.view.menu.z;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

class ActionMenuPresenter
  extends d
  implements o
{
  private static final String TAG = "ActionMenuPresenter";
  private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
  private ActionMenuPresenter.ActionButtonSubmenu mActionButtonPopup;
  private int mActionItemWidthLimit;
  private boolean mExpandedActionViewsExclusive;
  private int mMaxItems;
  private boolean mMaxItemsSet;
  private int mMinCellSize;
  int mOpenSubMenuId;
  private ActionMenuPresenter.OverflowMenuButton mOverflowButton;
  private ActionMenuPresenter.OverflowPopup mOverflowPopup;
  private Drawable mPendingOverflowIcon;
  private boolean mPendingOverflowIconSet;
  private ActionMenuPresenter.ActionMenuPopupCallback mPopupCallback;
  final ActionMenuPresenter.PopupPresenterCallback mPopupPresenterCallback = new ActionMenuPresenter.PopupPresenterCallback(this, null);
  private ActionMenuPresenter.OpenOverflowRunnable mPostedOpenRunnable;
  private boolean mReserveOverflow;
  private boolean mReserveOverflowSet;
  private View mScrapActionButtonView;
  private boolean mStrictWidthLimit;
  private int mWidthLimit;
  private boolean mWidthLimitSet;
  
  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
  }
  
  private View findViewForItem(MenuItem paramMenuItem)
  {
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    Object localObject;
    if (localViewGroup == null)
    {
      localObject = null;
      return (View)localObject;
    }
    int j = localViewGroup.getChildCount();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label74;
      }
      View localView = localViewGroup.getChildAt(i);
      if ((localView instanceof aa))
      {
        localObject = localView;
        if (((aa)localView).getItemData() == paramMenuItem) {
          break;
        }
      }
      i += 1;
    }
    label74:
    return null;
  }
  
  public void bindItemView(m paramm, aa paramaa)
  {
    paramaa.a(paramm, 0);
    paramm = (ActionMenuView)mMenuView;
    paramaa = (ActionMenuItemView)paramaa;
    paramaa.setItemInvoker(paramm);
    if (mPopupCallback == null) {
      mPopupCallback = new ActionMenuPresenter.ActionMenuPopupCallback(this, null);
    }
    paramaa.setPopupCallback(mPopupCallback);
  }
  
  public boolean dismissPopupMenus()
  {
    return hideOverflowMenu() | hideSubMenus();
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == mOverflowButton) {
      return false;
    }
    return super.filterLeftoverView(paramViewGroup, paramInt);
  }
  
  public boolean flagActionItems()
  {
    ArrayList localArrayList = mMenu.i();
    int i4 = localArrayList.size();
    int i = mMaxItems;
    int i3 = mActionItemWidthLimit;
    int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    int k = 0;
    int m = 0;
    int n = 0;
    int j = 0;
    Object localObject1;
    if (j < i4)
    {
      localObject1 = (m)localArrayList.get(j);
      if (((m)localObject1).l())
      {
        k += 1;
        label82:
        if ((!mExpandedActionViewsExclusive) || (!((m)localObject1).isActionViewExpanded())) {
          break label820;
        }
        i = 0;
      }
    }
    label304:
    label445:
    label505:
    label510:
    label549:
    label632:
    label644:
    label649:
    label797:
    label800:
    label811:
    label820:
    for (;;)
    {
      j += 1;
      break;
      if (((m)localObject1).k())
      {
        m += 1;
        break label82;
      }
      n = 1;
      break label82;
      j = i;
      if (mReserveOverflow) {
        if (n == 0)
        {
          j = i;
          if (k + m <= i) {}
        }
        else
        {
          j = i - 1;
        }
      }
      j -= k;
      localObject1 = mActionButtonGroups;
      ((SparseBooleanArray)localObject1).clear();
      i = 0;
      if (mStrictWidthLimit)
      {
        i = i3 / mMinCellSize;
        k = mMinCellSize;
        m = mMinCellSize;
      }
      for (int i1 = i3 % k / i + m;; i1 = 0)
      {
        int i2 = 0;
        n = 0;
        k = i;
        i = j;
        m = i3;
        j = n;
        m localm;
        Object localObject2;
        if (i2 < i4)
        {
          localm = (m)localArrayList.get(i2);
          if (localm.l())
          {
            localObject2 = getItemView(localm, mScrapActionButtonView, localViewGroup);
            if (mScrapActionButtonView == null) {
              mScrapActionButtonView = ((View)localObject2);
            }
            if (mStrictWidthLimit)
            {
              n = k - ActionMenuView.measureChildForCells((View)localObject2, i1, k, i5, 0);
              k = ((View)localObject2).getMeasuredWidth();
              if (j != 0) {
                break label811;
              }
              j = k;
            }
          }
        }
        for (;;)
        {
          i3 = localm.getGroupId();
          if (i3 != 0) {
            ((SparseBooleanArray)localObject1).put(i3, true);
          }
          localm.d(true);
          m -= k;
          k = i;
          i = m;
          i3 = i2 + 1;
          i2 = k;
          k = n;
          m = i;
          i = i2;
          i2 = i3;
          break;
          ((View)localObject2).measure(i5, i5);
          n = k;
          break label304;
          int i6;
          boolean bool;
          int i7;
          if (localm.k())
          {
            i6 = localm.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i6);
            if (((i > 0) || (bool)) && (m > 0) && ((!mStrictWidthLimit) || (k > 0)))
            {
              i7 = 1;
              if (i7 == 0) {
                break label800;
              }
              localObject2 = getItemView(localm, mScrapActionButtonView, localViewGroup);
              if (mScrapActionButtonView == null) {
                mScrapActionButtonView = ((View)localObject2);
              }
              if (!mStrictWidthLimit) {
                break label632;
              }
              n = ActionMenuView.measureChildForCells((View)localObject2, i1, k, i5, 0);
              if (n != 0) {
                break label797;
              }
              i7 = 0;
              k -= n;
              n = ((View)localObject2).getMeasuredWidth();
              i3 = m - n;
              m = j;
              if (j == 0) {
                m = n;
              }
              if (!mStrictWidthLimit) {
                break label649;
              }
              if (i3 < 0) {
                break label644;
              }
              j = 1;
              i7 &= j;
              j = m;
              n = k;
              m = i3;
              k = j;
              j = n;
            }
          }
          for (;;)
          {
            if ((i7 != 0) && (i6 != 0)) {
              ((SparseBooleanArray)localObject1).put(i6, true);
            }
            for (;;)
            {
              n = i;
              if (i7 != 0) {
                n = i - 1;
              }
              localm.d(i7);
              i = m;
              m = n;
              n = j;
              j = k;
              k = m;
              break;
              int i8 = 0;
              break label445;
              ((View)localObject2).measure(i5, i5);
              break label510;
              j = 0;
              break label549;
              if (i3 + m > 0) {}
              for (j = 1;; j = 0)
              {
                i8 &= j;
                j = k;
                k = m;
                m = i3;
                break;
              }
              if (bool)
              {
                ((SparseBooleanArray)localObject1).put(i6, false);
                i3 = 0;
                for (;;)
                {
                  if (i3 < i2)
                  {
                    localObject2 = (m)localArrayList.get(i3);
                    n = i;
                    if (((m)localObject2).getGroupId() == i6)
                    {
                      n = i;
                      if (((m)localObject2).j()) {
                        n = i + 1;
                      }
                      ((m)localObject2).d(false);
                    }
                    i3 += 1;
                    i = n;
                    continue;
                    localm.d(false);
                    n = m;
                    m = i;
                    i = n;
                    n = k;
                    k = m;
                    break;
                    return true;
                  }
                }
              }
            }
            break label505;
            n = j;
            j = k;
            k = n;
          }
        }
      }
    }
  }
  
  public View getItemView(m paramm, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramm.getActionView();
    if ((localView == null) || (paramm.n())) {
      localView = super.getItemView(paramm, paramView, paramViewGroup);
    }
    if (paramm.isActionViewExpanded()) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      paramm = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramm.checkLayoutParams(paramView)) {
        localView.setLayoutParams(paramm.generateLayoutParams(paramView));
      }
      return localView;
    }
  }
  
  public z getMenuView(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getMenuView(paramViewGroup);
    ((ActionMenuView)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }
  
  public Drawable getOverflowIcon()
  {
    if (mOverflowButton != null) {
      return mOverflowButton.getDrawable();
    }
    if (mPendingOverflowIconSet) {
      return mPendingOverflowIcon;
    }
    return null;
  }
  
  public boolean hideOverflowMenu()
  {
    if ((mPostedOpenRunnable != null) && (mMenuView != null))
    {
      ((View)mMenuView).removeCallbacks(mPostedOpenRunnable);
      mPostedOpenRunnable = null;
      return true;
    }
    ActionMenuPresenter.OverflowPopup localOverflowPopup = mOverflowPopup;
    if (localOverflowPopup != null)
    {
      localOverflowPopup.dismiss();
      return true;
    }
    return false;
  }
  
  public boolean hideSubMenus()
  {
    if (mActionButtonPopup != null)
    {
      mActionButtonPopup.dismiss();
      return true;
    }
    return false;
  }
  
  public void initForMenu(Context paramContext, i parami)
  {
    super.initForMenu(paramContext, parami);
    parami = paramContext.getResources();
    paramContext = ActionBarPolicy.get(paramContext);
    if (!mReserveOverflowSet) {
      mReserveOverflow = paramContext.showsOverflowMenuButton();
    }
    if (!mWidthLimitSet) {
      mWidthLimit = paramContext.getEmbeddedMenuWidthLimit();
    }
    if (!mMaxItemsSet) {
      mMaxItems = paramContext.getMaxActionButtons();
    }
    int i = mWidthLimit;
    if (mReserveOverflow)
    {
      if (mOverflowButton == null)
      {
        mOverflowButton = new ActionMenuPresenter.OverflowMenuButton(this, mSystemContext);
        if (mPendingOverflowIconSet)
        {
          mOverflowButton.setImageDrawable(mPendingOverflowIcon);
          mPendingOverflowIcon = null;
          mPendingOverflowIconSet = false;
        }
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        mOverflowButton.measure(j, j);
      }
      i -= mOverflowButton.getMeasuredWidth();
    }
    for (;;)
    {
      mActionItemWidthLimit = i;
      mMinCellSize = ((int)(56.0F * getDisplayMetricsdensity));
      mScrapActionButtonView = null;
      return;
      mOverflowButton = null;
    }
  }
  
  public boolean isOverflowMenuShowPending()
  {
    return (mPostedOpenRunnable != null) || (isOverflowMenuShowing());
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (mOverflowPopup != null) && (mOverflowPopup.isShowing());
  }
  
  public boolean isOverflowReserved()
  {
    return mReserveOverflow;
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    dismissPopupMenus();
    super.onCloseMenu(parami, paramBoolean);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (!mMaxItemsSet) {
      mMaxItems = mContext.getResources().getInteger(R.integer.abc_max_action_buttons);
    }
    if (mMenu != null) {
      mMenu.a(true);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (ActionMenuPresenter.SavedState)paramParcelable;
    if (openSubMenuId > 0)
    {
      paramParcelable = mMenu.findItem(openSubMenuId);
      if (paramParcelable != null) {
        onSubMenuSelected((ad)paramParcelable.getSubMenu());
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    ActionMenuPresenter.SavedState localSavedState = new ActionMenuPresenter.SavedState();
    openSubMenuId = mOpenSubMenuId;
    return localSavedState;
  }
  
  public boolean onSubMenuSelected(ad paramad)
  {
    if (!paramad.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramad; ((ad)localObject).s() != mMenu; localObject = (ad)((ad)localObject).s()) {}
    View localView = findViewForItem(((ad)localObject).getItem());
    localObject = localView;
    if (localView == null)
    {
      if (mOverflowButton == null) {
        return false;
      }
      localObject = mOverflowButton;
    }
    mOpenSubMenuId = paramad.getItem().getItemId();
    mActionButtonPopup = new ActionMenuPresenter.ActionButtonSubmenu(this, mContext, paramad);
    mActionButtonPopup.setAnchorView((View)localObject);
    mActionButtonPopup.show();
    super.onSubMenuSelected(paramad);
    return true;
  }
  
  public void onSubUiVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.onSubMenuSelected(null);
      return;
    }
    mMenu.b(false);
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    mExpandedActionViewsExclusive = paramBoolean;
  }
  
  public void setItemLimit(int paramInt)
  {
    mMaxItems = paramInt;
    mMaxItemsSet = true;
  }
  
  public void setMenuView(ActionMenuView paramActionMenuView)
  {
    mMenuView = paramActionMenuView;
    paramActionMenuView.initialize(mMenu);
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    if (mOverflowButton != null)
    {
      mOverflowButton.setImageDrawable(paramDrawable);
      return;
    }
    mPendingOverflowIconSet = true;
    mPendingOverflowIcon = paramDrawable;
  }
  
  public void setReserveOverflow(boolean paramBoolean)
  {
    mReserveOverflow = paramBoolean;
    mReserveOverflowSet = true;
  }
  
  public void setWidthLimit(int paramInt, boolean paramBoolean)
  {
    mWidthLimit = paramInt;
    mStrictWidthLimit = paramBoolean;
    mWidthLimitSet = true;
  }
  
  public boolean shouldIncludeItem(int paramInt, m paramm)
  {
    return paramm.j();
  }
  
  public boolean showOverflowMenu()
  {
    if ((mReserveOverflow) && (!isOverflowMenuShowing()) && (mMenu != null) && (mMenuView != null) && (mPostedOpenRunnable == null) && (!mMenu.l().isEmpty()))
    {
      mPostedOpenRunnable = new ActionMenuPresenter.OpenOverflowRunnable(this, new ActionMenuPresenter.OverflowPopup(this, mContext, mMenu, mOverflowButton, true));
      ((View)mMenuView).post(mPostedOpenRunnable);
      super.onSubMenuSelected(null);
      return true;
    }
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    int j = 1;
    int k = 0;
    Object localObject = (ViewGroup)((View)mMenuView).getParent();
    if (localObject != null) {
      ActionBarTransition.beginDelayedTransition((ViewGroup)localObject);
    }
    super.updateMenuView(paramBoolean);
    ((View)mMenuView).requestLayout();
    int i;
    if (mMenu != null)
    {
      localObject = mMenu.k();
      int m = ((ArrayList)localObject).size();
      i = 0;
      while (i < m)
      {
        n localn = ((m)((ArrayList)localObject).get(i)).a();
        if (localn != null) {
          localn.setSubUiVisibilityListener(this);
        }
        i += 1;
      }
    }
    if (mMenu != null)
    {
      localObject = mMenu.l();
      i = k;
      if (mReserveOverflow)
      {
        i = k;
        if (localObject != null)
        {
          i = ((ArrayList)localObject).size();
          if (i != 1) {
            break label281;
          }
          if (((m)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            break label276;
          }
          i = 1;
        }
      }
      label170:
      if (i == 0) {
        break label295;
      }
      if (mOverflowButton == null) {
        mOverflowButton = new ActionMenuPresenter.OverflowMenuButton(this, mSystemContext);
      }
      localObject = (ViewGroup)mOverflowButton.getParent();
      if (localObject != mMenuView)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(mOverflowButton);
        }
        localObject = (ActionMenuView)mMenuView;
        ((ActionMenuView)localObject).addView(mOverflowButton, ((ActionMenuView)localObject).generateOverflowButtonLayoutParams());
      }
    }
    for (;;)
    {
      ((ActionMenuView)mMenuView).setOverflowReserved(mReserveOverflow);
      return;
      localObject = null;
      break;
      label276:
      i = 0;
      break label170;
      label281:
      if (i > 0) {}
      for (i = j;; i = 0) {
        break;
      }
      label295:
      if ((mOverflowButton != null) && (mOverflowButton.getParent() == mMenuView)) {
        ((ViewGroup)mMenuView).removeView(mOverflowButton);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */