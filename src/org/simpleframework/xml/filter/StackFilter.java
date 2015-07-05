package org.simpleframework.xml.filter;

import java.util.Stack;

public class StackFilter
  implements Filter
{
  private Stack<Filter> stack = new Stack();
  
  public void push(Filter paramFilter)
  {
    stack.push(paramFilter);
  }
  
  public String replace(String paramString)
  {
    int i = stack.size();
    for (;;)
    {
      i -= 1;
      Object localObject;
      if (i < 0) {
        localObject = null;
      }
      String str;
      do
      {
        return (String)localObject;
        str = ((Filter)stack.get(i)).replace(paramString);
        localObject = str;
      } while (str != null);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.filter.StackFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */