package com.duapps.ad.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class AdModel
  implements Parcelable
{
  public static final Parcelable.Creator<AdModel> CREATOR = new b();
  public String a;
  public String b;
  public int c;
  public String d;
  public int e;
  public int f;
  public int g;
  public final List<AdData> h = new ArrayList();
  public long i;
  public String j;
  public String k;
  public String l;
  public String m;
  
  public AdModel() {}
  
  private AdModel(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readInt();
    f = paramParcel.readInt();
    g = paramParcel.readInt();
    paramParcel.readTypedList(h, AdData.CREATOR);
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readString();
    m = paramParcel.readString();
    i = paramParcel.readLong();
  }
  
  public AdModel(String paramString1, int paramInt, String paramString2, JSONObject paramJSONObject, long paramLong)
  {
    a = paramString1;
    c = paramInt;
    d = paramString2;
    if (paramJSONObject == null) {}
    do
    {
      do
      {
        return;
      } while (paramInt != paramJSONObject.optInt("sId"));
      e = paramJSONObject.optInt("pn");
      f = paramJSONObject.optInt("ps");
      g = paramJSONObject.optInt("total");
      b = paramJSONObject.optString("logId");
      j = paramJSONObject.optString("ext");
      k = paramJSONObject.optString("title");
      l = paramJSONObject.optString("shortdesc");
      m = paramJSONObject.optString("description");
      paramJSONObject = paramJSONObject.optJSONArray("list");
    } while (paramJSONObject == null);
    int i1 = paramJSONObject.length();
    int n = 0;
    label159:
    JSONObject localJSONObject;
    if (n < i1)
    {
      localJSONObject = paramJSONObject.optJSONObject(n);
      if (localJSONObject != null) {
        break label189;
      }
    }
    for (;;)
    {
      n += 1;
      break label159;
      break;
      label189:
      h.add(new AdData(paramString1, paramInt, paramString2, b, localJSONObject, paramLong));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
    paramParcel.writeTypedList(h);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeString(m);
    paramParcel.writeLong(i);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.AdModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */