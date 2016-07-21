package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new av();
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
    b = mIndex;
    c = mFromLayout;
    d = mFragmentId;
    e = mContainerId;
    f = mTag;
    g = mRetainInstance;
    h = mDetached;
    i = mArguments;
  }
  
  public Fragment a(ai paramai, Fragment paramFragment)
  {
    if (k != null) {
      return k;
    }
    Context localContext = paramai.i();
    if (i != null) {
      i.setClassLoader(localContext.getClassLoader());
    }
    k = Fragment.instantiate(localContext, a, i);
    if (j != null)
    {
      j.setClassLoader(localContext.getClassLoader());
      k.mSavedFragmentState = j;
    }
    k.setIndex(b, paramFragment);
    k.mFromLayout = c;
    k.mRestored = true;
    k.mFragmentId = d;
    k.mContainerId = e;
    k.mTag = f;
    k.mRetainInstance = g;
    k.mDetached = h;
    k.mFragmentManager = d;
    if (al.a) {
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