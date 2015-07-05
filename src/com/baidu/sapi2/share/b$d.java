package com.baidu.sapi2.share;

import android.os.Handler;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import java.util.Map;

final class b$d
  implements Runnable
{
  b$d(Handler paramHandler, Map paramMap) {}
  
  public void run()
  {
    a.a(econtext, new b.d.a(this), false);
    b.g().a(((Integer)b.get(etpl)).intValue());
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */