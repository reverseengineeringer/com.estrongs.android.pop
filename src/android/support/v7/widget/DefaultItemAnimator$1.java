package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class DefaultItemAnimator$1
  implements Runnable
{
  DefaultItemAnimator$1(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = val$moves.iterator();
    while (localIterator.hasNext())
    {
      DefaultItemAnimator.MoveInfo localMoveInfo = (DefaultItemAnimator.MoveInfo)localIterator.next();
      DefaultItemAnimator.access$000(this$0, holder, fromX, fromY, toX, toY);
    }
    val$moves.clear();
    DefaultItemAnimator.access$100(this$0).remove(val$moves);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */