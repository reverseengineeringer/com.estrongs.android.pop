package org.apache.commons.net.util;

import java.io.Serializable;
import java.util.EventListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class ListenerList
  implements Serializable, Iterable<EventListener>
{
  private static final long serialVersionUID = -1934227607974228213L;
  private final CopyOnWriteArrayList<EventListener> __listeners = new CopyOnWriteArrayList();
  
  public void addListener(EventListener paramEventListener)
  {
    __listeners.add(paramEventListener);
  }
  
  public int getListenerCount()
  {
    return __listeners.size();
  }
  
  public Iterator<EventListener> iterator()
  {
    return __listeners.iterator();
  }
  
  public void removeListener(EventListener paramEventListener)
  {
    __listeners.remove(paramEventListener);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.ListenerList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */