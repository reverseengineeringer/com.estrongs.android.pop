package com.estrongs.android.pop.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.fs.util.j;

public class ESUsePromptActivity
  extends ESResourceActivity
{
  c a = null;
  ci b = null;
  
  private ci a()
  {
    for (;;)
    {
      ProgressBar localProgressBar;
      TextView localTextView1;
      TextView localTextView2;
      long l1;
      long l2;
      try
      {
        Object localObject1 = k.a(this).inflate(2130903217, null);
        Object localObject3 = (ImageView)((View)localObject1).findViewById(2131624054);
        Object localObject2 = (TextView)((View)localObject1).findViewById(2131624135);
        localProgressBar = (ProgressBar)((View)localObject1).findViewById(2131624429);
        localTextView1 = (TextView)((View)localObject1).findViewById(2131624494);
        localTextView2 = (TextView)((View)localObject1).findViewById(2131624496);
        ((ImageView)localObject3).setImageResource(2130838169);
        ((View)localObject1).findViewById(2131623976).setClickable(false);
        localObject3 = b.b();
        ((TextView)localObject2).setText(z.b((String)localObject3));
        localObject2 = j.k((String)localObject3);
        l1 = (localObject2[0] - localObject2[1]) * localObject2[2];
        l2 = localObject2[0];
        l2 = localObject2[2] * l2;
        if ((l1 < 0L) || (l2 < 0L))
        {
          localTextView1.setText("0");
          localTextView2.setText("0");
          break label378;
          localProgressBar.setMax(100);
          localProgressBar.setProgress(0);
          label185:
          localObject1 = new cv(this).a(2131230724).a((View)localObject1).b(false);
          ((cv)localObject1).b(2131231270, new by(this));
          ((cv)localObject1).c(2131231265, new bz(this));
          ((cv)localObject1).a(new ca(this));
          return ((cv)localObject1).b();
        }
        else if (l2 > 2147483647L)
        {
          localTextView1.setText(j.c(l1));
          localTextView2.setText(j.c(l2));
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      localTextView1.setText(j.c(l1));
      localTextView2.setText(j.c(l2));
      label378:
      do
      {
        if (l2 > 2147483647L)
        {
          int i = (int)(l1 / 10000L);
          localProgressBar.setMax((int)(l2 / 10000L));
          localProgressBar.setProgress(i);
          break label185;
        }
        localProgressBar.setMax((int)l2);
        localProgressBar.setProgress((int)l1);
        break label185;
        if (l1 < 0L) {
          break;
        }
      } while (l2 >= 0L);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = c.a(this);
    b = a();
    if (b == null) {
      finish();
    }
    b.show();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if ((b != null) && (b.isShowing())) {
      b.dismiss();
    }
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESUsePromptActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */