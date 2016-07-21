package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.a;

@Deprecated
public abstract interface i<ADDITIONAL_PARAMETERS extends n, SERVER_PARAMETERS extends MediationServerParameters>
  extends h<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract void a(j paramj, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, a parama, g paramg, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
  
  public abstract View d();
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */