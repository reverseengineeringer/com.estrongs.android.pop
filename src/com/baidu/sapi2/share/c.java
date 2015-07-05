package com.baidu.sapi2.share;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.d;
import com.baidu.sapi2.utils.enums.SocialType;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class c
{
  static final String a = "isValid";
  static final String b = "username";
  static final String c = "displayname";
  static final String d = "email";
  static final String e = "phoneNumber";
  static final String f = "bduss";
  static final String g = "ptoken";
  static final String h = "json";
  static final String i = "socialAccounts";
  
  static SapiAccount a(Context paramContext)
  {
    Object localObject = new g(paramContext);
    if (!"1".equals(((g)localObject).a("isValid"))) {
      return null;
    }
    paramContext = new SapiAccount();
    displayname = ((g)localObject).a("displayname");
    username = ((g)localObject).a("username");
    email = ((g)localObject).a("email");
    phone = ((g)localObject).a("phoneNumber");
    bduss = ((g)localObject).a("bduss");
    ptoken = ((g)localObject).a("ptoken");
    extra = ((g)localObject).a("json");
    a(paramContext, ((g)localObject).a("socialAccounts"));
    if (!TextUtils.isEmpty(extra)) {}
    try
    {
      localObject = new JSONObject(extra);
      String str = ((JSONObject)localObject).optString("uid");
      if (!TextUtils.isEmpty(str)) {
        uid = str;
      }
      str = ((JSONObject)localObject).optString("bduss");
      if (!TextUtils.isEmpty(str)) {
        bduss = str;
      }
      if (!TextUtils.isEmpty(((JSONObject)localObject).optString("ptoken"))) {
        ptoken = ((JSONObject)localObject).optString("ptoken");
      }
      if (!TextUtils.isEmpty(((JSONObject)localObject).optString("stoken"))) {
        stoken = ((JSONObject)localObject).optString("stoken");
      }
      str = ((JSONObject)localObject).optString("uname");
      if (!TextUtils.isEmpty(str)) {
        username = str;
      }
      localObject = ((JSONObject)localObject).optString("displayname");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        displayname = ((String)localObject);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        L.e(localJSONException);
        continue;
        paramContext = null;
      }
    }
    if (SapiUtils.isValidAccount(paramContext)) {
      return paramContext;
    }
  }
  
  static void a(SapiAccount paramSapiAccount, String paramString)
  {
    if ((paramSapiAccount == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return;
      try
      {
        paramString = new JSONArray(paramString);
        if (paramString.length() == 0) {
          continue;
        }
        try
        {
          paramString = paramString.getJSONObject(0);
          d.a(paramSapiAccount, SocialType.getSocialType(paramString.optInt("type")), paramString.optString("headURL"));
          return;
        }
        catch (JSONException paramSapiAccount)
        {
          L.e(paramSapiAccount);
          return;
        }
        return;
      }
      catch (JSONException paramSapiAccount) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */