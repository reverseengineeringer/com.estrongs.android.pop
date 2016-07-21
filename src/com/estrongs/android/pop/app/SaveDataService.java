package com.estrongs.android.pop.app;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ad.a;
import com.estrongs.android.pop.app.ad.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SaveDataService
  extends Service
{
  private Handler a;
  
  private void a()
  {
    a = new Handler();
    try
    {
      b();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      a.postDelayed(new lf(this), 3000L);
    }
  }
  
  private void b()
  {
    Object localObject2 = (WindowManager)getSystemService("window");
    Object localObject3 = new WindowManager.LayoutParams();
    flags = 536;
    type = 2005;
    format = 1;
    alpha = 0.0F;
    width = 1;
    height = 1;
    y = 0;
    x = 0;
    Object localObject1 = new lg(this, FexApplication.a());
    ((WindowManager)localObject2).addView((View)localObject1, (ViewGroup.LayoutParams)localObject3);
    localObject3 = a.a().c();
    localObject2 = new ArrayList();
    localObject3 = ((List)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      j localj = (j)((Iterator)localObject3).next();
      View localView = localj.a();
      if (localView.getParent() != null) {
        ((ViewGroup)localView.getParent()).removeView(localView);
      }
      ((LinearLayout)localObject1).addView(localView);
      ((List)localObject2).add(localj);
    }
    localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (j)((Iterator)localObject1).next();
      a.a().a((j)localObject2, false);
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    a();
    return null;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    a();
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.SaveDataService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */