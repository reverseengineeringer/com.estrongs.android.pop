package com.baidu.sapi2;

import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.cloudsdk.common.http.JsonHttpResponseHandler;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

final class SapiCache$b
  extends JsonHttpResponseHandler
{
  public void onSuccess(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    b localb1;
    b localb2;
    do
    {
      return;
      localb1 = c.a(SapiCache.f()).k();
      localb2 = b.a(paramJSONObject);
      paramJSONObject = localb2.i();
      c.a(SapiCache.f()).a(localb2);
      com.baidu.sapi2.share.b.c();
      com.baidu.sapi2.share.b.d();
      SapiCache.g().clear();
    } while (!paramJSONObject.a());
    Object localObject1 = paramJSONObject.b().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (b.a.a)((Iterator)localObject1).next();
      SapiCache.g().add(a);
    }
    Object localObject2 = paramJSONObject.b().iterator();
    label117:
    b.a.a locala;
    if (((Iterator)localObject2).hasNext())
    {
      locala = (b.a.a)((Iterator)localObject2).next();
      paramJSONObject = null;
      Iterator localIterator = localb1.i().b().iterator();
      label155:
      if (localIterator.hasNext())
      {
        localObject1 = (b.a.a)localIterator.next();
        if (!a.equals(a)) {
          break label233;
        }
        paramJSONObject = (JSONObject)localObject1;
      }
    }
    label233:
    for (;;)
    {
      break label155;
      new AsyncHttpClient().get(SapiCache.f(), b, SapiCache.c(), new SapiCache.b.a(this, locala, paramJSONObject, localb2));
      break label117;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */