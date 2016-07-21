package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView
  extends FrameLayout
{
  private final e a;
  private b b;
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new e(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    a();
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new e(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    a();
  }
  
  private void a()
  {
    setClickable(true);
  }
  
  @Deprecated
  public final b getMap()
  {
    if (b != null) {
      return b;
    }
    a.b();
    if (a.a() == null) {
      return null;
    }
    try
    {
      b = new b(((c)a.a()).a().a());
      return b;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */