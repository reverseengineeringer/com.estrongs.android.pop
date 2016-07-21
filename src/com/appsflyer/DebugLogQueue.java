package com.appsflyer;

import java.util.ArrayList;
import java.util.List;

public class DebugLogQueue
{
  private static DebugLogQueue b = new DebugLogQueue();
  List<DebugLogQueue.Item> a = new ArrayList();
  
  public static DebugLogQueue a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    a.add(new DebugLogQueue.Item(paramString));
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.DebugLogQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */