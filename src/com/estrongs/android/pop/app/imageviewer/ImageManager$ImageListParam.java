package com.estrongs.android.pop.app.imageviewer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ImageManager$ImageListParam
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new aa();
  public ImageManager.DataLocation a;
  public int b;
  public int c;
  public String d;
  public Uri e;
  public boolean f;
  
  public ImageManager$ImageListParam() {}
  
  private ImageManager$ImageListParam(Parcel paramParcel)
  {
    a = ImageManager.DataLocation.values()[paramParcel.readInt()];
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = ((Uri)paramParcel.readParcelable(null));
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return String.format("ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}", new Object[] { a, Integer.valueOf(b), Integer.valueOf(c), d, Boolean.valueOf(f), e });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a.ordinal());
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeParcelable(e, paramInt);
    if (f) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ImageManager.ImageListParam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */