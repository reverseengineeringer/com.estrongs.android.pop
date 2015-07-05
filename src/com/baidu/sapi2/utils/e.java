package com.baidu.sapi2.utils;

import android.content.Context;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.utils.enums.Domain;
import java.util.ArrayList;
import java.util.List;

public class e
{
  static List<String> b = new ArrayList();
  static int c;
  Context a;
  
  public e(Context paramContext)
  {
    a = paramContext;
    d();
    e();
  }
  
  private void e()
  {
    b.clear();
    b.add("http://119.75.220.29");
    b.add("http://220.181.111.48");
    b.add("http://123.125.115.81");
  }
  
  public String a()
  {
    String str = getInstancegetSapiConfigurationenvironment.getURL();
    if (c > 0)
    {
      if (c > b.size()) {
        c = 1;
      }
      str = (String)b.get(c - 1);
    }
    return str;
  }
  
  public void b()
  {
    c += 1;
  }
  
  public boolean c()
  {
    return c >= b.size();
  }
  
  public void d()
  {
    c = 0;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */