package com.estrongs.android.appinfo;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class s
  implements Parcelable.Creator<AppFolderInfoManager.RemnantFolder>
{
  public AppFolderInfoManager.RemnantFolder a(Parcel paramParcel)
  {
    return new AppFolderInfoManager.RemnantFolder(paramParcel, null);
  }
  
  public AppFolderInfoManager.RemnantFolder[] a(int paramInt)
  {
    return new AppFolderInfoManager.RemnantFolder[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */