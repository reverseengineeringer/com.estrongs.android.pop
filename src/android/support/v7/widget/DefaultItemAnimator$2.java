package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class DefaultItemAnimator$2
  implements Runnable
{
  DefaultItemAnimator$2(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = val$changes.iterator();
    while (localIterator.hasNext())
    {
      DefaultItemAnimator.ChangeInfo localChangeInfo = (DefaultItemAnimator.ChangeInfo)localIterator.next();
      DefaultItemAnimator.access$200(this$0, localChangeInfo);
    }
    val$changes.clear();
    DefaultItemAnimator.access$300(this$0).remove(val$changes);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */