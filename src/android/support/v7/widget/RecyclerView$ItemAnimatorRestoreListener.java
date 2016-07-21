package android.support.v7.widget;

class RecyclerView$ItemAnimatorRestoreListener
  implements RecyclerView.ItemAnimator.ItemAnimatorListener
{
  private RecyclerView$ItemAnimatorRestoreListener(RecyclerView paramRecyclerView) {}
  
  public void onAnimationFinished(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder.setIsRecyclable(true);
    if ((mShadowedHolder != null) && (mShadowingHolder == null)) {
      mShadowedHolder = null;
    }
    mShadowingHolder = null;
    if ((!RecyclerView.ViewHolder.access$6300(paramViewHolder)) && (!RecyclerView.access$6400(this$0, itemView)) && (paramViewHolder.isTmpDetached())) {
      this$0.removeDetachedView(itemView, false);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ItemAnimatorRestoreListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */