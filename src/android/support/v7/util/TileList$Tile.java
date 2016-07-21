package android.support.v7.util;

import java.lang.reflect.Array;

public class TileList$Tile<T>
{
  public int mItemCount;
  public final T[] mItems;
  Tile<T> mNext;
  public int mStartPosition;
  
  public TileList$Tile(Class<T> paramClass, int paramInt)
  {
    mItems = ((Object[])Array.newInstance(paramClass, paramInt));
  }
  
  boolean containsPosition(int paramInt)
  {
    return (mStartPosition <= paramInt) && (paramInt < mStartPosition + mItemCount);
  }
  
  T getByPosition(int paramInt)
  {
    return (T)mItems[(paramInt - mStartPosition)];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.TileList.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */