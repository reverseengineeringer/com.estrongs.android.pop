package com.flurry.sdk;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class jr$2
  extends LinkedHashMap<String, String>
{
  jr$2(jr paramjr) {}
  
  protected boolean removeEldestEntry(Map.Entry<String, String> paramEntry)
  {
    return size() > 10;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */