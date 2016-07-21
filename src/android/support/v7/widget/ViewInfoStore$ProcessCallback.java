package android.support.v7.widget;

abstract interface ViewInfoStore$ProcessCallback
{
  public abstract void processAppeared(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
  
  public abstract void processDisappeared(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
  
  public abstract void processPersistent(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
  
  public abstract void unused(RecyclerView.ViewHolder paramViewHolder);
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ViewInfoStore.ProcessCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */