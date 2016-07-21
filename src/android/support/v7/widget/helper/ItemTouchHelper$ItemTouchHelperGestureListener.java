package android.support.v7.widget.helper;

import android.support.v4.view.bi;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

class ItemTouchHelper$ItemTouchHelperGestureListener
  extends GestureDetector.SimpleOnGestureListener
{
  private ItemTouchHelper$ItemTouchHelperGestureListener(ItemTouchHelper paramItemTouchHelper) {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent)
  {
    Object localObject = ItemTouchHelper.access$2400(this$0, paramMotionEvent);
    if (localObject != null)
    {
      localObject = ItemTouchHelper.access$300(this$0).getChildViewHolder((View)localObject);
      if ((localObject != null) && (ItemTouchHelper.Callback.access$2100(this$0.mCallback, ItemTouchHelper.access$300(this$0), (RecyclerView.ViewHolder)localObject))) {
        break label57;
      }
    }
    label57:
    do
    {
      do
      {
        return;
      } while (bi.b(paramMotionEvent, 0) != this$0.mActivePointerId);
      int i = bi.a(paramMotionEvent, this$0.mActivePointerId);
      float f1 = bi.c(paramMotionEvent, i);
      float f2 = bi.d(paramMotionEvent, i);
      this$0.mInitialTouchX = f1;
      this$0.mInitialTouchY = f2;
      paramMotionEvent = this$0;
      this$0.mDy = 0.0F;
      mDx = 0.0F;
    } while (!this$0.mCallback.isLongPressDragEnabled());
    ItemTouchHelper.access$800(this$0, (RecyclerView.ViewHolder)localObject, 2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.ItemTouchHelperGestureListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */