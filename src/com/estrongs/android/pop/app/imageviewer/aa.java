package com.estrongs.android.pop.app.imageviewer;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class aa
  implements Parcelable.Creator
{
  public ImageManager.ImageListParam a(Parcel paramParcel)
  {
    return new ImageManager.ImageListParam(paramParcel, null);
  }
  
  public ImageManager.ImageListParam[] a(int paramInt)
  {
    return new ImageManager.ImageListParam[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */