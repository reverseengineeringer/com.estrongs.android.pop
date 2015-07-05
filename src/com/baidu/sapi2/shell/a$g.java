package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.GetPopularPortraitsInfoResponse;
import com.baidu.sapi2.shell.response.GetPopularPortraitsInfoResponse.PopularPortraitsInfo;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class a$g
  extends HttpResponseHandler
{
  a$g(a parama, SapiCallBack paramSapiCallBack, String paramString) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(c).c())
    {
      a.a(c).d();
      a.onSystemError(-100);
      return;
    }
    a.a(c).b();
    c.a(a, b);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    a.a(c).d();
    int i = c.a(paramString);
    if (i == 0) {}
    for (;;)
    {
      try
      {
        Object localObject = new JSONObject(paramString);
        paramString = new GetPopularPortraitsInfoResponse();
        errorCode = i;
        errorMsg = ((JSONObject)localObject).optString("errmsg");
        localObject = ((JSONObject)localObject).optJSONArray("list");
        int j = ((JSONArray)localObject).length();
        popularPortraitsInfoList = new ArrayList(j);
        paramInt = 0;
        if (paramInt < j)
        {
          JSONObject localJSONObject = ((JSONArray)localObject).optJSONObject(paramInt);
          if (localJSONObject == null) {
            break label217;
          }
          GetPopularPortraitsInfoResponse.PopularPortraitsInfo localPopularPortraitsInfo = new GetPopularPortraitsInfoResponse.PopularPortraitsInfo();
          num = localJSONObject.optInt("num");
          series = localJSONObject.optString("serie");
          url = localJSONObject.optString("url");
          myItem = localJSONObject.optInt("myitem");
          popularPortraitsInfoList.add(localPopularPortraitsInfo);
          break label217;
        }
        a.onSuccess(paramString);
        return;
      }
      catch (JSONException paramString)
      {
        a.onSystemError(i);
        L.e(paramString);
        return;
      }
      a.onSystemError(i);
      return;
      label217:
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */