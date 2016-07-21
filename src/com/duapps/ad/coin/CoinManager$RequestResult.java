package com.duapps.ad.coin;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public class CoinManager$RequestResult
  implements Parcelable
{
  public static final Parcelable.Creator<RequestResult> CREATOR = new c();
  public int a = -1;
  public int b;
  public int c;
  public int d;
  public String e;
  public String f;
  public int g;
  public String h;
  public boolean i;
  
  private CoinManager$RequestResult(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    d = paramParcel.readInt();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      i = bool;
      return;
      bool = false;
    }
  }
  
  private CoinManager$RequestResult(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    e = str;
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    f = paramString1;
  }
  
  public static RequestResult a(String paramString)
  {
    paramString = new JSONObject(paramString);
    RequestResult localRequestResult = new RequestResult(paramString.optString("mid"), paramString.optString("type"));
    a = paramString.optInt("total");
    b = paramString.optInt("midscore");
    c = paramString.optInt("status");
    d = paramString.optInt("integalMax");
    g = paramString.optInt("midpayscore");
    i = false;
    return localRequestResult;
  }
  
  public boolean a()
  {
    return (c == 200) || (c == 410) || (c == 411) || (c == 412);
  }
  
  public boolean b()
  {
    return (c == 200) || (c == 410) || (c == 411) || (c == 412);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    paramParcel.writeInt(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeInt(g);
    if (i) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.CoinManager.RequestResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */