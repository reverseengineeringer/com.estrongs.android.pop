package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class i<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final h<T> a;
  
  public i(h<T> paramh)
  {
    a = paramh;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.createFromParcel(paramParcel, null);
  }
  
  public T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return (T)a.createFromParcel(paramParcel, paramClassLoader);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.newArray(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */