package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.GetHistoryPortraitsResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class a$f
  extends HttpResponseHandler
{
  a$f(a parama, SapiCallBack paramSapiCallBack, int paramInt, String paramString1, String paramString2, String paramString3) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(f).c())
    {
      a.a(f).d();
      a.onSystemError(-100);
      return;
    }
    a.a(f).b();
    f.a(a, b, c, d, e);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    a.a(f).d();
    int i = f.a(paramString);
    if (i == 0) {
      try
      {
        Object localObject = new JSONObject(paramString);
        paramString = new GetHistoryPortraitsResponse();
        errorCode = i;
        errorMsg = ((JSONObject)localObject).optString("errmsg");
        localObject = ((JSONObject)localObject).optJSONArray("history");
        int j = ((JSONArray)localObject).length();
        historyPortraits = new ArrayList(j);
        paramInt = 0;
        while (paramInt < j)
        {
          historyPortraits.add(((JSONArray)localObject).optString(paramInt));
          paramInt += 1;
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
    }
    a.onSystemError(i);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */