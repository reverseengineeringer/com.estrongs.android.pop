package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.ViewGroup;
import com.estrongs.a.a.m;
import org.json.JSONObject;

class g
  extends a
{
  g(f paramf, Activity paramActivity, ViewGroup paramViewGroup)
  {
    super(paramActivity, paramViewGroup);
  }
  
  protected int a()
  {
    return 2131362745;
  }
  
  protected String a(m arg1)
  {
    synchronized (f.a(i))
    {
      Object localObject1 = f.b(i);
      if (localObject1 != null) {
        try
        {
          localObject1 = f.b(i).summary().optString("title");
          return (String)localObject1;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */