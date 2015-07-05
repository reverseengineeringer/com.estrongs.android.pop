package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.view.ea;
import com.estrongs.fs.h;

class n
  extends ea
{
  public n(j paramj, Activity paramActivity)
  {
    super(paramActivity);
    Object localObject = (ImageView)k(2131361829);
    TextView localTextView4 = (TextView)k(2131361830);
    TextView localTextView1 = (TextView)k(2131361835);
    TextView localTextView2 = (TextView)k(2131361840);
    TextView localTextView3 = (TextView)k(2131361842);
    ((ImageView)localObject).setImageDrawable(f.e(a));
    localTextView4.setText(a.getName());
    paramActivity = paramActivity.getPackageManager();
    localObject = w.c(paramActivity, a.getAbsolutePath());
    if (localObject != null)
    {
      j.a(paramj, packageName);
      localTextView1.setText(versionName + "(" + versionCode + ")");
      localTextView2.setText(com.estrongs.fs.util.j.c(a.length()));
      localTextView3.setText(j.b(paramj));
    }
    try
    {
      paramj = paramActivity.getPackageInfo(j.b(paramj), 8192);
      if (paramj != null)
      {
        k(2131361831).setVisibility(0);
        ((TextView)k(2131361832)).setText(l(2131428248) + ":");
        ((TextView)k(2131361833)).setText(w.a(paramActivity, applicationInfo));
        k(2131361836).setVisibility(0);
        ((TextView)k(2131361837)).setText(l(2131427695) + ":");
        ((TextView)k(2131361838)).setText(versionName + " (" + versionCode + ")");
      }
      return;
    }
    catch (Exception paramj) {}
  }
  
  protected int a()
  {
    return 2130903044;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */