package android.support.v7.widget;

class RecyclerView$1
  implements Runnable
{
  RecyclerView$1(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if ((!RecyclerView.access$100(this$0)) || (this$0.isLayoutRequested())) {
      return;
    }
    if (RecyclerView.access$200(this$0))
    {
      RecyclerView.access$302(this$0, true);
      return;
    }
    RecyclerView.access$400(this$0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */