package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.k;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.y;
import android.support.v7.view.menu.z;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends LinearLayoutCompat
  implements k, z
{
  static final int GENERATED_ITEM_PADDING = 4;
  static final int MIN_CELL_SIZE = 56;
  private static final String TAG = "ActionMenuView";
  private y mActionMenuPresenterCallback;
  private boolean mFormatItems;
  private int mFormatItemsWidth;
  private int mGeneratedItemPadding;
  private i mMenu;
  private j mMenuBuilderCallback;
  private int mMinCellSize;
  private ActionMenuView.OnMenuItemClickListener mOnMenuItemClickListener;
  private Context mPopupContext;
  private int mPopupTheme;
  private ActionMenuPresenter mPresenter;
  private boolean mReserveOverflow;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = getResourcesgetDisplayMetricsdensity;
    mMinCellSize = ((int)(56.0F * f));
    mGeneratedItemPadding = ((int)(f * 4.0F));
    mPopupContext = paramContext;
    mPopupTheme = 0;
  }
  
  static int measureChildForCells(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.a())) {
        break label184;
      }
      paramInt4 = 1;
      label57:
      if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2))) {
        break label190;
      }
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), i);
      int j = paramView.getMeasuredWidth();
      paramInt3 = j / paramInt1;
      paramInt2 = paramInt3;
      if (j % paramInt1 != 0) {
        paramInt2 = paramInt3 + 1;
      }
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2) {}
      }
    }
    label184:
    label190:
    for (paramInt3 = 2;; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!isOverflowButton)
      {
        bool1 = bool2;
        if (paramInt4 != 0) {
          bool1 = true;
        }
      }
      expandable = bool1;
      cellsUsed = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), i);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  private void onMeasureExactFormat(int paramInt1, int paramInt2)
  {
    int i7 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i6 = View.MeasureSpec.getSize(paramInt2);
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int i4 = getPaddingTop() + getPaddingBottom();
    int i8 = getChildMeasureSpec(paramInt2, i4, -2);
    int i9 = paramInt1 - (i + j);
    paramInt1 = i9 / mMinCellSize;
    paramInt2 = mMinCellSize;
    if (paramInt1 == 0)
    {
      setMeasuredDimension(i9, 0);
      return;
    }
    int i10 = mMinCellSize + i9 % paramInt2 / paramInt1;
    i = 0;
    int n = 0;
    int m = 0;
    int i1 = 0;
    int k = 0;
    long l1 = 0L;
    int i11 = getChildCount();
    int i2 = 0;
    Object localObject;
    boolean bool;
    ActionMenuView.LayoutParams localLayoutParams;
    label274:
    label291:
    int i5;
    for (;;)
    {
      if (i2 < i11)
      {
        localObject = getChildAt(i2);
        if (((View)localObject).getVisibility() == 8)
        {
          paramInt2 = n;
          j = paramInt1;
          paramInt1 = i1;
          i2 += 1;
          i1 = paramInt1;
          paramInt1 = j;
          n = paramInt2;
        }
        else
        {
          bool = localObject instanceof ActionMenuItemView;
          i1 += 1;
          if (bool) {
            ((View)localObject).setPadding(mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
          }
          localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
          expanded = false;
          extraPixels = 0;
          cellsUsed = 0;
          expandable = false;
          leftMargin = 0;
          rightMargin = 0;
          if ((bool) && (((ActionMenuItemView)localObject).a()))
          {
            bool = true;
            preventEdgeOffset = bool;
            if (!isOverflowButton) {
              break label402;
            }
            paramInt2 = 1;
            i5 = measureChildForCells((View)localObject, i10, paramInt2, i8, i4);
            n = Math.max(n, i5);
            if (!expandable) {
              break label1233;
            }
          }
        }
      }
    }
    label402:
    label448:
    label485:
    label512:
    label571:
    label597:
    label728:
    label744:
    label777:
    label792:
    label935:
    label1072:
    label1076:
    label1175:
    label1181:
    label1184:
    label1195:
    label1233:
    for (paramInt2 = m + 1;; paramInt2 = m)
    {
      if (isOverflowButton) {}
      for (j = 1;; j = k)
      {
        int i3 = paramInt1 - i5;
        i = Math.max(i, ((View)localObject).getMeasuredHeight());
        if (i5 == 1)
        {
          long l2 = 1 << i2;
          m = paramInt2;
          l1 = l2 | l1;
          paramInt2 = n;
          paramInt1 = i1;
          k = j;
          j = i3;
          break;
          bool = false;
          break label274;
          paramInt2 = paramInt1;
          break label291;
          if ((k != 0) && (i1 == 2))
          {
            i3 = 1;
            j = 0;
            i2 = paramInt1;
            if ((m <= 0) || (i2 <= 0)) {
              break label1195;
            }
            paramInt1 = Integer.MAX_VALUE;
            l2 = 0L;
            paramInt2 = 0;
            i4 = 0;
            if (i4 >= i11) {
              break label571;
            }
            localObject = (ActionMenuView.LayoutParams)getChildAt(i4).getLayoutParams();
            if (expandable) {
              break label512;
            }
            i5 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i5;
          }
          for (;;)
          {
            i5 = i4 + 1;
            i4 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i4;
            i4 = i5;
            break label448;
            i3 = 0;
            break;
            if (cellsUsed < paramInt1)
            {
              paramInt2 = cellsUsed;
              l2 = 1 << i4;
              paramInt1 = 1;
            }
            else
            {
              if (cellsUsed != paramInt1) {
                break label1184;
              }
              l2 |= 1 << i4;
              i5 = paramInt2 + 1;
              paramInt2 = paramInt1;
              paramInt1 = i5;
            }
          }
          l1 |= l2;
          if (paramInt2 > i2) {}
          for (;;)
          {
            float f2;
            float f1;
            if ((k == 0) && (i1 == 1))
            {
              paramInt1 = 1;
              if ((i2 <= 0) || (l1 == 0L) || ((i2 >= i1 - 1) && (paramInt1 == 0) && (n <= 1))) {
                break label1072;
              }
              float f3 = Long.bitCount(l1);
              f2 = f3;
              if (paramInt1 != 0) {
                break label1175;
              }
              f1 = f3;
              if ((1L & l1) != 0L)
              {
                f1 = f3;
                if (!getChildAt0getLayoutParamspreventEdgeOffset) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i11 - 1 & l1) == 0L) {
                break label1175;
              }
              f2 = f1;
              if (getChildAt1getLayoutParamspreventEdgeOffset) {
                break label1175;
              }
              f1 -= 0.5F;
              if (f1 <= 0.0F) {
                break label935;
              }
              paramInt2 = (int)(i2 * i10 / f1);
              k = 0;
              paramInt1 = j;
              j = k;
              for (;;)
              {
                k = paramInt1;
                if (j >= i11) {
                  break label1076;
                }
                if ((1 << j & l1) != 0L) {
                  break;
                }
                j += 1;
              }
              j = 0;
              paramInt2 = i2;
              if (j < i11)
              {
                localObject = getChildAt(j);
                localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                if ((1 << j & l2) == 0L)
                {
                  if (cellsUsed != paramInt1 + 1) {
                    break label1181;
                  }
                  l1 |= 1 << j;
                }
              }
            }
            for (;;)
            {
              j += 1;
              break label792;
              if ((i3 != 0) && (preventEdgeOffset) && (paramInt2 == 1)) {
                ((View)localObject).setPadding(mGeneratedItemPadding + i10, 0, mGeneratedItemPadding, 0);
              }
              cellsUsed += 1;
              expanded = true;
              paramInt2 -= 1;
              continue;
              j = 1;
              i2 = paramInt2;
              break;
              paramInt1 = 0;
              break label597;
              paramInt2 = 0;
              break label744;
              localObject = getChildAt(j);
              localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
              if ((localObject instanceof ActionMenuItemView))
              {
                extraPixels = paramInt2;
                expanded = true;
                if ((j == 0) && (!preventEdgeOffset)) {
                  leftMargin = (-paramInt2 / 2);
                }
                paramInt1 = 1;
                break label777;
              }
              if (isOverflowButton)
              {
                extraPixels = paramInt2;
                expanded = true;
                rightMargin = (-paramInt2 / 2);
                paramInt1 = 1;
                break label777;
              }
              if (j != 0) {
                leftMargin = (paramInt2 / 2);
              }
              if (j != i11 - 1) {
                rightMargin = (paramInt2 / 2);
              }
              break label777;
              k = j;
              if (k != 0)
              {
                paramInt1 = 0;
                if (paramInt1 < i11)
                {
                  localObject = getChildAt(paramInt1);
                  localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                  if (!expanded) {}
                  for (;;)
                  {
                    paramInt1 += 1;
                    break;
                    paramInt2 = cellsUsed;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(extraPixels + paramInt2 * i10, 1073741824), i8);
                  }
                }
              }
              if (i7 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i9, i);
                return;
                i = i6;
              }
              f1 = f2;
              break label728;
            }
            i5 = paramInt1;
            paramInt1 = paramInt2;
            paramInt2 = i5;
            break label485;
          }
        }
        paramInt1 = i1;
        k = n;
        n = i3;
        m = paramInt2;
        paramInt2 = k;
        k = j;
        j = n;
        break;
      }
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof ActionMenuView.LayoutParams));
  }
  
  public void dismissPopupMenus()
  {
    if (mPresenter != null) {
      mPresenter.dismissPopupMenus();
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  protected ActionMenuView.LayoutParams generateDefaultLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams(-2, -2);
    gravity = 16;
    return localLayoutParams;
  }
  
  public ActionMenuView.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionMenuView.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ActionMenuView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof ActionMenuView.LayoutParams)) {}
      for (paramLayoutParams = new ActionMenuView.LayoutParams((ActionMenuView.LayoutParams)paramLayoutParams);; paramLayoutParams = new ActionMenuView.LayoutParams(paramLayoutParams))
      {
        if (gravity <= 0) {
          gravity = 16;
        }
        return paramLayoutParams;
      }
    }
    return generateDefaultLayoutParams();
  }
  
  public ActionMenuView.LayoutParams generateOverflowButtonLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = generateDefaultLayoutParams();
    isOverflowButton = true;
    return localLayoutParams;
  }
  
  public Menu getMenu()
  {
    ActionMenuPresenter localActionMenuPresenter;
    if (mMenu == null)
    {
      localObject = getContext();
      mMenu = new i((Context)localObject);
      mMenu.a(new ActionMenuView.MenuBuilderCallback(this, null));
      mPresenter = new ActionMenuPresenter((Context)localObject);
      mPresenter.setReserveOverflow(true);
      localActionMenuPresenter = mPresenter;
      if (mActionMenuPresenterCallback == null) {
        break label110;
      }
    }
    label110:
    for (Object localObject = mActionMenuPresenterCallback;; localObject = new ActionMenuView.ActionMenuPresenterCallback(this, null))
    {
      localActionMenuPresenter.setCallback((y)localObject);
      mMenu.a(mPresenter, mPopupContext);
      mPresenter.setMenuView(this);
      return mMenu;
    }
  }
  
  public Drawable getOverflowIcon()
  {
    getMenu();
    return mPresenter.getOverflowIcon();
  }
  
  public int getPopupTheme()
  {
    return mPopupTheme;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  protected boolean hasSupportDividerBeforeChildAt(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof ActionMenuView.ActionMenuChildView)) {
        bool1 = false | ((ActionMenuView.ActionMenuChildView)localView1).needsDividerAfter();
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof ActionMenuView.ActionMenuChildView))) {
      return ((ActionMenuView.ActionMenuChildView)localView2).needsDividerBefore() | bool1;
    }
    return bool1;
  }
  
  public boolean hideOverflowMenu()
  {
    return (mPresenter != null) && (mPresenter.hideOverflowMenu());
  }
  
  public void initialize(i parami)
  {
    mMenu = parami;
  }
  
  public boolean invokeItem(m paramm)
  {
    return mMenu.a(paramm, 0);
  }
  
  public boolean isOverflowMenuShowPending()
  {
    return (mPresenter != null) && (mPresenter.isOverflowMenuShowPending());
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (mPresenter != null) && (mPresenter.isOverflowMenuShowing());
  }
  
  public boolean isOverflowReserved()
  {
    return mReserveOverflow;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    if (mPresenter != null)
    {
      mPresenter.updateMenuView(false);
      if (mPresenter.isOverflowMenuShowing())
      {
        mPresenter.hideOverflowMenu();
        mPresenter.showOverflowMenu();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    dismissPopupMenus();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!mFormatItems)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i2 = getChildCount();
    int i1 = (paramInt4 - paramInt2) / 2;
    int i3 = getDividerWidth();
    paramInt4 = 0;
    paramInt2 = 0;
    int j = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int i = 0;
    paramBoolean = ViewUtils.isLayoutRtl(this);
    int k = 0;
    View localView;
    ActionMenuView.LayoutParams localLayoutParams;
    if (k < i2)
    {
      localView = getChildAt(k);
      int m;
      int n;
      if (localView.getVisibility() == 8)
      {
        m = i;
        n = j;
        j = paramInt4;
        i = paramInt2;
        paramInt4 = n;
        paramInt2 = m;
      }
      for (;;)
      {
        n = k + 1;
        k = j;
        m = i;
        i = paramInt2;
        j = paramInt4;
        paramInt2 = m;
        paramInt4 = k;
        k = n;
        break;
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
        if (isOverflowButton)
        {
          m = localView.getMeasuredWidth();
          i = m;
          if (hasSupportDividerBeforeChildAt(k)) {
            i = m + i3;
          }
          int i4 = localView.getMeasuredHeight();
          if (paramBoolean)
          {
            m = getPaddingLeft();
            m = leftMargin + m;
            n = m + i;
          }
          for (;;)
          {
            int i5 = i1 - i4 / 2;
            localView.layout(m, i5, n, i4 + i5);
            m = j - i;
            n = 1;
            i = paramInt2;
            j = paramInt4;
            paramInt2 = n;
            paramInt4 = m;
            break;
            n = getWidth() - getPaddingRight() - rightMargin;
            m = n - i;
          }
        }
        n = localView.getMeasuredWidth() + leftMargin + rightMargin;
        m = paramInt4 + n;
        paramInt4 = m;
        if (hasSupportDividerBeforeChildAt(k)) {
          paramInt4 = m + i3;
        }
        m = j - n;
        n = paramInt2 + 1;
        j = paramInt4;
        paramInt2 = i;
        paramInt4 = m;
        i = n;
      }
    }
    if ((i2 == 1) && (i == 0))
    {
      localView = getChildAt(0);
      paramInt2 = localView.getMeasuredWidth();
      paramInt4 = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
      paramInt3 = i1 - paramInt4 / 2;
      localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
      return;
    }
    if (i != 0)
    {
      paramInt1 = 0;
      label462:
      paramInt1 = paramInt2 - paramInt1;
      if (paramInt1 <= 0) {
        break label551;
      }
      paramInt1 = j / paramInt1;
      label475:
      paramInt3 = Math.max(0, paramInt1);
      if (!paramBoolean) {
        break label621;
      }
      paramInt1 = getWidth() - getPaddingRight();
      paramInt2 = 0;
      label498:
      if (paramInt2 < i2)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
        if (localView.getVisibility() == 8) {
          break label744;
        }
        if (!isOverflowButton) {
          break label556;
        }
      }
    }
    label551:
    label556:
    label621:
    label628:
    label676:
    label741:
    label744:
    for (;;)
    {
      paramInt2 += 1;
      break label498;
      break;
      paramInt1 = 1;
      break label462;
      paramInt1 = 0;
      break label475;
      paramInt1 -= rightMargin;
      paramInt4 = localView.getMeasuredWidth();
      i = localView.getMeasuredHeight();
      j = i1 - i / 2;
      localView.layout(paramInt1 - paramInt4, j, paramInt1, i + j);
      paramInt1 -= leftMargin + paramInt4 + paramInt3;
      continue;
      paramInt1 = getPaddingLeft();
      paramInt2 = 0;
      if (paramInt2 < i2)
      {
        localView = getChildAt(paramInt2);
        localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
        if (localView.getVisibility() == 8) {
          break label741;
        }
        if (!isOverflowButton) {
          break label676;
        }
      }
      for (;;)
      {
        paramInt2 += 1;
        break label628;
        break;
        paramInt1 += leftMargin;
        paramInt4 = localView.getMeasuredWidth();
        i = localView.getMeasuredHeight();
        j = i1 - i / 2;
        localView.layout(paramInt1, j, paramInt1 + paramInt4, i + j);
        paramInt1 = rightMargin + paramInt4 + paramInt3 + paramInt1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = mFormatItems;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    int j;
    for (boolean bool1 = true;; bool1 = false)
    {
      mFormatItems = bool1;
      if (bool2 != mFormatItems) {
        mFormatItemsWidth = 0;
      }
      i = View.MeasureSpec.getSize(paramInt1);
      if ((mFormatItems) && (mMenu != null) && (i != mFormatItemsWidth))
      {
        mFormatItemsWidth = i;
        mMenu.a(true);
      }
      j = getChildCount();
      if ((!mFormatItems) || (j <= 0)) {
        break;
      }
      onMeasureExactFormat(paramInt1, paramInt2);
      return;
    }
    int i = 0;
    while (i < j)
    {
      ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)getChildAt(i).getLayoutParams();
      rightMargin = 0;
      leftMargin = 0;
      i += 1;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public i peekMenu()
  {
    return mMenu;
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    mPresenter.setExpandedActionViewsExclusive(paramBoolean);
  }
  
  public void setMenuCallbacks(y paramy, j paramj)
  {
    mActionMenuPresenterCallback = paramy;
    mMenuBuilderCallback = paramj;
  }
  
  public void setOnMenuItemClickListener(ActionMenuView.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    mOnMenuItemClickListener = paramOnMenuItemClickListener;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    getMenu();
    mPresenter.setOverflowIcon(paramDrawable);
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    mReserveOverflow = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (mPopupTheme != paramInt)
    {
      mPopupTheme = paramInt;
      if (paramInt == 0) {
        mPopupContext = getContext();
      }
    }
    else
    {
      return;
    }
    mPopupContext = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    mPresenter = paramActionMenuPresenter;
    mPresenter.setMenuView(this);
  }
  
  public boolean showOverflowMenu()
  {
    return (mPresenter != null) && (mPresenter.showOverflowMenu());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */