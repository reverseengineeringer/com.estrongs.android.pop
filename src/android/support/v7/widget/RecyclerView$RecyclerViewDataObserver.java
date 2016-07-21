package android.support.v7.widget;

import android.support.v4.view.cn;

class RecyclerView$RecyclerViewDataObserver
  extends RecyclerView.AdapterDataObserver
{
  private RecyclerView$RecyclerViewDataObserver(RecyclerView paramRecyclerView) {}
  
  public void onChanged()
  {
    this$0.assertNotInLayoutOrScroll(null);
    if (RecyclerView.access$3100(this$0).hasStableIds())
    {
      RecyclerView.State.access$1802(this$0.mState, true);
      RecyclerView.access$4000(this$0);
    }
    for (;;)
    {
      if (!this$0.mAdapterHelper.hasPendingUpdates()) {
        this$0.requestLayout();
      }
      return;
      RecyclerView.State.access$1802(this$0.mState, true);
      RecyclerView.access$4000(this$0);
    }
  }
  
  public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
  {
    this$0.assertNotInLayoutOrScroll(null);
    if (this$0.mAdapterHelper.onItemRangeChanged(paramInt1, paramInt2, paramObject)) {
      triggerUpdateProcessor();
    }
  }
  
  public void onItemRangeInserted(int paramInt1, int paramInt2)
  {
    this$0.assertNotInLayoutOrScroll(null);
    if (this$0.mAdapterHelper.onItemRangeInserted(paramInt1, paramInt2)) {
      triggerUpdateProcessor();
    }
  }
  
  public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
  {
    this$0.assertNotInLayoutOrScroll(null);
    if (this$0.mAdapterHelper.onItemRangeMoved(paramInt1, paramInt2, paramInt3)) {
      triggerUpdateProcessor();
    }
  }
  
  public void onItemRangeRemoved(int paramInt1, int paramInt2)
  {
    this$0.assertNotInLayoutOrScroll(null);
    if (this$0.mAdapterHelper.onItemRangeRemoved(paramInt1, paramInt2)) {
      triggerUpdateProcessor();
    }
  }
  
  void triggerUpdateProcessor()
  {
    if ((RecyclerView.access$4100(this$0)) && (RecyclerView.access$4200(this$0)) && (RecyclerView.access$4300(this$0)))
    {
      cn.a(this$0, RecyclerView.access$4400(this$0));
      return;
    }
    RecyclerView.access$4502(this$0, true);
    this$0.requestLayout();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.RecyclerViewDataObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */