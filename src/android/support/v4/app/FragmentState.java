package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new r();
  final String a;
  final int b;
  final boolean c;
  final int d;
  final int e;
  final String f;
  final boolean g;
  final boolean h;
  final Bundle i;
  Bundle j;
  Fragment k;
  
  public FragmentState(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readInt();
    if (paramParcel.readInt() != 0)
    {
      bool1 = true;
      c = bool1;
      d = paramParcel.readInt();
      e = paramParcel.readInt();
      f = paramParcel.readString();
      if (paramParcel.readInt() == 0) {
        break label110;
      }
      bool1 = true;
      label69:
      g = bool1;
      if (paramParcel.readInt() == 0) {
        break label115;
      }
    }
    label110:
    label115:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      h = bool1;
      i = paramParcel.readBundle();
      j = paramParcel.readBundle();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label69;
    }
  }
  
  public FragmentState(Fragment paramFragment)
  {
    a = paramFragment.getClass().getName();
    b = f;
    c = o;
    d = w;
    e = x;
    f = y;
    g = B;
    h = A;
    i = h;
  }
  
  public Fragment a(FragmentActivity paramFragmentActivity, Fragment paramFragment)
  {
    if (k != null) {
      return k;
    }
    if (i != null) {
      i.setClassLoader(paramFragmentActivity.getClassLoader());
    }
    k = Fragment.a(paramFragmentActivity, a, i);
    if (j != null)
    {
      j.setClassLoader(paramFragmentActivity.getClassLoader());
      k.d = j;
    }
    k.a(b, paramFragment);
    k.o = c;
    k.q = true;
    k.w = d;
    k.x = e;
    k.y = f;
    k.B = g;
    k.A = h;
    k.s = b;
    if (n.a) {
      Log.v("FragmentManager", "Instantiated fragment " + k);
    }
    return k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = 1;
    paramParcel.writeString(a);
    paramParcel.writeInt(b);
    if (c)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(d);
      paramParcel.writeInt(e);
      paramParcel.writeString(f);
      if (!g) {
        break label106;
      }
      paramInt = 1;
      label65:
      paramParcel.writeInt(paramInt);
      if (!h) {
        break label111;
      }
    }
    label106:
    label111:
    for (paramInt = m;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeBundle(i);
      paramParcel.writeBundle(j);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label65;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */