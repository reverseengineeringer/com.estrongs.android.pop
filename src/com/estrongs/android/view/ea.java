package com.estrongs.android.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;

public abstract class ea
{
  protected Activity ad;
  protected Context ae;
  protected View af;
  protected LayoutInflater ag;
  protected eb ah;
  
  public ea(Activity paramActivity)
  {
    this(paramActivity, null, true);
  }
  
  public ea(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ad = paramActivity;
    a(paramViewGroup, paramBoolean);
  }
  
  public ea(Context paramContext)
  {
    this(paramContext, null, true);
  }
  
  public ea(Context paramContext, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ae = paramContext;
    a(paramViewGroup, paramBoolean);
  }
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ag = g.a(ar());
    if (paramBoolean) {
      af = ag.inflate(a(), paramViewGroup);
    }
    do
    {
      return;
      af = paramViewGroup.findViewById(a());
    } while (af != null);
    af = paramViewGroup;
  }
  
  protected abstract int a();
  
  public void a(int paramInt1, int paramInt2)
  {
    TextView localTextView = n(paramInt1);
    if (localTextView != null) {
      localTextView.setText(l(paramInt2));
    }
  }
  
  public void a(Intent paramIntent)
  {
    try
    {
      ar().startActivity(paramIntent);
      return;
    }
    catch (Exception localException)
    {
      ag.a(ar(), "Failed to start the activity: " + paramIntent, 1);
    }
  }
  
  public void a(eb parameb)
  {
    ah = parameb;
  }
  
  public void a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int j = paramArrayOfInt1.length;
    int i = 0;
    while (i < j)
    {
      a(paramArrayOfInt1[i], paramArrayOfInt2[i]);
      i += 1;
    }
  }
  
  public View aq()
  {
    return af;
  }
  
  public Context ar()
  {
    if (ad != null) {
      return ad;
    }
    return ae;
  }
  
  protected View k(int paramInt)
  {
    return af.findViewById(paramInt);
  }
  
  protected String l(int paramInt)
  {
    return ar().getResources().getString(paramInt);
  }
  
  protected String m(int paramInt)
  {
    return ar().getText(paramInt).toString();
  }
  
  protected TextView n(int paramInt)
  {
    return (TextView)k(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */