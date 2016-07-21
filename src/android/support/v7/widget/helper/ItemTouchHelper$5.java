package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ChildDrawingOrderCallback;

class ItemTouchHelper$5
  implements RecyclerView.ChildDrawingOrderCallback
{
  ItemTouchHelper$5(ItemTouchHelper paramItemTouchHelper) {}
  
  public int onGetChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (ItemTouchHelper.access$1600(this$0) == null) {}
    int i;
    do
    {
      return paramInt2;
      int j = ItemTouchHelper.access$2300(this$0);
      i = j;
      if (j == -1)
      {
        i = ItemTouchHelper.access$300(this$0).indexOfChild(ItemTouchHelper.access$1600(this$0));
        ItemTouchHelper.access$2302(this$0, i);
      }
      if (paramInt2 == paramInt1 - 1) {
        return i;
      }
    } while (paramInt2 < i);
    return paramInt2 + 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */