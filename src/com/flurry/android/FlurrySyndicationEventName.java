package com.flurry.android;

public enum FlurrySyndicationEventName
{
  private String a;
  
  static
  {
    FAST_REBLOG = new FlurrySyndicationEventName("FAST_REBLOG", 1, "FastReblog");
    SOURCE_LINK = new FlurrySyndicationEventName("SOURCE_LINK", 2, "SourceClick");
  }
  
  private FlurrySyndicationEventName(String paramString)
  {
    a = paramString;
  }
  
  public String toString()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurrySyndicationEventName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */