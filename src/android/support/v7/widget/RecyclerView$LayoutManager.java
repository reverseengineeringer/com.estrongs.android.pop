package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.a.a;
import android.support.v4.view.a.am;
import android.support.v4.view.a.g;
import android.support.v4.view.a.r;
import android.support.v4.view.a.s;
import android.support.v4.view.cn;
import android.support.v7.recyclerview.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

public abstract class RecyclerView$LayoutManager
{
  private boolean mAutoMeasure = false;
  ChildHelper mChildHelper;
  private int mHeightSpec;
  boolean mIsAttachedToWindow = false;
  private boolean mMeasurementCacheEnabled = true;
  RecyclerView mRecyclerView;
  private boolean mRequestedSimpleAnimations = false;
  RecyclerView.SmoothScroller mSmoothScroller;
  private int mWidthSpec;
  
  private void addViewInt(View paramView, int paramInt, boolean paramBoolean)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    RecyclerView.LayoutParams localLayoutParams;
    if ((paramBoolean) || (localViewHolder.isRemoved()))
    {
      mRecyclerView.mViewInfoStore.addToDisappearedInLayout(localViewHolder);
      localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      if ((!localViewHolder.wasReturnedFromScrap()) && (!localViewHolder.isScrap())) {
        break label128;
      }
      if (!localViewHolder.isScrap()) {
        break label120;
      }
      localViewHolder.unScrap();
      label68:
      mChildHelper.attachViewToParent(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    for (;;)
    {
      if (mPendingInvalidate)
      {
        itemView.invalidate();
        mPendingInvalidate = false;
      }
      return;
      mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(localViewHolder);
      break;
      label120:
      localViewHolder.clearReturnedFromScrapFlag();
      break label68;
      label128:
      if (paramView.getParent() == mRecyclerView)
      {
        int j = mChildHelper.indexOfChild(paramView);
        int i = paramInt;
        if (paramInt == -1) {
          i = mChildHelper.getChildCount();
        }
        if (j == -1) {
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + mRecyclerView.indexOfChild(paramView));
        }
        if (j != i) {
          mRecyclerView.mLayout.moveView(j, i);
        }
      }
      else
      {
        mChildHelper.addView(paramView, paramInt, false);
        mInsetsDirty = true;
        if ((mSmoothScroller != null) && (mSmoothScroller.isRunning())) {
          mSmoothScroller.onChildAttachedToWindow(paramView);
        }
      }
    }
  }
  
  public static int chooseSize(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = i;
    switch (j)
    {
    default: 
      paramInt1 = Math.max(paramInt2, paramInt3);
    case 1073741824: 
      return paramInt1;
    }
    return Math.min(i, Math.max(paramInt2, paramInt3));
  }
  
  private void detachViewInternal(int paramInt, View paramView)
  {
    mChildHelper.detachViewFromParent(paramInt);
  }
  
  public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int j = 0;
    int k = 0;
    int i = Math.max(0, paramInt1 - paramInt3);
    if (paramBoolean) {
      if (paramInt4 >= 0)
      {
        paramInt1 = 1073741824;
        paramInt3 = paramInt4;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt3, paramInt1);
      if (paramInt4 == -1)
      {
        switch (paramInt2)
        {
        default: 
          paramInt2 = 0;
          paramInt1 = j;
        }
        for (;;)
        {
          paramInt3 = paramInt1;
          paramInt1 = paramInt2;
          break;
          paramInt1 = i;
          continue;
          paramInt2 = 0;
          paramInt1 = j;
        }
      }
      if (paramInt4 == -2)
      {
        paramInt3 = 0;
        paramInt1 = k;
        continue;
        if (paramInt4 >= 0)
        {
          paramInt1 = 1073741824;
          paramInt3 = paramInt4;
          continue;
        }
        if (paramInt4 == -1)
        {
          paramInt1 = paramInt2;
          paramInt3 = i;
          continue;
        }
        if (paramInt4 == -2)
        {
          if (paramInt2 != Integer.MIN_VALUE)
          {
            paramInt1 = k;
            paramInt3 = i;
            if (paramInt2 != 1073741824) {
              continue;
            }
          }
          paramInt1 = Integer.MIN_VALUE;
          paramInt3 = i;
          continue;
        }
      }
      paramInt3 = 0;
      paramInt1 = k;
    }
  }
  
  @Deprecated
  public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int j = 1073741824;
    int i = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = j;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      continue;
      paramInt2 = j;
      paramInt1 = paramInt3;
      if (paramInt3 < 0) {
        if (paramInt3 == -1)
        {
          paramInt1 = i;
          paramInt2 = j;
        }
        else if (paramInt3 == -2)
        {
          paramInt2 = Integer.MIN_VALUE;
          paramInt1 = i;
        }
        else
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
      }
    }
  }
  
  public static RecyclerView.LayoutManager.Properties getProperties(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    RecyclerView.LayoutManager.Properties localProperties = new RecyclerView.LayoutManager.Properties();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt1, paramInt2);
    orientation = paramContext.getInt(R.styleable.RecyclerView_android_orientation, 1);
    spanCount = paramContext.getInt(R.styleable.RecyclerView_spanCount, 1);
    reverseLayout = paramContext.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
    stackFromEnd = paramContext.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
    paramContext.recycle();
    return localProperties;
  }
  
  private static boolean isMeasurementUpToDate(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool2 = true;
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    boolean bool1;
    if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
        switch (i)
        {
        case 0: 
        default: 
          return false;
        case -2147483648: 
          bool1 = bool2;
        }
      } while (paramInt2 >= paramInt1);
      return false;
      bool1 = bool2;
    } while (paramInt2 == paramInt1);
    return false;
  }
  
  private void onSmoothScrollerStopped(RecyclerView.SmoothScroller paramSmoothScroller)
  {
    if (mSmoothScroller == paramSmoothScroller) {
      mSmoothScroller = null;
    }
  }
  
  private void scrapOrRecycleView(RecyclerView.Recycler paramRecycler, int paramInt, View paramView)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (localViewHolder.shouldIgnore()) {
      return;
    }
    if ((localViewHolder.isInvalid()) && (!localViewHolder.isRemoved()) && (!RecyclerView.access$3100(mRecyclerView).hasStableIds()))
    {
      removeViewAt(paramInt);
      paramRecycler.recycleViewHolderInternal(localViewHolder);
      return;
    }
    detachViewAt(paramInt);
    paramRecycler.scrapView(paramView);
    mRecyclerView.mViewInfoStore.onViewDetached(localViewHolder);
  }
  
  public void addDisappearingView(View paramView)
  {
    addDisappearingView(paramView, -1);
  }
  
  public void addDisappearingView(View paramView, int paramInt)
  {
    addViewInt(paramView, paramInt, true);
  }
  
  public void addView(View paramView)
  {
    addView(paramView, -1);
  }
  
  public void addView(View paramView, int paramInt)
  {
    addViewInt(paramView, paramInt, false);
  }
  
  public void assertInLayoutOrScroll(String paramString)
  {
    if (mRecyclerView != null) {
      mRecyclerView.assertInLayoutOrScroll(paramString);
    }
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (mRecyclerView != null) {
      mRecyclerView.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  public void attachView(View paramView)
  {
    attachView(paramView, -1);
  }
  
  public void attachView(View paramView, int paramInt)
  {
    attachView(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
  }
  
  public void attachView(View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (localViewHolder.isRemoved()) {
      mRecyclerView.mViewInfoStore.addToDisappearedInLayout(localViewHolder);
    }
    for (;;)
    {
      mChildHelper.attachViewToParent(paramView, paramInt, paramLayoutParams, localViewHolder.isRemoved());
      return;
      mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(localViewHolder);
    }
  }
  
  public void calculateItemDecorationsForChild(View paramView, Rect paramRect)
  {
    if (mRecyclerView == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    paramRect.set(mRecyclerView.getItemDecorInsetsForChild(paramView));
  }
  
  public boolean canScrollHorizontally()
  {
    return false;
  }
  
  public boolean canScrollVertically()
  {
    return false;
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams != null;
  }
  
  public int computeHorizontalScrollExtent(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int computeHorizontalScrollRange(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int computeVerticalScrollExtent(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int computeVerticalScrollOffset(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int computeVerticalScrollRange(RecyclerView.State paramState)
  {
    return 0;
  }
  
  public void detachAndScrapAttachedViews(RecyclerView.Recycler paramRecycler)
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      scrapOrRecycleView(paramRecycler, i, getChildAt(i));
      i -= 1;
    }
  }
  
  public void detachAndScrapView(View paramView, RecyclerView.Recycler paramRecycler)
  {
    scrapOrRecycleView(paramRecycler, mChildHelper.indexOfChild(paramView), paramView);
  }
  
  public void detachAndScrapViewAt(int paramInt, RecyclerView.Recycler paramRecycler)
  {
    scrapOrRecycleView(paramRecycler, paramInt, getChildAt(paramInt));
  }
  
  public void detachView(View paramView)
  {
    int i = mChildHelper.indexOfChild(paramView);
    if (i >= 0) {
      detachViewInternal(i, paramView);
    }
  }
  
  public void detachViewAt(int paramInt)
  {
    detachViewInternal(paramInt, getChildAt(paramInt));
  }
  
  void dispatchAttachedToWindow(RecyclerView paramRecyclerView)
  {
    mIsAttachedToWindow = true;
    onAttachedToWindow(paramRecyclerView);
  }
  
  void dispatchDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    mIsAttachedToWindow = false;
    onDetachedFromWindow(paramRecyclerView, paramRecycler);
  }
  
  public void endAnimation(View paramView)
  {
    if (mRecyclerView.mItemAnimator != null) {
      mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(paramView));
    }
  }
  
  public View findContainingItemView(View paramView)
  {
    if (mRecyclerView == null) {}
    do
    {
      return null;
      paramView = mRecyclerView.findContainingItemView(paramView);
    } while ((paramView == null) || (mChildHelper.isHidden(paramView)));
    return paramView;
  }
  
  public View findViewByPosition(int paramInt)
  {
    int j = getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = getChildAt(i);
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(localView);
      if (localViewHolder == null) {}
      while ((localViewHolder.getLayoutPosition() != paramInt) || (localViewHolder.shouldIgnore()) || ((!mRecyclerView.mState.isPreLayout()) && (localViewHolder.isRemoved())))
      {
        i += 1;
        break;
      }
      return localView;
    }
    return null;
  }
  
  public abstract RecyclerView.LayoutParams generateDefaultLayoutParams();
  
  public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
      return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new RecyclerView.LayoutParams(paramLayoutParams);
  }
  
  public int getBaseline()
  {
    return -1;
  }
  
  public int getBottomDecorationHeight(View paramView)
  {
    return getLayoutParamsmDecorInsets.bottom;
  }
  
  public View getChildAt(int paramInt)
  {
    if (mChildHelper != null) {
      return mChildHelper.getChildAt(paramInt);
    }
    return null;
  }
  
  public int getChildCount()
  {
    if (mChildHelper != null) {
      return mChildHelper.getChildCount();
    }
    return 0;
  }
  
  public boolean getClipToPadding()
  {
    return (mRecyclerView != null) && (RecyclerView.access$5500(mRecyclerView));
  }
  
  public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if ((mRecyclerView == null) || (RecyclerView.access$3100(mRecyclerView) == null)) {}
    while (!canScrollHorizontally()) {
      return 1;
    }
    return RecyclerView.access$3100(mRecyclerView).getItemCount();
  }
  
  public int getDecoratedBottom(View paramView)
  {
    return paramView.getBottom() + getBottomDecorationHeight(paramView);
  }
  
  public int getDecoratedLeft(View paramView)
  {
    return paramView.getLeft() - getLeftDecorationWidth(paramView);
  }
  
  public int getDecoratedMeasuredHeight(View paramView)
  {
    Rect localRect = getLayoutParamsmDecorInsets;
    int i = paramView.getMeasuredHeight();
    int j = top;
    return bottom + (i + j);
  }
  
  public int getDecoratedMeasuredWidth(View paramView)
  {
    Rect localRect = getLayoutParamsmDecorInsets;
    int i = paramView.getMeasuredWidth();
    int j = left;
    return right + (i + j);
  }
  
  public int getDecoratedRight(View paramView)
  {
    return paramView.getRight() + getRightDecorationWidth(paramView);
  }
  
  public int getDecoratedTop(View paramView)
  {
    return paramView.getTop() - getTopDecorationHeight(paramView);
  }
  
  public View getFocusedChild()
  {
    if (mRecyclerView == null) {}
    View localView;
    do
    {
      return null;
      localView = mRecyclerView.getFocusedChild();
    } while ((localView == null) || (mChildHelper.isHidden(localView)));
    return localView;
  }
  
  public int getHeight()
  {
    return View.MeasureSpec.getSize(mHeightSpec);
  }
  
  public int getHeightMode()
  {
    return View.MeasureSpec.getMode(mHeightSpec);
  }
  
  public int getItemCount()
  {
    if (mRecyclerView != null) {}
    for (RecyclerView.Adapter localAdapter = mRecyclerView.getAdapter(); localAdapter != null; localAdapter = null) {
      return localAdapter.getItemCount();
    }
    return 0;
  }
  
  public int getItemViewType(View paramView)
  {
    return RecyclerView.getChildViewHolderInt(paramView).getItemViewType();
  }
  
  public int getLayoutDirection()
  {
    return cn.h(mRecyclerView);
  }
  
  public int getLeftDecorationWidth(View paramView)
  {
    return getLayoutParamsmDecorInsets.left;
  }
  
  public int getMinimumHeight()
  {
    return cn.r(mRecyclerView);
  }
  
  public int getMinimumWidth()
  {
    return cn.q(mRecyclerView);
  }
  
  public int getPaddingBottom()
  {
    if (mRecyclerView != null) {
      return mRecyclerView.getPaddingBottom();
    }
    return 0;
  }
  
  public int getPaddingEnd()
  {
    if (mRecyclerView != null) {
      return cn.n(mRecyclerView);
    }
    return 0;
  }
  
  public int getPaddingLeft()
  {
    if (mRecyclerView != null) {
      return mRecyclerView.getPaddingLeft();
    }
    return 0;
  }
  
  public int getPaddingRight()
  {
    if (mRecyclerView != null) {
      return mRecyclerView.getPaddingRight();
    }
    return 0;
  }
  
  public int getPaddingStart()
  {
    if (mRecyclerView != null) {
      return cn.m(mRecyclerView);
    }
    return 0;
  }
  
  public int getPaddingTop()
  {
    if (mRecyclerView != null) {
      return mRecyclerView.getPaddingTop();
    }
    return 0;
  }
  
  public int getPosition(View paramView)
  {
    return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
  }
  
  public int getRightDecorationWidth(View paramView)
  {
    return getLayoutParamsmDecorInsets.right;
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if ((mRecyclerView == null) || (RecyclerView.access$3100(mRecyclerView) == null)) {}
    while (!canScrollVertically()) {
      return 1;
    }
    return RecyclerView.access$3100(mRecyclerView).getItemCount();
  }
  
  public int getSelectionModeForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return 0;
  }
  
  public int getTopDecorationHeight(View paramView)
  {
    return getLayoutParamsmDecorInsets.top;
  }
  
  public int getWidth()
  {
    return View.MeasureSpec.getSize(mWidthSpec);
  }
  
  public int getWidthMode()
  {
    return View.MeasureSpec.getMode(mWidthSpec);
  }
  
  boolean hasFlexibleChildInBothOrientations()
  {
    boolean bool2 = false;
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        ViewGroup.LayoutParams localLayoutParams = getChildAt(i).getLayoutParams();
        if ((width < 0) && (height < 0)) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  public boolean hasFocus()
  {
    return (mRecyclerView != null) && (mRecyclerView.hasFocus());
  }
  
  public void ignoreView(View paramView)
  {
    if ((paramView.getParent() != mRecyclerView) || (mRecyclerView.indexOfChild(paramView) == -1)) {
      throw new IllegalArgumentException("View should be fully attached to be ignored");
    }
    paramView = RecyclerView.getChildViewHolderInt(paramView);
    paramView.addFlags(128);
    mRecyclerView.mViewInfoStore.removeViewHolder(paramView);
  }
  
  public boolean isAttachedToWindow()
  {
    return mIsAttachedToWindow;
  }
  
  public boolean isAutoMeasureEnabled()
  {
    return mAutoMeasure;
  }
  
  public boolean isFocused()
  {
    return (mRecyclerView != null) && (mRecyclerView.isFocused());
  }
  
  public boolean isLayoutHierarchical(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return false;
  }
  
  public boolean isMeasurementCacheEnabled()
  {
    return mMeasurementCacheEnabled;
  }
  
  public boolean isSmoothScrolling()
  {
    return (mSmoothScroller != null) && (mSmoothScroller.isRunning());
  }
  
  public void layoutDecorated(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = getLayoutParamsmDecorInsets;
    paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
  }
  
  public void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    Rect localRect = mRecyclerView.getItemDecorInsetsForChild(paramView);
    int k = left;
    int m = right;
    int i = top;
    int j = bottom;
    paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), k + m + paramInt1 + (getPaddingLeft() + getPaddingRight()), width, canScrollHorizontally());
    paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), j + i + paramInt2 + (getPaddingTop() + getPaddingBottom()), height, canScrollVertically());
    if (shouldMeasureChild(paramView, paramInt1, paramInt2, localLayoutParams)) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  public void measureChildWithMargins(View paramView, int paramInt1, int paramInt2)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    Rect localRect = mRecyclerView.getItemDecorInsetsForChild(paramView);
    int k = left;
    int m = right;
    int i = top;
    int j = bottom;
    paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), k + m + paramInt1 + (getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin), width, canScrollHorizontally());
    paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), j + i + paramInt2 + (getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin), height, canScrollVertically());
    if (shouldMeasureChild(paramView, paramInt1, paramInt2, localLayoutParams)) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  public void moveView(int paramInt1, int paramInt2)
  {
    View localView = getChildAt(paramInt1);
    if (localView == null) {
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
    }
    detachViewAt(paramInt1);
    attachView(localView, paramInt2);
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    if (mRecyclerView != null) {
      mRecyclerView.offsetChildrenHorizontal(paramInt);
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    if (mRecyclerView != null) {
      mRecyclerView.offsetChildrenVertical(paramInt);
    }
  }
  
  public void onAdapterChanged(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2) {}
  
  public boolean onAddFocusables(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public void onAttachedToWindow(RecyclerView paramRecyclerView) {}
  
  @Deprecated
  public void onDetachedFromWindow(RecyclerView paramRecyclerView) {}
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    onDetachedFromWindow(paramRecyclerView);
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return null;
  }
  
  public void onInitializeAccessibilityEvent(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    paramRecycler = a.a(paramAccessibilityEvent);
    if ((mRecyclerView == null) || (paramRecycler == null)) {
      return;
    }
    boolean bool1 = bool2;
    if (!cn.b(mRecyclerView, 1))
    {
      bool1 = bool2;
      if (!cn.b(mRecyclerView, -1))
      {
        bool1 = bool2;
        if (!cn.a(mRecyclerView, -1)) {
          if (!cn.a(mRecyclerView, 1)) {
            break label111;
          }
        }
      }
    }
    label111:
    for (bool1 = bool2;; bool1 = false)
    {
      paramRecycler.a(bool1);
      if (RecyclerView.access$3100(mRecyclerView) == null) {
        break;
      }
      paramRecycler.a(RecyclerView.access$3100(mRecyclerView).getItemCount());
      return;
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    onInitializeAccessibilityEvent(mRecyclerView.mRecycler, mRecyclerView.mState, paramAccessibilityEvent);
  }
  
  void onInitializeAccessibilityNodeInfo(g paramg)
  {
    onInitializeAccessibilityNodeInfo(mRecyclerView.mRecycler, mRecyclerView.mState, paramg);
  }
  
  public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, g paramg)
  {
    if ((cn.b(mRecyclerView, -1)) || (cn.a(mRecyclerView, -1)))
    {
      paramg.a(8192);
      paramg.i(true);
    }
    if ((cn.b(mRecyclerView, 1)) || (cn.a(mRecyclerView, 1)))
    {
      paramg.a(4096);
      paramg.i(true);
    }
    paramg.b(r.a(getRowCountForAccessibility(paramRecycler, paramState), getColumnCountForAccessibility(paramRecycler, paramState), isLayoutHierarchical(paramRecycler, paramState), getSelectionModeForAccessibility(paramRecycler, paramState)));
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, g paramg)
  {
    int i;
    if (canScrollVertically())
    {
      i = getPosition(paramView);
      if (!canScrollHorizontally()) {
        break label51;
      }
    }
    label51:
    for (int j = getPosition(paramView);; j = 0)
    {
      paramg.c(s.a(i, 1, j, 1, false, false));
      return;
      i = 0;
      break;
    }
  }
  
  void onInitializeAccessibilityNodeInfoForItem(View paramView, g paramg)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if ((localViewHolder != null) && (!localViewHolder.isRemoved()) && (!mChildHelper.isHidden(itemView))) {
      onInitializeAccessibilityNodeInfoForItem(mRecyclerView.mRecycler, mRecyclerView.mState, paramView, paramg);
    }
  }
  
  public View onInterceptFocusSearch(View paramView, int paramInt)
  {
    return null;
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsChanged(RecyclerView paramRecyclerView) {}
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  public void onMeasure(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
  {
    mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
  }
  
  public boolean onRequestChildFocus(RecyclerView paramRecyclerView, RecyclerView.State paramState, View paramView1, View paramView2)
  {
    return onRequestChildFocus(paramRecyclerView, paramView1, paramView2);
  }
  
  @Deprecated
  public boolean onRequestChildFocus(RecyclerView paramRecyclerView, View paramView1, View paramView2)
  {
    return (isSmoothScrolling()) || (paramRecyclerView.isComputingLayout());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
  {
    return performAccessibilityAction(mRecyclerView.mRecycler, mRecyclerView.mState, paramInt, paramBundle);
  }
  
  public boolean performAccessibilityAction(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt, Bundle paramBundle)
  {
    if (mRecyclerView == null) {}
    int i;
    do
    {
      return false;
      switch (paramInt)
      {
      default: 
        paramInt = 0;
        i = 0;
      }
    } while ((i == 0) && (paramInt == 0));
    mRecyclerView.scrollBy(paramInt, i);
    return true;
    if (cn.b(mRecyclerView, -1)) {}
    for (paramInt = -(getHeight() - getPaddingTop() - getPaddingBottom());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (cn.a(mRecyclerView, -1))
      {
        j = -(getWidth() - getPaddingLeft() - getPaddingRight());
        i = paramInt;
        paramInt = j;
        break;
        if (!cn.b(mRecyclerView, 1)) {
          break label207;
        }
      }
      label207:
      for (paramInt = getHeight() - getPaddingTop() - getPaddingBottom();; paramInt = 0)
      {
        i = paramInt;
        if (cn.a(mRecyclerView, 1))
        {
          j = getWidth();
          int k = getPaddingLeft();
          int m = getPaddingRight();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
  
  public boolean performAccessibilityActionForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, int paramInt, Bundle paramBundle)
  {
    return false;
  }
  
  boolean performAccessibilityActionForItem(View paramView, int paramInt, Bundle paramBundle)
  {
    return performAccessibilityActionForItem(mRecyclerView.mRecycler, mRecyclerView.mState, paramView, paramInt, paramBundle);
  }
  
  public void postOnAnimation(Runnable paramRunnable)
  {
    if (mRecyclerView != null) {
      cn.a(mRecyclerView, paramRunnable);
    }
  }
  
  public void removeAllViews()
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      mChildHelper.removeViewAt(i);
      i -= 1;
    }
  }
  
  public void removeAndRecycleAllViews(RecyclerView.Recycler paramRecycler)
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.getChildViewHolderInt(getChildAt(i)).shouldIgnore()) {
        removeAndRecycleViewAt(i, paramRecycler);
      }
      i -= 1;
    }
  }
  
  void removeAndRecycleScrapInt(RecyclerView.Recycler paramRecycler)
  {
    int j = paramRecycler.getScrapCount();
    int i = j - 1;
    if (i >= 0)
    {
      View localView = paramRecycler.getScrapViewAt(i);
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(localView);
      if (localViewHolder.shouldIgnore()) {}
      for (;;)
      {
        i -= 1;
        break;
        localViewHolder.setIsRecyclable(false);
        if (localViewHolder.isTmpDetached()) {
          mRecyclerView.removeDetachedView(localView, false);
        }
        if (mRecyclerView.mItemAnimator != null) {
          mRecyclerView.mItemAnimator.endAnimation(localViewHolder);
        }
        localViewHolder.setIsRecyclable(true);
        paramRecycler.quickRecycleScrapView(localView);
      }
    }
    paramRecycler.clearScrap();
    if (j > 0) {
      mRecyclerView.invalidate();
    }
  }
  
  public void removeAndRecycleView(View paramView, RecyclerView.Recycler paramRecycler)
  {
    removeView(paramView);
    paramRecycler.recycleView(paramView);
  }
  
  public void removeAndRecycleViewAt(int paramInt, RecyclerView.Recycler paramRecycler)
  {
    View localView = getChildAt(paramInt);
    removeViewAt(paramInt);
    paramRecycler.recycleView(localView);
  }
  
  public boolean removeCallbacks(Runnable paramRunnable)
  {
    if (mRecyclerView != null) {
      return mRecyclerView.removeCallbacks(paramRunnable);
    }
    return false;
  }
  
  public void removeDetachedView(View paramView)
  {
    mRecyclerView.removeDetachedView(paramView, false);
  }
  
  public void removeView(View paramView)
  {
    mChildHelper.removeView(paramView);
  }
  
  public void removeViewAt(int paramInt)
  {
    if (getChildAt(paramInt) != null) {
      mChildHelper.removeViewAt(paramInt);
    }
  }
  
  public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i2 = getPaddingLeft();
    int m = getPaddingTop();
    int i3 = getWidth() - getPaddingRight();
    int i1 = getHeight();
    int i6 = getPaddingBottom();
    int i4 = paramView.getLeft() + left - paramView.getScrollX();
    int n = paramView.getTop() + top - paramView.getScrollY();
    int i5 = i4 + paramRect.width();
    int i7 = paramRect.height();
    int i = Math.min(0, i4 - i2);
    int j = Math.min(0, n - m);
    int k = Math.max(0, i5 - i3);
    i1 = Math.max(0, n + i7 - (i1 - i6));
    if (getLayoutDirection() == 1) {
      if (k != 0)
      {
        i = k;
        if (j == 0) {
          break label217;
        }
        label154:
        if ((i == 0) && (j == 0)) {
          break label243;
        }
        if (!paramBoolean) {
          break label232;
        }
        paramRecyclerView.scrollBy(i, j);
      }
    }
    for (;;)
    {
      return true;
      i = Math.max(i, i5 - i3);
      break;
      if (i != 0) {
        break;
      }
      for (;;)
      {
        i = Math.min(i4 - i2, k);
      }
      label217:
      j = Math.min(n - m, i1);
      break label154;
      label232:
      paramRecyclerView.smoothScrollBy(i, j);
    }
    label243:
    return false;
  }
  
  public void requestLayout()
  {
    if (mRecyclerView != null) {
      mRecyclerView.requestLayout();
    }
  }
  
  public void requestSimpleAnimationsInNextLayout()
  {
    mRequestedSimpleAnimations = true;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return 0;
  }
  
  public void scrollToPosition(int paramInt) {}
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return 0;
  }
  
  public void setAutoMeasureEnabled(boolean paramBoolean)
  {
    mAutoMeasure = paramBoolean;
  }
  
  void setExactMeasureSpecsFrom(RecyclerView paramRecyclerView)
  {
    setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
  }
  
  void setMeasureSpecs(int paramInt1, int paramInt2)
  {
    mWidthSpec = paramInt1;
    mHeightSpec = paramInt2;
  }
  
  public void setMeasuredDimension(int paramInt1, int paramInt2)
  {
    RecyclerView.access$5600(mRecyclerView, paramInt1, paramInt2);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i = paramRect.width();
    int j = getPaddingLeft();
    int k = getPaddingRight();
    int m = paramRect.height();
    int n = getPaddingTop();
    int i1 = getPaddingBottom();
    setMeasuredDimension(chooseSize(paramInt1, i + j + k, getMinimumWidth()), chooseSize(paramInt2, m + n + i1, getMinimumHeight()));
  }
  
  void setMeasuredDimensionFromChildren(int paramInt1, int paramInt2)
  {
    int j = Integer.MAX_VALUE;
    int i = Integer.MIN_VALUE;
    int i5 = getChildCount();
    if (i5 == 0)
    {
      mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
      return;
    }
    int n = 0;
    int k = Integer.MIN_VALUE;
    int m = Integer.MAX_VALUE;
    int i1;
    int i3;
    int i2;
    if (n < i5)
    {
      View localView = getChildAt(n);
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      int i4 = getDecoratedLeft(localView) - leftMargin;
      i1 = getDecoratedRight(localView);
      i3 = rightMargin + i1;
      i2 = getDecoratedTop(localView) - topMargin;
      i1 = getDecoratedBottom(localView);
      i1 = bottomMargin + i1;
      if (i4 >= m) {
        break label221;
      }
      m = i4;
    }
    label221:
    for (;;)
    {
      if (i3 > k) {
        k = i3;
      }
      for (;;)
      {
        if (i2 < j) {
          j = i2;
        }
        for (;;)
        {
          if (i1 > i) {
            i = i1;
          }
          for (;;)
          {
            n += 1;
            break;
            RecyclerView.access$5400(mRecyclerView).set(m, j, k, i);
            setMeasuredDimension(RecyclerView.access$5400(mRecyclerView), paramInt1, paramInt2);
            return;
          }
        }
      }
    }
  }
  
  public void setMeasurementCacheEnabled(boolean paramBoolean)
  {
    mMeasurementCacheEnabled = paramBoolean;
  }
  
  void setRecyclerView(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      mRecyclerView = null;
      mChildHelper = null;
      mWidthSpec = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
      mHeightSpec = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
      return;
    }
    mRecyclerView = paramRecyclerView;
    mChildHelper = mChildHelper;
    mWidthSpec = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824);
    mHeightSpec = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824);
  }
  
  boolean shouldMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
  {
    return (paramView.isLayoutRequested()) || (!mMeasurementCacheEnabled) || (!isMeasurementUpToDate(paramView.getWidth(), paramInt1, width)) || (!isMeasurementUpToDate(paramView.getHeight(), paramInt2, height));
  }
  
  boolean shouldMeasureTwice()
  {
    return false;
  }
  
  boolean shouldReMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
  {
    return (!mMeasurementCacheEnabled) || (!isMeasurementUpToDate(paramView.getMeasuredWidth(), paramInt1, width)) || (!isMeasurementUpToDate(paramView.getMeasuredHeight(), paramInt2, height));
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
  {
    Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
  }
  
  public void startSmoothScroll(RecyclerView.SmoothScroller paramSmoothScroller)
  {
    if ((mSmoothScroller != null) && (paramSmoothScroller != mSmoothScroller) && (mSmoothScroller.isRunning())) {
      mSmoothScroller.stop();
    }
    mSmoothScroller = paramSmoothScroller;
    mSmoothScroller.start(mRecyclerView, this);
  }
  
  public void stopIgnoringView(View paramView)
  {
    paramView = RecyclerView.getChildViewHolderInt(paramView);
    paramView.stopIgnoring();
    paramView.resetInternal();
    paramView.addFlags(4);
  }
  
  void stopSmoothScroller()
  {
    if (mSmoothScroller != null) {
      mSmoothScroller.stop();
    }
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.LayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */