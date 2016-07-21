package android.support.v7.widget;

public abstract class RecyclerView$AdapterDataObserver
{
  public void onChanged() {}
  
  public void onItemRangeChanged(int paramInt1, int paramInt2) {}
  
  public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
  {
    onItemRangeChanged(paramInt1, paramInt2);
  }
  
  public void onItemRangeInserted(int paramInt1, int paramInt2) {}
  
  public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onItemRangeRemoved(int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.AdapterDataObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */