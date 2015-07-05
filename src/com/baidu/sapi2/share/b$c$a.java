package com.baidu.sapi2.share;

import android.content.Context;
import android.content.Intent;
import com.baidu.sapi2.SapiConfiguration;

class b$c$a
  implements a.b
{
  b$c$a(b.c paramc) {}
  
  public void a(Intent paramIntent)
  {
    b.a(paramIntent, new ShareModel(ShareEvent.SYNC_REQ));
  }
  
  public void a(Intent paramIntent1, Intent paramIntent2)
  {
    econtext.bindService(paramIntent1, new b.c.a.a(this, paramIntent2), 1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */