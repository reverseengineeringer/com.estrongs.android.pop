package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.support.v7.widget.RecyclerView.ViewHolder;

class ItemTouchHelper$4
  implements Runnable
{
  ItemTouchHelper$4(ItemTouchHelper paramItemTouchHelper, ItemTouchHelper.RecoverAnimation paramRecoverAnimation, int paramInt) {}
  
  public void run()
  {
    if ((ItemTouchHelper.access$300(this$0) != null) && (ItemTouchHelper.access$300(this$0).isAttachedToWindow()) && (!val$anim.mOverridden) && (val$anim.mViewHolder.getAdapterPosition() != -1))
    {
      RecyclerView.ItemAnimator localItemAnimator = ItemTouchHelper.access$300(this$0).getItemAnimator();
      if (((localItemAnimator == null) || (!localItemAnimator.isRunning(null))) && (!ItemTouchHelper.access$1800(this$0))) {
        this$0.mCallback.onSwiped(val$anim.mViewHolder, val$swipeDir);
      }
    }
    else
    {
      return;
    }
    ItemTouchHelper.access$300(this$0).post(this);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */