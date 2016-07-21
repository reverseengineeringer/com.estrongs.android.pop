package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class dk
  extends ks<dj>
{
  private static final String a = dk.class.getSimpleName();
  
  private void a(dj paramdj, int paramInt)
  {
    if (paramdj == null) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", paramdj.a());
    localHashMap.put("url", paramdj.s());
    localHashMap.put("response", paramInt + "");
    i.a().a(paramdj.b(), bb.N, true, localHashMap);
  }
  
  protected jz<List<dj>> a()
  {
    return new jz(js.a().c().getFileStreamPath(".yflurryreporter"), ".yflurryreporter", 3, new dk.1(this));
  }
  
  protected void a(dj paramdj)
  {
    kg.a(3, a, "Sending next report for original url: " + paramdj.s() + " to current url:" + paramdj.t());
    kn localkn = new kn();
    localkn.a(paramdj.t());
    localkn.d(100000);
    localkn.a(kp.a.b);
    localkn.b(false);
    if (paramdj.c())
    {
      String str = i.a().h().d();
      if (!TextUtils.isEmpty(str)) {
        localkn.a("Cookie", str);
      }
      str = i.a().h().e();
      if (!TextUtils.isEmpty(str)) {
        localkn.a("Cookie", str);
      }
    }
    localkn.a(new dk.2(this, paramdj));
    jq.a().a(this, localkn);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */