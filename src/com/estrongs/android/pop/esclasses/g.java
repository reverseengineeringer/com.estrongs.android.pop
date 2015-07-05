package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.FexApplication;

public class g
  extends LayoutInflater
{
  private LayoutInflater a;
  
  public g(LayoutInflater paramLayoutInflater, Context paramContext)
  {
    super(paramLayoutInflater, paramContext);
    a = paramLayoutInflater;
  }
  
  public static LayoutInflater a(Context paramContext)
  {
    return new g(LayoutInflater.from(paramContext), paramContext);
  }
  
  public LayoutInflater cloneInContext(Context paramContext)
  {
    return new g(this, paramContext);
  }
  
  public View inflate(int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    paramViewGroup = a.inflate(paramInt, paramViewGroup, paramBoolean);
    if ((getContext() instanceof ESActivity)) {
      new h((ESActivity)getContext()).a(paramInt, paramViewGroup);
    }
    do
    {
      return paramViewGroup;
      if ((getContext() instanceof ESPreferenceActivity))
      {
        new h((ESPreferenceActivity)getContext()).a(paramInt, paramViewGroup);
        return paramViewGroup;
      }
    } while (!(getContext() instanceof FexApplication));
    new h((FexApplication)getContext()).a(paramInt, paramViewGroup);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */