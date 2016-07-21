package com.flurry.sdk;

import android.os.FileObserver;
import android.os.Handler;

class aq$1
  extends FileObserver
{
  aq$1(aq paramaq, String paramString)
  {
    super(paramString);
  }
  
  public void onEvent(int paramInt, String paramString)
  {
    if (((paramInt & 0x800) != 0) || ((paramInt & 0x400) != 0)) {
      js.a().g().post(new aq.1.1(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */