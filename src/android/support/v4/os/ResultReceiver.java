package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public class ResultReceiver
  implements Parcelable
{
  public static final Parcelable.Creator<ResultReceiver> CREATOR = new k();
  final boolean b = false;
  final Handler c = null;
  c d;
  
  ResultReceiver(Parcel paramParcel)
  {
    d = d.a(paramParcel.readStrongBinder());
  }
  
  protected void a(int paramInt, Bundle paramBundle) {}
  
  public void b(int paramInt, Bundle paramBundle)
  {
    if (b) {
      if (c != null) {
        c.post(new m(this, paramInt, paramBundle));
      }
    }
    while (d == null)
    {
      return;
      a(paramInt, paramBundle);
      return;
    }
    try
    {
      d.a(paramInt, paramBundle);
      return;
    }
    catch (RemoteException paramBundle) {}
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    try
    {
      if (d == null) {
        d = new l(this);
      }
      paramParcel.writeStrongBinder(d.asBinder());
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.ResultReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */