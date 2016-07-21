package android.support.v7.widget.helper;

import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView;

class ItemTouchHelper$1
  implements Runnable
{
  ItemTouchHelper$1(ItemTouchHelper paramItemTouchHelper) {}
  
  public void run()
  {
    if ((this$0.mSelected != null) && (ItemTouchHelper.access$000(this$0)))
    {
      if (this$0.mSelected != null) {
        ItemTouchHelper.access$100(this$0, this$0.mSelected);
      }
      ItemTouchHelper.access$300(this$0).removeCallbacks(ItemTouchHelper.access$200(this$0));
      cn.a(ItemTouchHelper.access$300(this$0), this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */