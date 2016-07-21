package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class DefaultItemAnimator$3
  implements Runnable
{
  DefaultItemAnimator$3(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = val$additions.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)localIterator.next();
      DefaultItemAnimator.access$400(this$0, localViewHolder);
    }
    val$additions.clear();
    DefaultItemAnimator.access$500(this$0).remove(val$additions);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */