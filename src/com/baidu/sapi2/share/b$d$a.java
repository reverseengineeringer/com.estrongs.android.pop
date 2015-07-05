package com.baidu.sapi2.share;

import android.content.Context;
import android.content.Intent;
import com.baidu.sapi2.SapiConfiguration;

class b$d$a
  implements a.b
{
  b$d$a(b.d paramd) {}
  
  public void a(Intent paramIntent)
  {
    b.a(paramIntent, b.f());
  }
  
  public void a(Intent paramIntent1, Intent paramIntent2)
  {
    econtext.bindService(paramIntent1, new b.d.a.a(this, paramIntent2), 1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */