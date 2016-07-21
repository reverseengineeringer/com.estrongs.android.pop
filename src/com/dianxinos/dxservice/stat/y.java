package com.dianxinos.dxservice.stat;

import android.util.Log;
import com.dianxinos.dxservice.a.c;
import java.util.LinkedList;
import java.util.Queue;

class y
  implements Runnable
{
  y(x paramx) {}
  
  public void run()
  {
    if (c.c) {
      Log.d("stat.EventDispatcher", "Enter in HandleEventQueue!");
    }
    Queue localQueue = x.a(a);
    x.a(a, new LinkedList());
    while (!localQueue.isEmpty())
    {
      t localt = (t)localQueue.poll();
      int i = localt.j();
      if ((!x.a(a, localt)) && (i < 3))
      {
        if (c.d) {
          Log.i("stat.EventDispatcher", "Retry to handle Event " + localt.toString() + " count:" + i);
        }
        localt.a(i + 1);
        x.a(a).add(localt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */