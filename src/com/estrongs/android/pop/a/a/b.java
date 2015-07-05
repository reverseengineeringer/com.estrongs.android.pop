package com.estrongs.android.pop.a.a;

import android.os.Binder;
import android.os.Parcel;

public abstract class b
  extends Binder
  implements a
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int j = 0;
    int i = 0;
    boolean bool;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      if (paramParcel1.readInt() != 0) {}
      for (bool = true;; bool = false)
      {
        bool = a(bool);
        paramParcel2.writeNoException();
        paramInt1 = i;
        if (bool) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 2: 
      paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      paramParcel1 = a(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      b(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      c(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
      bool = a();
      paramParcel2.writeNoException();
      paramInt1 = j;
      if (bool) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    }
    paramParcel1.enforceInterface("com.estrongs.android.permmgrservice.service.IESPermMgrService");
    paramInt1 = b();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */