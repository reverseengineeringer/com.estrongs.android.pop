package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class IMDataModel
  implements Parcelable
{
  public static final Parcelable.Creator<IMDataModel> CREATOR = new b();
  public String a;
  public int b;
  public String c;
  public String d;
  public long e;
  public final List<IMData> f = new ArrayList();
  
  public IMDataModel() {}
  
  private IMDataModel(Parcel paramParcel)
  {
    a = paramParcel.readString();
    c = paramParcel.readString();
    b = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readLong();
    paramParcel.readTypedList(f, IMData.CREATOR);
  }
  
  public IMDataModel(String paramString1, int paramInt, String paramString2, JSONObject paramJSONObject, long paramLong)
  {
    a = paramString1;
    b = paramInt;
    d = paramString2;
    e = paramLong;
    if (paramJSONObject == null) {
      break label41;
    }
    for (;;)
    {
      label41:
      return;
      if (paramInt == paramJSONObject.optInt("sId"))
      {
        c = paramJSONObject.optString("logId");
        paramJSONObject = paramJSONObject.optJSONArray("list");
        if (paramJSONObject.length() == 0) {
          break;
        }
        paramJSONObject = paramJSONObject.optJSONObject(0);
        if (paramJSONObject == null) {
          break;
        }
        JSONArray localJSONArray = paramJSONObject.optJSONArray("ads");
        int i = 0;
        while (i < localJSONArray.length())
        {
          f.add(new IMData(paramString1, paramInt, paramString2, c, i, paramJSONObject, paramLong));
          i += 1;
        }
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(c);
    paramParcel.writeInt(b);
    paramParcel.writeString(d);
    paramParcel.writeLong(e);
    paramParcel.writeTypedList(f);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.IMDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */