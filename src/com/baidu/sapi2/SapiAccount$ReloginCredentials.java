package com.baidu.sapi2;

import com.baidu.sapi2.utils.L;
import org.json.JSONException;
import org.json.JSONObject;

public final class SapiAccount$ReloginCredentials
{
  static final String a = "account";
  static final String b = "account_type";
  static final String c = "password";
  static final String d = "ubi";
  public String account;
  public String accountType;
  public String password;
  public String ubi;
  
  public static ReloginCredentials fromJSONObject(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    ReloginCredentials localReloginCredentials = new ReloginCredentials();
    account = paramJSONObject.optString("account");
    accountType = paramJSONObject.optString("account_type");
    password = paramJSONObject.optString("password");
    ubi = paramJSONObject.optString("ubi");
    return localReloginCredentials;
  }
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("account", account);
      localJSONObject.put("account_type", accountType);
      localJSONObject.put("password", password);
      localJSONObject.put("ubi", ubi);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      L.e(localJSONException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiAccount.ReloginCredentials
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */