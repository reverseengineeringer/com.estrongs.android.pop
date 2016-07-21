package android.support.v7.util;

public abstract class AsyncListUtil$DataCallback<T>
{
  public abstract void fillData(T[] paramArrayOfT, int paramInt1, int paramInt2);
  
  public int getMaxCachedTiles()
  {
    return 10;
  }
  
  public void recycleData(T[] paramArrayOfT, int paramInt) {}
  
  public abstract int refreshData();
}

/* Location:
 * Qualified Name:     android.support.v7.util.AsyncListUtil.DataCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */