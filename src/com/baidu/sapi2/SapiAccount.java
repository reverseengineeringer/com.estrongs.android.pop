package com.baidu.sapi2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.enums.SocialType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SapiAccount
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<SapiAccount> CREATOR = new a();
  static final String a = "uid";
  static final String b = "displayname";
  static final String c = "username";
  static final String d = "email";
  static final String e = "phone";
  static final String f = "bduss";
  static final String g = "app";
  static final String h = "ptoken";
  static final String i = "stoken";
  static final String j = "extra";
  public String app;
  public String bduss;
  public String displayname;
  @Deprecated
  public String email;
  public String extra;
  @Deprecated
  private String k;
  @Deprecated
  private String l;
  @Deprecated
  public String phone;
  public String ptoken;
  public String stoken;
  public String uid;
  public String username;
  
  public SapiAccount() {}
  
  SapiAccount(Parcel paramParcel)
  {
    uid = paramParcel.readString();
    displayname = paramParcel.readString();
    username = paramParcel.readString();
    email = paramParcel.readString();
    phone = paramParcel.readString();
    bduss = paramParcel.readString();
    app = paramParcel.readString();
    ptoken = paramParcel.readString();
    stoken = paramParcel.readString();
    l = paramParcel.readString();
    extra = paramParcel.readString();
    k = paramParcel.readString();
  }
  
  public static List<SapiAccount> fromJSONArray(JSONArray paramJSONArray)
  {
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0)) {
      return new ArrayList();
    }
    ArrayList localArrayList = new ArrayList();
    int m = 0;
    while (m < paramJSONArray.length())
    {
      try
      {
        SapiAccount localSapiAccount = fromJSONObject(paramJSONArray.getJSONObject(m));
        if (localSapiAccount != null) {
          localArrayList.add(localSapiAccount);
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          L.e(localJSONException);
        }
      }
      m += 1;
    }
    return localArrayList;
  }
  
  public static SapiAccount fromJSONObject(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    SapiAccount localSapiAccount = new SapiAccount();
    uid = paramJSONObject.optString("uid");
    displayname = paramJSONObject.optString("displayname");
    username = paramJSONObject.optString("username");
    email = paramJSONObject.optString("email");
    phone = paramJSONObject.optString("phone");
    bduss = paramJSONObject.optString("bduss");
    app = paramJSONObject.optString("app");
    ptoken = paramJSONObject.optString("ptoken");
    stoken = paramJSONObject.optString("stoken");
    extra = paramJSONObject.optString("extra");
    return localSapiAccount;
  }
  
  public static JSONArray toJSONArray(List<SapiAccount> paramList)
  {
    if (paramList == null) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      JSONObject localJSONObject = ((SapiAccount)paramList.next()).toJSONObject();
      if (localJSONObject != null) {
        localJSONArray.put(localJSONObject);
      }
    }
    return localJSONArray;
  }
  
  public Object clone()
  {
    super.clone();
    SapiAccount localSapiAccount = new SapiAccount();
    uid = uid;
    displayname = displayname;
    username = username;
    email = email;
    phone = phone;
    bduss = bduss;
    ptoken = ptoken;
    stoken = stoken;
    app = app;
    extra = extra;
    return localSapiAccount;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (SapiAccount)paramObject;
      if (uid == null) {
        break;
      }
    } while (uid.equals(uid));
    while (uid != null) {
      return false;
    }
    return true;
  }
  
  public SapiAccount.ReloginCredentials getReloginCredentials()
  {
    return c.a(getInstancegetSapiConfigurationcontext).c(uid);
  }
  
  public String getSocialPortrait()
  {
    if (TextUtils.isEmpty(extra)) {
      return null;
    }
    try
    {
      String str = new JSONObject(extra).optString("social_portrait", null);
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public SocialType getSocialType()
  {
    if (TextUtils.isEmpty(extra)) {
      return SocialType.UNKNOWN;
    }
    try
    {
      SocialType localSocialType = SocialType.getSocialType(new JSONObject(extra).optInt("social_type", SocialType.UNKNOWN.getType()));
      return localSocialType;
    }
    catch (JSONException localJSONException) {}
    return SocialType.UNKNOWN;
  }
  
  public int hashCode()
  {
    if (uid != null) {
      return uid.hashCode();
    }
    return 0;
  }
  
  public boolean isSocialAccount()
  {
    if (TextUtils.isEmpty(extra)) {
      return false;
    }
    try
    {
      boolean bool = new JSONObject(extra).optBoolean("is_social_account", false);
      return bool;
    }
    catch (JSONException localJSONException) {}
    return false;
  }
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("uid", uid);
      localJSONObject.put("displayname", displayname);
      localJSONObject.put("username", username);
      localJSONObject.put("email", email);
      localJSONObject.put("phone", phone);
      localJSONObject.put("bduss", bduss);
      localJSONObject.put("app", app);
      localJSONObject.put("ptoken", ptoken);
      localJSONObject.put("stoken", stoken);
      localJSONObject.put("extra", extra);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      L.e(localJSONException);
    }
    return null;
  }
  
  public String toString()
  {
    return "SapiAccount{uid='" + uid + '\'' + ", displayname='" + displayname + '\'' + ", username='" + username + '\'' + ", email='" + email + '\'' + ", phone='" + phone + '\'' + ", bduss='" + bduss + '\'' + ", app='" + app + '\'' + ", ptoken='" + ptoken + '\'' + ", stoken='" + stoken + '\'' + ", extra='" + extra + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(uid);
    paramParcel.writeString(displayname);
    paramParcel.writeString(username);
    paramParcel.writeString(email);
    paramParcel.writeString(phone);
    paramParcel.writeString(bduss);
    paramParcel.writeString(app);
    paramParcel.writeString(ptoken);
    paramParcel.writeString(stoken);
    paramParcel.writeString(l);
    paramParcel.writeString(extra);
    paramParcel.writeString(k);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */