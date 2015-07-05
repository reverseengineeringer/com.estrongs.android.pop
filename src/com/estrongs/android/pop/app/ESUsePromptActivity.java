package com.estrongs.android.pop.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.a;
import com.estrongs.fs.util.j;

public class ESUsePromptActivity
  extends ESActivity
{
  a a = null;
  cg b = null;
  
  private cg a()
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
        Object localObject1 = g.a(this).inflate(2130903120, null);
        Object localObject3 = (ImageView)((View)localObject1).findViewById(2131361853);
        Object localObject2 = (TextView)((View)localObject1).findViewById(2131361808);
        localProgressBar = (ProgressBar)((View)localObject1).findViewById(2131361935);
        localTextView1 = (TextView)((View)localObject1).findViewById(2131361981);
        localTextView2 = (TextView)((View)localObject1).findViewById(2131361982);
        ((ImageView)localObject3).setImageResource(2130837869);
        ((View)localObject1).findViewById(2131361980).setClickable(false);
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
          localObject1 = new ct(this).a(2131427488).a((View)localObject1).b(false);
          ((ct)localObject1).b(2131427339, new bu(this));
          ((ct)localObject1).c(2131427340, new bv(this));
          ((ct)localObject1).a(new bw(this));
          return ((ct)localObject1).b();
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
    requestWindowFeature(1);
    ad.a(FexApplication.a()).j(System.currentTimeMillis());
    a = a.a(this, false, "Shadow");
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
    if (a != null) {
      a.c();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (a != null) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESUsePromptActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */