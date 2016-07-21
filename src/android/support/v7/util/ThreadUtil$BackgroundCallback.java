package android.support.v7.util;

public abstract interface ThreadUtil$BackgroundCallback<T>
{
  public abstract void loadTile(int paramInt1, int paramInt2);
  
  public abstract void recycleTile(TileList.Tile<T> paramTile);
  
  public abstract void refresh(int paramInt);
  
  public abstract void updateRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
}

/* Location:
 * Qualified Name:     android.support.v7.util.ThreadUtil.BackgroundCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */