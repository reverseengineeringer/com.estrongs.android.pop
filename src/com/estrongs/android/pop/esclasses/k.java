package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.d.b;

public class k
  extends LayoutInflater
{
  private LayoutInflater a;
  
  public k(LayoutInflater paramLayoutInflater, Context paramContext)
  {
    super(paramLayoutInflater, paramContext);
    a = paramLayoutInflater;
  }
  
  public static LayoutInflater a(Context paramContext)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    if ((localLayoutInflater instanceof k)) {
      return localLayoutInflater;
    }
    return new k(localLayoutInflater, paramContext);
  }
  
  public LayoutInflater cloneInContext(Context paramContext)
  {
    return new k(this, paramContext);
  }
  
  public View inflate(int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    paramViewGroup = a.inflate(paramInt, paramViewGroup, paramBoolean);
    if ((getContext() instanceof b)) {
      new l((b)getContext()).a(paramInt, paramViewGroup);
    }
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */