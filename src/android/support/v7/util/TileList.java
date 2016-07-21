package android.support.v7.util;

import android.util.SparseArray;

class TileList<T>
{
  TileList.Tile<T> mLastAccessedTile;
  final int mTileSize;
  private final SparseArray<TileList.Tile<T>> mTiles = new SparseArray(10);
  
  public TileList(int paramInt)
  {
    mTileSize = paramInt;
  }
  
  public TileList.Tile<T> addOrReplace(TileList.Tile<T> paramTile)
  {
    int i = mTiles.indexOfKey(mStartPosition);
    Object localObject;
    if (i < 0)
    {
      mTiles.put(mStartPosition, paramTile);
      localObject = null;
    }
    TileList.Tile localTile;
    do
    {
      return (TileList.Tile<T>)localObject;
      localTile = (TileList.Tile)mTiles.valueAt(i);
      mTiles.setValueAt(i, paramTile);
      localObject = localTile;
    } while (mLastAccessedTile != localTile);
    mLastAccessedTile = paramTile;
    return localTile;
  }
  
  public void clear()
  {
    mTiles.clear();
  }
  
  public TileList.Tile<T> getAtIndex(int paramInt)
  {
    return (TileList.Tile)mTiles.valueAt(paramInt);
  }
  
  public T getItemAt(int paramInt)
  {
    if ((mLastAccessedTile == null) || (!mLastAccessedTile.containsPosition(paramInt)))
    {
      int i = mTileSize;
      i = mTiles.indexOfKey(paramInt - paramInt % i);
      if (i < 0) {
        return null;
      }
      mLastAccessedTile = ((TileList.Tile)mTiles.valueAt(i));
    }
    return (T)mLastAccessedTile.getByPosition(paramInt);
  }
  
  public TileList.Tile<T> removeAtPos(int paramInt)
  {
    TileList.Tile localTile = (TileList.Tile)mTiles.get(paramInt);
    if (mLastAccessedTile == localTile) {
      mLastAccessedTile = null;
    }
    mTiles.delete(paramInt);
    return localTile;
  }
  
  public int size()
  {
    return mTiles.size();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.TileList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */