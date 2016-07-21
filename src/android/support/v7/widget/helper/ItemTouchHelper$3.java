package android.support.v7.widget.helper;

import android.support.v4.a.l;
import android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.List;

class ItemTouchHelper$3
  extends ItemTouchHelper.RecoverAnimation
{
  ItemTouchHelper$3(ItemTouchHelper paramItemTouchHelper, RecyclerView.ViewHolder paramViewHolder1, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt3, RecyclerView.ViewHolder paramViewHolder2)
  {
    super(paramItemTouchHelper, paramViewHolder1, paramInt1, paramInt2, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void onAnimationEnd(l paraml)
  {
    super.onAnimationEnd(paraml);
    if (mOverridden) {}
    for (;;)
    {
      return;
      if (val$swipeDir <= 0) {
        this$0.mCallback.clearView(ItemTouchHelper.access$300(this$0), val$prevSelected);
      }
      while (ItemTouchHelper.access$1600(this$0) == val$prevSelected.itemView)
      {
        ItemTouchHelper.access$1700(this$0, val$prevSelected.itemView);
        return;
        this$0.mPendingCleanup.add(val$prevSelected.itemView);
        mIsPendingCleanup = true;
        if (val$swipeDir > 0) {
          ItemTouchHelper.access$1500(this$0, this, val$swipeDir);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */