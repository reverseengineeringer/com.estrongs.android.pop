package com.duapps.ad.entity;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.duapps.ad.base.ag;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdData
  implements Parcelable
{
  public static final Parcelable.Creator<AdData> CREATOR = new a();
  public String A;
  public long B;
  public long C;
  public String D = "download";
  public String[] E;
  public String[] F;
  public int G;
  public long a;
  public String b;
  public String c;
  public String d;
  public String e;
  public int f = -1;
  public String g;
  public String h;
  public boolean i;
  public boolean j;
  public float k;
  public int l;
  public int m = -1;
  public String n;
  public long o;
  public int p;
  public float q;
  public int r;
  public String s;
  public String t;
  public String u;
  public String v;
  public String w;
  public int x;
  public String y;
  public int z;
  
  protected AdData() {}
  
  private AdData(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readInt();
    g = paramParcel.readString();
    h = paramParcel.readString();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      i = bool1;
      if (paramParcel.readByte() == 0) {
        break label296;
      }
    }
    label296:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      j = bool1;
      k = paramParcel.readFloat();
      l = paramParcel.readInt();
      m = paramParcel.readInt();
      n = paramParcel.readString();
      o = paramParcel.readLong();
      p = paramParcel.readInt();
      q = paramParcel.readFloat();
      r = paramParcel.readInt();
      u = paramParcel.readString();
      z = paramParcel.readInt();
      s = paramParcel.readString();
      t = paramParcel.readString();
      v = paramParcel.readString();
      w = paramParcel.readString();
      x = paramParcel.readInt();
      y = paramParcel.readString();
      A = paramParcel.readString();
      C = paramParcel.readLong();
      B = paramParcel.readLong();
      E = paramParcel.createStringArray();
      F = paramParcel.createStringArray();
      G = paramParcel.readInt();
      return;
      bool1 = false;
      break;
    }
  }
  
  public AdData(String paramString1, int paramInt, String paramString2, String paramString3, JSONObject paramJSONObject)
  {
    w = paramString1;
    x = paramInt;
    y = paramString2;
    v = paramString3;
    a = paramJSONObject.optLong("id");
    b = paramJSONObject.optString("title");
    n = paramJSONObject.optString("source", "none");
    h = paramJSONObject.optString("adUrl");
    c = paramJSONObject.optString("pkg");
    e = paramJSONObject.optString("shortDesc");
    d = paramJSONObject.optString("description");
    m = paramJSONObject.optInt("openType", -1);
    l = paramJSONObject.optInt("integral");
    k = ((float)paramJSONObject.optDouble("pts", 4.5D));
    q = ((float)paramJSONObject.optDouble("contentRating", 0.0D));
    r = paramJSONObject.optInt("label", 0);
    u = paramJSONObject.optString("cate");
    z = paramJSONObject.optInt("preClick");
    G = paramJSONObject.optInt("pp", 0);
    g = a(paramJSONObject.optJSONArray("images"));
    s = a(paramJSONObject.optJSONArray("bigImages"));
    t = a(paramJSONObject.optJSONArray("gifImages"));
    A = paramJSONObject.optString("buttonDes");
    C = paramJSONObject.optLong("cacheTime", 120L);
    E = b(paramJSONObject.optJSONArray("impUrls"));
    F = b(paramJSONObject.optJSONArray("cUrls"));
  }
  
  public AdData(String paramString1, int paramInt, String paramString2, String paramString3, JSONObject paramJSONObject, long paramLong)
  {
    this(paramString1, paramInt, paramString2, paramString3, paramJSONObject);
    B = paramLong;
  }
  
  public static AdData a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    AdData localAdData = new AdData();
    w = ag.b(paramContext);
    x = 64535;
    a = paramInt;
    v = "directflow";
    y = "directflow";
    b = paramString1;
    c = paramString2;
    h = paramString3;
    m = 1;
    return localAdData;
  }
  
  public static AdData a(JSONObject paramJSONObject)
  {
    AdData localAdData = new AdData();
    D = paramJSONObject.optString("channel");
    a = paramJSONObject.optLong("id");
    b = paramJSONObject.optString("name");
    c = paramJSONObject.optString("pkg");
    d = paramJSONObject.optString("desc");
    e = paramJSONObject.optString("sdesc");
    f = paramJSONObject.optInt("pos");
    m = paramJSONObject.optInt("opentype");
    n = paramJSONObject.optString("urlsource");
    g = paramJSONObject.optString("icon");
    h = paramJSONObject.optString("playurl");
    k = ((float)paramJSONObject.optDouble("pts"));
    l = paramJSONObject.optInt("points");
    o = paramJSONObject.optLong("down");
    p = paramJSONObject.optInt("adtype");
    q = ((float)paramJSONObject.optDouble("rating"));
    v = paramJSONObject.optString("logId");
    w = paramJSONObject.optString("license");
    x = paramJSONObject.optInt("sid");
    y = paramJSONObject.optString("sType", "native");
    r = paramJSONObject.optInt("label");
    z = paramJSONObject.optInt("preClick");
    u = paramJSONObject.optString("cate");
    E = b(paramJSONObject.optJSONArray("impUrls"));
    F = b(paramJSONObject.optJSONArray("cUrls"));
    G = paramJSONObject.optInt("pp", 0);
    return localAdData;
  }
  
  public static String a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return "";
    }
    int i1 = 0;
    int i2 = paramJSONArray.length();
    while (i1 < i2)
    {
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i1);
      if (localJSONObject != null) {
        return localJSONObject.optString("url", "");
      }
      i1 += 1;
    }
    return "";
  }
  
  public static JSONObject a(AdData paramAdData)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("channel", D);
    localJSONObject.put("id", a);
    localJSONObject.put("name", b);
    localJSONObject.put("pkg", c);
    localJSONObject.put("desc", d);
    localJSONObject.put("sdesc", e);
    localJSONObject.put("pos", f);
    localJSONObject.put("opentype", m);
    localJSONObject.put("urlsource", n);
    localJSONObject.put("icon", g);
    localJSONObject.put("playurl", h);
    localJSONObject.put("pts", k);
    localJSONObject.put("points", l);
    localJSONObject.put("down", o);
    localJSONObject.put("adtype", p);
    localJSONObject.put("rating", q);
    localJSONObject.put("logId", v);
    localJSONObject.put("license", w);
    localJSONObject.put("sid", x);
    localJSONObject.put("sType", y);
    localJSONObject.put("label", r);
    localJSONObject.put("preClick", z);
    localJSONObject.put("cate", u);
    localJSONObject.put("impUrls", E);
    localJSONObject.put("cUrls", F);
    localJSONObject.put("pp", G);
    return localJSONObject;
  }
  
  public static boolean a(Context paramContext, AdData paramAdData)
  {
    return z > 0;
  }
  
  private static String[] b(JSONArray paramJSONArray)
  {
    if (paramJSONArray != null)
    {
      int i2 = paramJSONArray.length();
      String[] arrayOfString2 = new String[i2];
      int i1 = 0;
      for (;;)
      {
        arrayOfString1 = arrayOfString2;
        if (i1 >= i2) {
          return arrayOfString1;
        }
        try
        {
          arrayOfString2[i1] = paramJSONArray.getString(i1);
          i1 += 1;
        }
        catch (JSONException paramJSONArray)
        {
          paramJSONArray.printStackTrace();
        }
      }
    }
    String[] arrayOfString1 = null;
    return arrayOfString1;
  }
  
  public boolean a()
  {
    return System.currentTimeMillis() - B <= C * 60L * 1000L;
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
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (AdData)paramObject;
        if (c == null)
        {
          if (c != null) {
            return false;
          }
        }
        else if (!c.equals(c)) {
          return false;
        }
        if (h != null) {
          break;
        }
      } while (h == null);
      return false;
    } while (h.equals(h));
    return false;
  }
  
  public int hashCode()
  {
    int i2 = 0;
    int i1;
    if (c == null)
    {
      i1 = 0;
      if (h != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i1 + 31) * 31 + i2;
      i1 = c.hashCode();
      break;
      label39:
      i2 = h.hashCode();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeLong(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeInt(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    if (i)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!j) {
        break label278;
      }
    }
    label278:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeFloat(k);
      paramParcel.writeInt(l);
      paramParcel.writeInt(m);
      paramParcel.writeString(n);
      paramParcel.writeLong(o);
      paramParcel.writeInt(p);
      paramParcel.writeFloat(q);
      paramParcel.writeInt(r);
      paramParcel.writeString(u);
      paramParcel.writeInt(z);
      paramParcel.writeString(s);
      paramParcel.writeString(t);
      paramParcel.writeString(v);
      paramParcel.writeString(w);
      paramParcel.writeInt(x);
      paramParcel.writeString(y);
      paramParcel.writeString(A);
      paramParcel.writeLong(C);
      paramParcel.writeLong(B);
      paramParcel.writeStringArray(E);
      paramParcel.writeStringArray(F);
      paramParcel.writeInt(G);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.AdData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */