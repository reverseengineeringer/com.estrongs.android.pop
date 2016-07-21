package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@me
public class qk
  extends MutableContextWrapper
{
  private Activity a;
  private Context b;
  private Context c;
  
  public qk(Context paramContext)
  {
    super(paramContext);
    setBaseContext(paramContext);
  }
  
  public Activity a()
  {
    return a;
  }
  
  public Context b()
  {
    return c;
  }
  
  public Object getSystemService(String paramString)
  {
    return c.getSystemService(paramString);
  }
  
  public void setBaseContext(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    if ((paramContext instanceof Activity)) {}
    for (Activity localActivity = (Activity)paramContext;; localActivity = null)
    {
      a = localActivity;
      c = paramContext;
      super.setBaseContext(b);
      return;
    }
  }
  
  public void startActivity(Intent paramIntent)
  {
    if ((a != null) && (!tm.i()))
    {
      a.startActivity(paramIntent);
      return;
    }
    paramIntent.setFlags(268435456);
    b.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */