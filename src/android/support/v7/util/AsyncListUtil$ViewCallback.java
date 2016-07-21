package android.support.v7.util;

public abstract class AsyncListUtil$ViewCallback
{
  public static final int HINT_SCROLL_ASC = 2;
  public static final int HINT_SCROLL_DESC = 1;
  public static final int HINT_SCROLL_NONE = 0;
  
  public void extendRangeInto(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = paramArrayOfInt1[1] - paramArrayOfInt1[0] + 1;
    int j = i / 2;
    int m = paramArrayOfInt1[0];
    int k;
    if (paramInt == 1)
    {
      k = i;
      paramArrayOfInt2[0] = (m - k);
      k = paramArrayOfInt1[1];
      if (paramInt != 2) {
        break label65;
      }
    }
    for (;;)
    {
      paramArrayOfInt2[1] = (k + i);
      return;
      k = j;
      break;
      label65:
      i = j;
    }
  }
  
  public abstract void getItemRangeInto(int[] paramArrayOfInt);
  
  public abstract void onDataRefresh();
  
  public abstract void onItemLoaded(int paramInt);
}

/* Location:
 * Qualified Name:     android.support.v7.util.AsyncListUtil.ViewCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */