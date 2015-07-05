package com.baidu.sapi2.utils;

import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.cloudsdk.common.http.RequestParams;
import com.baidu.sapi2.SapiConfiguration;
import java.util.Map;

final class a$a
  implements Runnable
{
  a$a(SapiConfiguration paramSapiConfiguration, Map paramMap, String paramString) {}
  
  public void run()
  {
    new AsyncHttpClient().get(a.context, "http://nsclick.baidu.com/v.gif", new RequestParams(b), new a.a.a(this));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */