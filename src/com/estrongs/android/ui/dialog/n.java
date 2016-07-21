package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.view.gf;
import com.estrongs.fs.h;

class n
  extends gf
{
  public n(j paramj, Activity paramActivity)
  {
    super(paramActivity);
    Object localObject = (ImageView)b(2131624328);
    TextView localTextView4 = (TextView)b(2131624329);
    TextView localTextView1 = (TextView)b(2131624334);
    TextView localTextView2 = (TextView)b(2131624339);
    TextView localTextView3 = (TextView)b(2131624341);
    e.a(a.getAbsolutePath(), (ImageView)localObject, a);
    localTextView4.setText(a.getName());
    paramActivity = paramActivity.getPackageManager();
    localObject = w.d(paramActivity, a.getAbsolutePath());
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
        b(2131624330).setVisibility(0);
        ((TextView)b(2131624331)).setText(j(2131232356) + ":");
        ((TextView)b(2131624332)).setText(w.a(paramActivity, applicationInfo));
        b(2131624335).setVisibility(0);
        ((TextView)b(2131624336)).setText(j(2131230999) + ":");
        ((TextView)b(2131624337)).setText(versionName + " (" + versionCode + ")");
      }
      return;
    }
    catch (Exception paramj) {}
  }
  
  protected int a()
  {
    return 2130903106;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */