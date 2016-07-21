package android.support.v7.widget;

import android.view.View;

public class RecyclerView$ItemAnimator$ItemHolderInfo
{
  public int bottom;
  public int changeFlags;
  public int left;
  public int right;
  public int top;
  
  public ItemHolderInfo setFrom(RecyclerView.ViewHolder paramViewHolder)
  {
    return setFrom(paramViewHolder, 0);
  }
  
  public ItemHolderInfo setFrom(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    paramViewHolder = itemView;
    left = paramViewHolder.getLeft();
    top = paramViewHolder.getTop();
    right = paramViewHolder.getRight();
    bottom = paramViewHolder.getBottom();
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ItemAnimator.ItemHolderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */