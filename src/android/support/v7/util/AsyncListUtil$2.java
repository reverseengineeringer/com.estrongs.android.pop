package android.support.v7.util;

import android.util.Log;
import android.util.SparseBooleanArray;

class AsyncListUtil$2
  implements ThreadUtil.BackgroundCallback<T>
{
  private int mFirstRequiredTileStart;
  private int mGeneration;
  private int mItemCount;
  private int mLastRequiredTileStart;
  final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
  private TileList.Tile<T> mRecycledRoot;
  
  AsyncListUtil$2(AsyncListUtil paramAsyncListUtil) {}
  
  private TileList.Tile<T> acquireTile()
  {
    if (mRecycledRoot != null)
    {
      TileList.Tile localTile = mRecycledRoot;
      mRecycledRoot = mRecycledRoot.mNext;
      return localTile;
    }
    return new TileList.Tile(this$0.mTClass, this$0.mTileSize);
  }
  
  private void addTile(TileList.Tile<T> paramTile)
  {
    mLoadedTiles.put(mStartPosition, true);
    this$0.mMainThreadProxy.addTile(mGeneration, paramTile);
  }
  
  private void flushTileCache(int paramInt)
  {
    int i = this$0.mDataCallback.getMaxCachedTiles();
    while (mLoadedTiles.size() >= i)
    {
      int j = mLoadedTiles.keyAt(0);
      int k = mLoadedTiles.keyAt(mLoadedTiles.size() - 1);
      int m = mFirstRequiredTileStart - j;
      int n = k - mLastRequiredTileStart;
      if ((m > 0) && ((m >= n) || (paramInt == 2)))
      {
        removeTile(j);
      }
      else
      {
        if ((n <= 0) || ((m >= n) && (paramInt != 1))) {
          break;
        }
        removeTile(k);
      }
    }
  }
  
  private int getTileStart(int paramInt)
  {
    return paramInt - paramInt % this$0.mTileSize;
  }
  
  private boolean isTileLoaded(int paramInt)
  {
    return mLoadedTiles.get(paramInt);
  }
  
  private void log(String paramString, Object... paramVarArgs)
  {
    Log.d("AsyncListUtil", "[BKGR] " + String.format(paramString, paramVarArgs));
  }
  
  private void removeTile(int paramInt)
  {
    mLoadedTiles.delete(paramInt);
    this$0.mMainThreadProxy.removeTile(mGeneration, paramInt);
  }
  
  private void requestTiles(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramInt1;
    if (i <= paramInt2)
    {
      if (paramBoolean) {}
      for (int j = paramInt2 + paramInt1 - i;; j = i)
      {
        this$0.mBackgroundProxy.loadTile(j, paramInt3);
        i += this$0.mTileSize;
        break;
      }
    }
  }
  
  public void loadTile(int paramInt1, int paramInt2)
  {
    if (isTileLoaded(paramInt1)) {
      return;
    }
    TileList.Tile localTile = acquireTile();
    mStartPosition = paramInt1;
    mItemCount = Math.min(this$0.mTileSize, mItemCount - mStartPosition);
    this$0.mDataCallback.fillData(mItems, mStartPosition, mItemCount);
    flushTileCache(paramInt2);
    addTile(localTile);
  }
  
  public void recycleTile(TileList.Tile<T> paramTile)
  {
    this$0.mDataCallback.recycleData(mItems, mItemCount);
    mNext = mRecycledRoot;
    mRecycledRoot = paramTile;
  }
  
  public void refresh(int paramInt)
  {
    mGeneration = paramInt;
    mLoadedTiles.clear();
    mItemCount = this$0.mDataCallback.refreshData();
    this$0.mMainThreadProxy.updateItemCount(mGeneration, mItemCount);
  }
  
  public void updateRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt1 > paramInt2) {
      return;
    }
    paramInt1 = getTileStart(paramInt1);
    paramInt2 = getTileStart(paramInt2);
    mFirstRequiredTileStart = getTileStart(paramInt3);
    mLastRequiredTileStart = getTileStart(paramInt4);
    if (paramInt5 == 1)
    {
      requestTiles(mFirstRequiredTileStart, paramInt2, paramInt5, true);
      requestTiles(this$0.mTileSize + paramInt2, mLastRequiredTileStart, paramInt5, false);
      return;
    }
    requestTiles(paramInt1, mLastRequiredTileStart, paramInt5, false);
    requestTiles(mFirstRequiredTileStart, paramInt1 - this$0.mTileSize, paramInt5, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.AsyncListUtil.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */