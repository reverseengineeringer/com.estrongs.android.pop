package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Base64;
import com.duapps.ad.base.l;
import com.duapps.ad.entity.AdData;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class IMData
  extends AdData
  implements Parcelable
{
  public static final Parcelable.Creator<IMData> CREATOR = new a();
  public int H;
  public String I;
  public String J;
  public boolean K = false;
  public boolean L = false;
  public String M = "inmobi";
  
  public IMData() {}
  
  private IMData(Parcel paramParcel)
  {
    w = paramParcel.readString();
    v = paramParcel.readString();
    x = paramParcel.readInt();
    y = paramParcel.readString();
    a = paramParcel.readLong();
    n = paramParcel.readString();
    m = paramParcel.readInt();
    H = paramParcel.readInt();
    r = paramParcel.readInt();
    z = paramParcel.readInt();
    C = paramParcel.readLong();
    b = paramParcel.readString();
    e = paramParcel.readString();
    A = paramParcel.readString();
    g = paramParcel.readString();
    s = paramParcel.readString();
    h = paramParcel.readString();
    I = paramParcel.readString();
    J = paramParcel.readString();
    q = paramParcel.readFloat();
    B = paramParcel.readLong();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      K = bool1;
      if (paramParcel.readByte() == 0) {
        break label224;
      }
    }
    label224:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      L = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public IMData(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2, JSONObject paramJSONObject, long paramLong)
  {
    w = paramString1;
    x = paramInt1;
    y = paramString2;
    v = paramString3;
    a = paramJSONObject.optLong("id");
    n = paramJSONObject.optString("source");
    m = paramJSONObject.optInt("openType", -1);
    H = paramJSONObject.optInt("mType");
    r = paramJSONObject.optInt("label");
    z = paramJSONObject.optInt("preClick");
    C = paramJSONObject.optLong("cacheTime");
    B = paramLong;
    paramString1 = paramJSONObject.optJSONArray("ads").optJSONObject(paramInt2);
    if (paramString1 != null)
    {
      paramString2 = paramString1.optString("pubContent");
      I = paramString1.optString("contextCode");
      J = paramString1.optString("namespace");
      paramString1 = a(paramString2);
      if (paramString1 == null) {}
    }
    try
    {
      paramString1 = new JSONObject(paramString1);
      l.c("IMData", "imAd==" + paramString1.toString());
      if (paramString1 != null)
      {
        b = paramString1.optString("title");
        e = paramString1.optString("description");
        q = ((float)paramString1.optDouble("rating", 4.5D));
        A = paramString1.optString("cta");
        g = paramString1.optJSONObject("icon").optString("url");
        s = paramString1.optJSONObject("screenshots").optString("url");
        h = paramString1.optString("landingURL");
      }
      return;
    }
    catch (JSONException paramString1)
    {
      l.d("IMData", "JSONException:" + paramString1.toString());
    }
  }
  
  public IMData(String paramString1, String paramString2, long paramLong)
  {
    J = paramString1;
    I = paramString2;
    B = paramLong;
  }
  
  public static IMData b(JSONObject paramJSONObject)
  {
    IMData localIMData = new IMData();
    M = paramJSONObject.optString("channel");
    w = paramJSONObject.optString("license");
    v = paramJSONObject.optString("logId");
    x = paramJSONObject.optInt("sid");
    y = paramJSONObject.optString("sType", "native");
    a = paramJSONObject.optLong("id");
    n = paramJSONObject.optString("source");
    r = paramJSONObject.optInt("label");
    z = paramJSONObject.optInt("preClick");
    m = paramJSONObject.optInt("opentype");
    C = paramJSONObject.optLong("cacheTime");
    H = paramJSONObject.optInt("mType");
    b = paramJSONObject.optString("title");
    e = paramJSONObject.optString("description");
    A = paramJSONObject.optString("cta");
    g = paramJSONObject.optString("icon");
    s = paramJSONObject.optString("screenshots");
    h = paramJSONObject.optString("landingURL");
    q = ((float)paramJSONObject.optLong("rating"));
    return localIMData;
  }
  
  public String a(IMData.AdOperationType paramAdOperationType)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramAdOperationType == IMData.AdOperationType.Impression) {}
    for (int i = 18;; i = 8)
    {
      localStringBuffer.append(I);
      localStringBuffer.append("<script>");
      localStringBuffer.append(J);
      localStringBuffer.append("recordEvent(" + i + ")");
      localStringBuffer.append("</script>");
      return localStringBuffer.toString();
    }
  }
  
  public String a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes("UTF-8");
      paramString = new String(Base64.decode(paramString, 0, paramString.length, 0), "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public boolean a()
  {
    return System.currentTimeMillis() - B <= C * 60L * 1000L;
  }
  
  public String b()
  {
    String str = a(IMData.AdOperationType.Impression);
    return str + "<script>recordEvent(8)</script>";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeString(w);
    paramParcel.writeString(v);
    paramParcel.writeInt(x);
    paramParcel.writeString(y);
    paramParcel.writeLong(a);
    paramParcel.writeString(n);
    paramParcel.writeInt(m);
    paramParcel.writeInt(H);
    paramParcel.writeInt(r);
    paramParcel.writeInt(z);
    paramParcel.writeLong(C);
    paramParcel.writeString(b);
    paramParcel.writeString(e);
    paramParcel.writeString(A);
    paramParcel.writeString(g);
    paramParcel.writeString(s);
    paramParcel.writeString(h);
    paramParcel.writeString(I);
    paramParcel.writeString(J);
    paramParcel.writeFloat(q);
    paramParcel.writeLong(B);
    if (K)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!L) {
        break label206;
      }
    }
    label206:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.IMData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */