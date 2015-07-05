package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new d();
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;
  
  public BackStackState(Parcel paramParcel)
  {
    a = paramParcel.createIntArray();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readInt();
    f = paramParcel.readInt();
    g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    h = paramParcel.readInt();
    i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }
  
  public BackStackState(n paramn, b paramb)
  {
    paramn = b;
    int k;
    for (int j = 0; paramn != null; j = k)
    {
      k = j;
      if (i != null) {
        k = j + i.size();
      }
      paramn = a;
    }
    a = new int[j + d * 7];
    if (!k) {
      throw new IllegalStateException("Not on back stack");
    }
    paramn = b;
    j = 0;
    if (paramn != null)
    {
      int[] arrayOfInt = a;
      k = j + 1;
      arrayOfInt[j] = c;
      arrayOfInt = a;
      int m = k + 1;
      if (d != null) {}
      for (j = d.f;; j = -1)
      {
        arrayOfInt[k] = j;
        arrayOfInt = a;
        j = m + 1;
        arrayOfInt[m] = e;
        arrayOfInt = a;
        k = j + 1;
        arrayOfInt[j] = f;
        arrayOfInt = a;
        j = k + 1;
        arrayOfInt[k] = g;
        arrayOfInt = a;
        k = j + 1;
        arrayOfInt[j] = h;
        if (i == null) {
          break label311;
        }
        m = i.size();
        arrayOfInt = a;
        j = k + 1;
        arrayOfInt[k] = m;
        k = 0;
        while (k < m)
        {
          a[j] = i.get(k)).f;
          k += 1;
          j += 1;
        }
      }
      for (;;)
      {
        paramn = a;
        break;
        label311:
        arrayOfInt = a;
        j = k + 1;
        arrayOfInt[k] = 0;
      }
    }
    b = i;
    c = j;
    d = m;
    e = o;
    f = p;
    g = q;
    h = r;
    i = s;
  }
  
  public b a(n paramn)
  {
    b localb = new b(paramn);
    int m = 0;
    int j = 0;
    while (j < a.length)
    {
      c localc = new c();
      Object localObject = a;
      int k = j + 1;
      c = localObject[j];
      if (n.a) {
        Log.v("FragmentManager", "Instantiate " + localb + " op #" + m + " base fragment #" + a[k]);
      }
      localObject = a;
      j = k + 1;
      k = localObject[k];
      if (k >= 0) {}
      for (d = ((Fragment)f.get(k));; d = null)
      {
        localObject = a;
        k = j + 1;
        e = localObject[j];
        localObject = a;
        j = k + 1;
        f = localObject[k];
        localObject = a;
        k = j + 1;
        g = localObject[j];
        localObject = a;
        j = k + 1;
        h = localObject[k];
        localObject = a;
        k = j + 1;
        int i1 = localObject[j];
        j = k;
        if (i1 <= 0) {
          break;
        }
        i = new ArrayList(i1);
        int n = 0;
        for (;;)
        {
          j = k;
          if (n >= i1) {
            break;
          }
          if (n.a) {
            Log.v("FragmentManager", "Instantiate " + localb + " set remove fragment #" + a[k]);
          }
          localObject = (Fragment)f.get(a[k]);
          i.add(localObject);
          n += 1;
          k += 1;
        }
      }
      localb.a(localc);
      m += 1;
    }
    i = b;
    j = c;
    m = d;
    o = e;
    k = true;
    p = f;
    q = g;
    r = h;
    s = i;
    localb.a(1);
    return localb;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(e);
    paramParcel.writeInt(f);
    TextUtils.writeToParcel(g, paramParcel, 0);
    paramParcel.writeInt(h);
    TextUtils.writeToParcel(i, paramParcel, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.BackStackState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */