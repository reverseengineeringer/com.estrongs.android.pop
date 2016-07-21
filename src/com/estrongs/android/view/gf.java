package com.estrongs.android.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.view.ak;

public abstract class gf
{
  protected Activity ag;
  protected Context ah;
  protected View ai;
  protected LayoutInflater aj;
  protected gg ak;
  
  public gf(Activity paramActivity)
  {
    this(paramActivity, null, true);
  }
  
  public gf(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ag = paramActivity;
    a(paramViewGroup, paramBoolean);
  }
  
  public gf(Context paramContext)
  {
    this(paramContext, null, true);
  }
  
  public gf(Context paramContext, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ah = paramContext;
    a(paramViewGroup, paramBoolean);
  }
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    aj = k.a(aF());
    if (paramBoolean) {
      ai = aj.inflate(a(), paramViewGroup);
    }
    do
    {
      return;
      ai = paramViewGroup.findViewById(a());
    } while (ai != null);
    ai = paramViewGroup;
  }
  
  protected abstract int a();
  
  public void a(int paramInt1, int paramInt2)
  {
    TextView localTextView = l(paramInt1);
    if (localTextView != null) {
      localTextView.setText(j(paramInt2));
    }
  }
  
  public void a(Intent paramIntent)
  {
    try
    {
      aF().startActivity(paramIntent);
      return;
    }
    catch (Exception localException)
    {
      ak.a(aF(), "Failed to start the activity: " + paramIntent, 1);
    }
  }
  
  public void a(gg paramgg)
  {
    ak = paramgg;
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
  
  public View aE()
  {
    return ai;
  }
  
  public Context aF()
  {
    if (ag != null) {
      return ag;
    }
    return ah;
  }
  
  protected View b(int paramInt)
  {
    return ai.findViewById(paramInt);
  }
  
  protected String j(int paramInt)
  {
    return aF().getResources().getString(paramInt);
  }
  
  protected String k(int paramInt)
  {
    return aF().getText(paramInt).toString();
  }
  
  protected TextView l(int paramInt)
  {
    return (TextView)b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */