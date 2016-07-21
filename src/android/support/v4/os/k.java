package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class k
  implements Parcelable.Creator<ResultReceiver>
{
  public ResultReceiver a(Parcel paramParcel)
  {
    return new ResultReceiver(paramParcel);
  }
  
  public ResultReceiver[] a(int paramInt)
  {
    return new ResultReceiver[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */