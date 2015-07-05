package org.simpleframework.xml.stream;

import java.util.ArrayList;

class Stack<T>
  extends ArrayList<T>
{
  public Stack(int paramInt)
  {
    super(paramInt);
  }
  
  public T bottom()
  {
    if (size() <= 0) {
      return null;
    }
    return (T)get(0);
  }
  
  public T pop()
  {
    int i = size();
    if (i <= 0) {
      return null;
    }
    return (T)remove(i - 1);
  }
  
  public T push(T paramT)
  {
    add(paramT);
    return paramT;
  }
  
  public T top()
  {
    int i = size();
    if (i <= 0) {
      return null;
    }
    return (T)get(i - 1);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Stack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */