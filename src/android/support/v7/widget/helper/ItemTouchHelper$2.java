package android.support.v7.widget.helper;

import android.support.v4.view.bi;
import android.support.v4.view.q;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.List;

class ItemTouchHelper$2
  implements RecyclerView.OnItemTouchListener
{
  ItemTouchHelper$2(ItemTouchHelper paramItemTouchHelper) {}
  
  public boolean onInterceptTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
  {
    ItemTouchHelper.access$400(this$0).a(paramMotionEvent);
    int i = bi.a(paramMotionEvent);
    if (i == 0)
    {
      this$0.mActivePointerId = bi.b(paramMotionEvent, 0);
      this$0.mInitialTouchX = paramMotionEvent.getX();
      this$0.mInitialTouchY = paramMotionEvent.getY();
      ItemTouchHelper.access$500(this$0);
      if (this$0.mSelected == null)
      {
        paramRecyclerView = ItemTouchHelper.access$600(this$0, paramMotionEvent);
        if (paramRecyclerView != null)
        {
          ItemTouchHelper localItemTouchHelper = this$0;
          mInitialTouchX -= mX;
          localItemTouchHelper = this$0;
          mInitialTouchY -= mY;
          ItemTouchHelper.access$700(this$0, mViewHolder, true);
          if (this$0.mPendingCleanup.remove(mViewHolder.itemView)) {
            this$0.mCallback.clearView(ItemTouchHelper.access$300(this$0), mViewHolder);
          }
          ItemTouchHelper.access$800(this$0, mViewHolder, mActionState);
          ItemTouchHelper.access$900(this$0, paramMotionEvent, this$0.mSelectedFlags, 0);
        }
      }
    }
    for (;;)
    {
      if (ItemTouchHelper.access$1100(this$0) != null) {
        ItemTouchHelper.access$1100(this$0).addMovement(paramMotionEvent);
      }
      if (this$0.mSelected == null) {
        break;
      }
      return true;
      if ((i == 3) || (i == 1))
      {
        this$0.mActivePointerId = -1;
        ItemTouchHelper.access$800(this$0, null, 0);
      }
      else if (this$0.mActivePointerId != -1)
      {
        int j = bi.a(paramMotionEvent, this$0.mActivePointerId);
        if (j >= 0) {
          ItemTouchHelper.access$1000(this$0, i, paramMotionEvent, j);
        }
      }
    }
    return false;
  }
  
  public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return;
    }
    ItemTouchHelper.access$800(this$0, null, 0);
  }
  
  public void onTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
  {
    int i = 0;
    ItemTouchHelper.access$400(this$0).a(paramMotionEvent);
    if (ItemTouchHelper.access$1100(this$0) != null) {
      ItemTouchHelper.access$1100(this$0).addMovement(paramMotionEvent);
    }
    if (this$0.mActivePointerId == -1) {}
    int j;
    do
    {
      int k;
      do
      {
        return;
        j = bi.a(paramMotionEvent);
        k = bi.a(paramMotionEvent, this$0.mActivePointerId);
        if (k >= 0) {
          ItemTouchHelper.access$1000(this$0, j, paramMotionEvent, k);
        }
        paramRecyclerView = this$0.mSelected;
      } while (paramRecyclerView == null);
      switch (j)
      {
      case 4: 
      case 5: 
      default: 
        return;
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          ItemTouchHelper.access$800(this$0, null, 0);
          this$0.mActivePointerId = -1;
          return;
          if (k < 0) {
            break;
          }
          ItemTouchHelper.access$900(this$0, paramMotionEvent, this$0.mSelectedFlags, k);
          ItemTouchHelper.access$100(this$0, paramRecyclerView);
          ItemTouchHelper.access$300(this$0).removeCallbacks(ItemTouchHelper.access$200(this$0));
          ItemTouchHelper.access$200(this$0).run();
          ItemTouchHelper.access$300(this$0).invalidate();
          return;
          if (ItemTouchHelper.access$1100(this$0) != null) {
            ItemTouchHelper.access$1100(this$0).clear();
          }
        }
      }
      j = bi.b(paramMotionEvent);
    } while (bi.b(paramMotionEvent, j) != this$0.mActivePointerId);
    if (j == 0) {
      i = 1;
    }
    this$0.mActivePointerId = bi.b(paramMotionEvent, i);
    ItemTouchHelper.access$900(this$0, paramMotionEvent, this$0.mSelectedFlags, j);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */