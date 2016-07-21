package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

class StaggeredGridLayoutManager$Span
{
  static final int INVALID_LINE = Integer.MIN_VALUE;
  int mCachedEnd = Integer.MIN_VALUE;
  int mCachedStart = Integer.MIN_VALUE;
  int mDeletedSize = 0;
  final int mIndex;
  private ArrayList<View> mViews = new ArrayList();
  
  private StaggeredGridLayoutManager$Span(StaggeredGridLayoutManager paramStaggeredGridLayoutManager, int paramInt)
  {
    mIndex = paramInt;
  }
  
  void appendToSpan(View paramView)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams(paramView);
    mSpan = this;
    mViews.add(paramView);
    mCachedEnd = Integer.MIN_VALUE;
    if (mViews.size() == 1) {
      mCachedStart = Integer.MIN_VALUE;
    }
    if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
      mDeletedSize += this$0.mPrimaryOrientation.getDecoratedMeasurement(paramView);
    }
  }
  
  void cacheReferenceLineAndClear(boolean paramBoolean, int paramInt)
  {
    int i;
    if (paramBoolean)
    {
      i = getEndLine(Integer.MIN_VALUE);
      clear();
      if (i != Integer.MIN_VALUE) {
        break label32;
      }
    }
    label32:
    while (((paramBoolean) && (i < this$0.mPrimaryOrientation.getEndAfterPadding())) || ((!paramBoolean) && (i > this$0.mPrimaryOrientation.getStartAfterPadding())))
    {
      return;
      i = getStartLine(Integer.MIN_VALUE);
      break;
    }
    int j = i;
    if (paramInt != Integer.MIN_VALUE) {
      j = i + paramInt;
    }
    mCachedEnd = j;
    mCachedStart = j;
  }
  
  void calculateCachedEnd()
  {
    Object localObject = (View)mViews.get(mViews.size() - 1);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams((View)localObject);
    mCachedEnd = this$0.mPrimaryOrientation.getDecoratedEnd((View)localObject);
    if (mFullSpan)
    {
      localObject = this$0.mLazySpanLookup.getFullSpanItem(localLayoutParams.getViewLayoutPosition());
      if ((localObject != null) && (mGapDir == 1))
      {
        int i = mCachedEnd;
        mCachedEnd = (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).getGapForSpan(mIndex) + i);
      }
    }
  }
  
  void calculateCachedStart()
  {
    Object localObject = (View)mViews.get(0);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams((View)localObject);
    mCachedStart = this$0.mPrimaryOrientation.getDecoratedStart((View)localObject);
    if (mFullSpan)
    {
      localObject = this$0.mLazySpanLookup.getFullSpanItem(localLayoutParams.getViewLayoutPosition());
      if ((localObject != null) && (mGapDir == -1)) {
        mCachedStart -= ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).getGapForSpan(mIndex);
      }
    }
  }
  
  void clear()
  {
    mViews.clear();
    invalidateCache();
    mDeletedSize = 0;
  }
  
  public int findFirstCompletelyVisibleItemPosition()
  {
    if (StaggeredGridLayoutManager.access$600(this$0)) {
      return findOneVisibleChild(mViews.size() - 1, -1, true);
    }
    return findOneVisibleChild(0, mViews.size(), true);
  }
  
  public int findFirstVisibleItemPosition()
  {
    if (StaggeredGridLayoutManager.access$600(this$0)) {
      return findOneVisibleChild(mViews.size() - 1, -1, false);
    }
    return findOneVisibleChild(0, mViews.size(), false);
  }
  
  public int findLastCompletelyVisibleItemPosition()
  {
    if (StaggeredGridLayoutManager.access$600(this$0)) {
      return findOneVisibleChild(0, mViews.size(), true);
    }
    return findOneVisibleChild(mViews.size() - 1, -1, true);
  }
  
  public int findLastVisibleItemPosition()
  {
    if (StaggeredGridLayoutManager.access$600(this$0)) {
      return findOneVisibleChild(0, mViews.size(), false);
    }
    return findOneVisibleChild(mViews.size() - 1, -1, false);
  }
  
  int findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int k = -1;
    int m = this$0.mPrimaryOrientation.getStartAfterPadding();
    int n = this$0.mPrimaryOrientation.getEndAfterPadding();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    }
    for (;;)
    {
      int j = k;
      View localView;
      if (paramInt1 != paramInt2)
      {
        localView = (View)mViews.get(paramInt1);
        j = this$0.mPrimaryOrientation.getDecoratedStart(localView);
        int i1 = this$0.mPrimaryOrientation.getDecoratedEnd(localView);
        if ((j >= n) || (i1 <= m)) {
          break label147;
        }
        if (paramBoolean)
        {
          if ((j < m) || (i1 > n)) {
            break label147;
          }
          j = this$0.getPosition(localView);
        }
      }
      else
      {
        return j;
        i = -1;
        continue;
      }
      return this$0.getPosition(localView);
      label147:
      paramInt1 += i;
    }
  }
  
  public int getDeletedSize()
  {
    return mDeletedSize;
  }
  
  int getEndLine()
  {
    if (mCachedEnd != Integer.MIN_VALUE) {
      return mCachedEnd;
    }
    calculateCachedEnd();
    return mCachedEnd;
  }
  
  int getEndLine(int paramInt)
  {
    if (mCachedEnd != Integer.MIN_VALUE) {
      paramInt = mCachedEnd;
    }
    while (mViews.size() == 0) {
      return paramInt;
    }
    calculateCachedEnd();
    return mCachedEnd;
  }
  
  public View getFocusableViewAfter(int paramInt1, int paramInt2)
  {
    View localView2 = null;
    View localView1 = null;
    int i;
    if (paramInt2 == -1)
    {
      i = mViews.size();
      paramInt2 = 0;
      if (paramInt2 < i)
      {
        localView2 = (View)mViews.get(paramInt2);
        if (localView2.isFocusable())
        {
          if (this$0.getPosition(localView2) > paramInt1) {}
          for (int k = 1;; k = 0)
          {
            if (k != StaggeredGridLayoutManager.access$600(this$0)) {
              break label92;
            }
            paramInt2 += 1;
            localView1 = localView2;
            break;
          }
        }
      }
      label92:
      return localView1;
    }
    paramInt2 = mViews.size() - 1;
    localView1 = localView2;
    if (paramInt2 >= 0)
    {
      localView2 = (View)mViews.get(paramInt2);
      if (localView2.isFocusable())
      {
        if (this$0.getPosition(localView2) > paramInt1)
        {
          i = 1;
          label149:
          if (StaggeredGridLayoutManager.access$600(this$0)) {
            break label184;
          }
        }
        label184:
        for (int j = 1;; j = 0)
        {
          if (i != j) {
            break label190;
          }
          paramInt2 -= 1;
          localView1 = localView2;
          break;
          i = 0;
          break label149;
        }
      }
    }
    label190:
    return localView1;
  }
  
  StaggeredGridLayoutManager.LayoutParams getLayoutParams(View paramView)
  {
    return (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
  }
  
  int getStartLine()
  {
    if (mCachedStart != Integer.MIN_VALUE) {
      return mCachedStart;
    }
    calculateCachedStart();
    return mCachedStart;
  }
  
  int getStartLine(int paramInt)
  {
    if (mCachedStart != Integer.MIN_VALUE) {
      paramInt = mCachedStart;
    }
    while (mViews.size() == 0) {
      return paramInt;
    }
    calculateCachedStart();
    return mCachedStart;
  }
  
  void invalidateCache()
  {
    mCachedStart = Integer.MIN_VALUE;
    mCachedEnd = Integer.MIN_VALUE;
  }
  
  void onOffset(int paramInt)
  {
    if (mCachedStart != Integer.MIN_VALUE) {
      mCachedStart += paramInt;
    }
    if (mCachedEnd != Integer.MIN_VALUE) {
      mCachedEnd += paramInt;
    }
  }
  
  void popEnd()
  {
    int i = mViews.size();
    View localView = (View)mViews.remove(i - 1);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams(localView);
    mSpan = null;
    if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
      mDeletedSize -= this$0.mPrimaryOrientation.getDecoratedMeasurement(localView);
    }
    if (i == 1) {
      mCachedStart = Integer.MIN_VALUE;
    }
    mCachedEnd = Integer.MIN_VALUE;
  }
  
  void popStart()
  {
    View localView = (View)mViews.remove(0);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams(localView);
    mSpan = null;
    if (mViews.size() == 0) {
      mCachedEnd = Integer.MIN_VALUE;
    }
    if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
      mDeletedSize -= this$0.mPrimaryOrientation.getDecoratedMeasurement(localView);
    }
    mCachedStart = Integer.MIN_VALUE;
  }
  
  void prependToSpan(View paramView)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = getLayoutParams(paramView);
    mSpan = this;
    mViews.add(0, paramView);
    mCachedStart = Integer.MIN_VALUE;
    if (mViews.size() == 1) {
      mCachedEnd = Integer.MIN_VALUE;
    }
    if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
      mDeletedSize += this$0.mPrimaryOrientation.getDecoratedMeasurement(paramView);
    }
  }
  
  void setLine(int paramInt)
  {
    mCachedStart = paramInt;
    mCachedEnd = paramInt;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.Span
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */