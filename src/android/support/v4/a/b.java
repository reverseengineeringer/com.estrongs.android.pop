package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class b<T>
  implements Parcelable.Creator<T>
{
  final c<T> a;
  
  public b(c<T> paramc)
  {
    a = paramc;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */