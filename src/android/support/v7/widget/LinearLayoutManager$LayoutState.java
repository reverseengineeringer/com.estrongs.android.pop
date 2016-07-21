package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import java.util.List;

class LinearLayoutManager$LayoutState
{
  static final int INVALID_LAYOUT = Integer.MIN_VALUE;
  static final int ITEM_DIRECTION_HEAD = -1;
  static final int ITEM_DIRECTION_TAIL = 1;
  static final int LAYOUT_END = 1;
  static final int LAYOUT_START = -1;
  static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
  static final String TAG = "LinearLayoutManager#LayoutState";
  int mAvailable;
  int mCurrentPosition;
  int mExtra = 0;
  boolean mInfinite;
  boolean mIsPreLayout = false;
  int mItemDirection;
  int mLastScrollDelta;
  int mLayoutDirection;
  int mOffset;
  boolean mRecycle = true;
  List<RecyclerView.ViewHolder> mScrapList = null;
  int mScrollingOffset;
  
  private View nextViewFromScrapList()
  {
    int j = mScrapList.size();
    int i = 0;
    if (i < j)
    {
      View localView = mScrapList.get(i)).itemView;
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.isItemRemoved()) {}
      while (mCurrentPosition != localLayoutParams.getViewLayoutPosition())
      {
        i += 1;
        break;
      }
      assignPositionFromScrapList(localView);
      return localView;
    }
    return null;
  }
  
  public void assignPositionFromScrapList()
  {
    assignPositionFromScrapList(null);
  }
  
  public void assignPositionFromScrapList(View paramView)
  {
    paramView = nextViewInLimitedList(paramView);
    if (paramView == null)
    {
      mCurrentPosition = -1;
      return;
    }
    mCurrentPosition = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
  }
  
  boolean hasMore(RecyclerView.State paramState)
  {
    return (mCurrentPosition >= 0) && (mCurrentPosition < paramState.getItemCount());
  }
  
  void log()
  {
    Log.d("LinearLayoutManager#LayoutState", "avail:" + mAvailable + ", ind:" + mCurrentPosition + ", dir:" + mItemDirection + ", offset:" + mOffset + ", layoutDir:" + mLayoutDirection);
  }
  
  View next(RecyclerView.Recycler paramRecycler)
  {
    if (mScrapList != null) {
      return nextViewFromScrapList();
    }
    paramRecycler = paramRecycler.getViewForPosition(mCurrentPosition);
    mCurrentPosition += mItemDirection;
    return paramRecycler;
  }
  
  public View nextViewInLimitedList(View paramView)
  {
    int m = mScrapList.size();
    Object localObject = null;
    int i = Integer.MAX_VALUE;
    int j = 0;
    if (j < m)
    {
      View localView = mScrapList.get(j)).itemView;
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
      if (localView != paramView) {
        if (!localLayoutParams.isItemRemoved()) {}
      }
      for (;;)
      {
        j += 1;
        break;
        int k = (localLayoutParams.getViewLayoutPosition() - mCurrentPosition) * mItemDirection;
        if (k >= 0) {
          if (k < i)
          {
            if (k == 0) {
              return localView;
            }
            localObject = localView;
            i = k;
          }
        }
      }
    }
    return (View)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.LayoutState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */