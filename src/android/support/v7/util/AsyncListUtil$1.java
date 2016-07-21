package android.support.v7.util;

import android.util.Log;
import android.util.SparseIntArray;

class AsyncListUtil$1
  implements ThreadUtil.MainThreadCallback<T>
{
  AsyncListUtil$1(AsyncListUtil paramAsyncListUtil) {}
  
  private boolean isRequestedGeneration(int paramInt)
  {
    return paramInt == this$0.mRequestedGeneration;
  }
  
  private void recycleAllTiles()
  {
    int i = 0;
    while (i < this$0.mTileList.size())
    {
      this$0.mBackgroundProxy.recycleTile(this$0.mTileList.getAtIndex(i));
      i += 1;
    }
    this$0.mTileList.clear();
  }
  
  public void addTile(int paramInt, TileList.Tile<T> paramTile)
  {
    if (!isRequestedGeneration(paramInt)) {
      this$0.mBackgroundProxy.recycleTile(paramTile);
    }
    for (;;)
    {
      return;
      TileList.Tile localTile = this$0.mTileList.addOrReplace(paramTile);
      if (localTile != null)
      {
        Log.e("AsyncListUtil", "duplicate tile @" + mStartPosition);
        this$0.mBackgroundProxy.recycleTile(localTile);
      }
      int i = mStartPosition;
      int j = mItemCount;
      paramInt = 0;
      while (paramInt < AsyncListUtil.access$300(this$0).size())
      {
        int k = AsyncListUtil.access$300(this$0).keyAt(paramInt);
        if ((mStartPosition <= k) && (k < j + i))
        {
          AsyncListUtil.access$300(this$0).removeAt(paramInt);
          this$0.mViewCallback.onItemLoaded(k);
        }
        else
        {
          paramInt += 1;
        }
      }
    }
  }
  
  public void removeTile(int paramInt1, int paramInt2)
  {
    if (!isRequestedGeneration(paramInt1)) {
      return;
    }
    TileList.Tile localTile = this$0.mTileList.removeAtPos(paramInt2);
    if (localTile == null)
    {
      Log.e("AsyncListUtil", "tile not found @" + paramInt2);
      return;
    }
    this$0.mBackgroundProxy.recycleTile(localTile);
  }
  
  public void updateItemCount(int paramInt1, int paramInt2)
  {
    if (!isRequestedGeneration(paramInt1)) {
      return;
    }
    AsyncListUtil.access$002(this$0, paramInt2);
    this$0.mViewCallback.onDataRefresh();
    this$0.mDisplayedGeneration = this$0.mRequestedGeneration;
    recycleAllTiles();
    AsyncListUtil.access$102(this$0, false);
    AsyncListUtil.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.AsyncListUtil.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */