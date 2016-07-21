package android.support.v7.widget;

import android.view.View;

class LinearLayoutManager$AnchorInfo
{
  int mCoordinate;
  boolean mLayoutFromEnd;
  int mPosition;
  
  LinearLayoutManager$AnchorInfo(LinearLayoutManager paramLinearLayoutManager) {}
  
  private boolean isViewValidAsAnchor(View paramView, RecyclerView.State paramState)
  {
    paramView = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return (!paramView.isItemRemoved()) && (paramView.getViewLayoutPosition() >= 0) && (paramView.getViewLayoutPosition() < paramState.getItemCount());
  }
  
  void assignCoordinateFromPadding()
  {
    if (mLayoutFromEnd) {}
    for (int i = this$0.mOrientationHelper.getEndAfterPadding();; i = this$0.mOrientationHelper.getStartAfterPadding())
    {
      mCoordinate = i;
      return;
    }
  }
  
  public void assignFromView(View paramView)
  {
    if (mLayoutFromEnd) {}
    for (mCoordinate = (this$0.mOrientationHelper.getDecoratedEnd(paramView) + this$0.mOrientationHelper.getTotalSpaceChange());; mCoordinate = this$0.mOrientationHelper.getDecoratedStart(paramView))
    {
      mPosition = this$0.getPosition(paramView);
      return;
    }
  }
  
  public void assignFromViewAndKeepVisibleRect(View paramView)
  {
    int j = this$0.mOrientationHelper.getTotalSpaceChange();
    if (j >= 0) {
      assignFromView(paramView);
    }
    int i;
    do
    {
      int k;
      do
      {
        do
        {
          do
          {
            return;
            mPosition = this$0.getPosition(paramView);
            if (!mLayoutFromEnd) {
              break;
            }
            i = this$0.mOrientationHelper.getEndAfterPadding() - j - this$0.mOrientationHelper.getDecoratedEnd(paramView);
            mCoordinate = (this$0.mOrientationHelper.getEndAfterPadding() - i);
          } while (i <= 0);
          j = this$0.mOrientationHelper.getDecoratedMeasurement(paramView);
          k = mCoordinate;
          m = this$0.mOrientationHelper.getStartAfterPadding();
          j = k - j - (m + Math.min(this$0.mOrientationHelper.getDecoratedStart(paramView) - m, 0));
        } while (j >= 0);
        k = mCoordinate;
        mCoordinate = (Math.min(i, -j) + k);
        return;
        k = this$0.mOrientationHelper.getDecoratedStart(paramView);
        i = k - this$0.mOrientationHelper.getStartAfterPadding();
        mCoordinate = k;
      } while (i <= 0);
      int m = this$0.mOrientationHelper.getDecoratedMeasurement(paramView);
      int n = this$0.mOrientationHelper.getEndAfterPadding();
      int i1 = this$0.mOrientationHelper.getDecoratedEnd(paramView);
      j = this$0.mOrientationHelper.getEndAfterPadding() - Math.min(0, n - j - i1) - (k + m);
    } while (j >= 0);
    mCoordinate -= Math.min(i, -j);
  }
  
  void reset()
  {
    mPosition = -1;
    mCoordinate = Integer.MIN_VALUE;
    mLayoutFromEnd = false;
  }
  
  public String toString()
  {
    return "AnchorInfo{mPosition=" + mPosition + ", mCoordinate=" + mCoordinate + ", mLayoutFromEnd=" + mLayoutFromEnd + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.AnchorInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */