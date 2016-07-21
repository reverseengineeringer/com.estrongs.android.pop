package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class g<T>
  implements Parcelable.Creator<T>
{
  final h<T> a;
  
  public g(h<T> paramh)
  {
    a = paramh;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.createFromParcel(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.newArray(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */