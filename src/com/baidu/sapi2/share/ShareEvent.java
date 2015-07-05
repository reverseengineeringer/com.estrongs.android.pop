package com.baidu.sapi2.share;

 enum ShareEvent
{
  static
  {
    INVALIDATE = new ShareEvent("INVALIDATE", 1);
    SYNC_REQ = new ShareEvent("SYNC_REQ", 2);
  }
  
  private ShareEvent() {}
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */