package android.support.v7.util;

import java.util.Comparator;

public abstract class SortedList$Callback<T2>
  implements Comparator<T2>
{
  public abstract boolean areContentsTheSame(T2 paramT21, T2 paramT22);
  
  public abstract boolean areItemsTheSame(T2 paramT21, T2 paramT22);
  
  public abstract int compare(T2 paramT21, T2 paramT22);
  
  public abstract void onChanged(int paramInt1, int paramInt2);
  
  public abstract void onInserted(int paramInt1, int paramInt2);
  
  public abstract void onMoved(int paramInt1, int paramInt2);
  
  public abstract void onRemoved(int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     android.support.v7.util.SortedList.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */