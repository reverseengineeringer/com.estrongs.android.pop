package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.bk;
import com.estrongs.fs.util.j;
import java.util.Iterator;
import java.util.List;

public class RecommItemDetailAcitivity
  extends HomeAsBackActivity
{
  private ProgressBar a;
  private at b;
  private v c;
  private lc d;
  private int e;
  private boolean f = false;
  private Handler g;
  private Gallery h;
  private View.OnClickListener i = new ky(this);
  private Handler j = new lb(this);
  
  private void a(Gallery paramGallery)
  {
    int k = ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
    int m = g.a(this, 100.0F);
    int n = g.a(this, 6.0F);
    if (k <= m) {}
    for (k = k / 2 - m / 2 - n;; k = k - m - n * 2)
    {
      paramGallery = (ViewGroup.MarginLayoutParams)paramGallery.getLayoutParams();
      paramGallery.setMargins(-k, topMargin, rightMargin, bottomMargin);
      return;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    Object localObject;
    if (!paramString1.startsWith("market://"))
    {
      localObject = paramString2;
      if (paramString2 != null) {}
    }
    else
    {
      localObject = paramString1;
    }
    paramString1 = new Intent("android.intent.action.VIEW");
    paramString1.setData(Uri.parse((String)localObject));
    if (((String)localObject).startsWith("market://"))
    {
      paramString2 = getPackageManager().queryIntentActivities(paramString1, 0).iterator();
      while (paramString2.hasNext())
      {
        localObject = (ResolveInfo)paramString2.next();
        if ("com.android.vending".equals(activityInfo.applicationInfo.packageName)) {
          paramString1.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
        }
      }
    }
    try
    {
      startActivity(paramString1);
      n.b();
      n.d(c);
      if (c.q == 6) {
        c.q = 7;
      }
      return;
    }
    catch (ActivityNotFoundException paramString1)
    {
      do
      {
        ak.a(this, getText(2131231690), 1);
      } while (c.q != 6);
      c.q = 0;
    }
  }
  
  private void b(int paramInt)
  {
    Message localMessage = new Message();
    arg1 = 123465;
    arg2 = paramInt;
    j.sendMessage(localMessage);
  }
  
  private void d()
  {
    int k = 0;
    while (k < c.l.length)
    {
      if (c.l[k] != null)
      {
        c.l[k].recycle();
        c.l[k] = null;
      }
      k += 1;
    }
  }
  
  private void e()
  {
    Object localObject = (LinearLayout)findViewById(2131625446);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131625448);
    TextView localTextView1 = (TextView)findViewById(2131625449);
    localTextView1.setTextColor(b.i());
    TextView localTextView2 = (TextView)findViewById(2131625450);
    localTextView2.setTextColor(b.i());
    ProgressBar localProgressBar = (ProgressBar)findViewById(2131625451);
    Button localButton = (Button)findViewById(2131625452);
    TextView localTextView3 = (TextView)findViewById(2131625447);
    localTextView3.setTextColor(b.i());
    localTextView3.setText(c.c);
    localLinearLayout.setVisibility(0);
    ((LinearLayout)localObject).setVisibility(8);
    long l1;
    long l2;
    int k;
    if (c.q == 1)
    {
      localButton.setText(getText(2131230897));
      l1 = c.t;
      l2 = c.u;
      localTextView1.setText(j.c(l2) + "/" + j.c(l1));
      if (l1 == 0L)
      {
        k = 0;
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(k);
        localTextView2.setText(k / 10 + "%");
      }
    }
    do
    {
      return;
      k = (int)(l2 * 1000L / l1);
      break;
      if (c.q == 0)
      {
        localTextView1.setText(getText(2131232170));
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(0);
        localTextView2.setText("0%");
        if (c.v == 0) {
          c.v = n.b().b(c);
        }
        if ((c.v == 0) || (c.v == 1)) {
          if (c.c() != null)
          {
            localButton.setText(getText(2131232247));
            localButton.setBackgroundResource(2130837824);
          }
        }
        for (;;)
        {
          localLinearLayout.setVisibility(8);
          ((LinearLayout)localObject).setVisibility(0);
          localTextView3.setText(c.c);
          return;
          localButton.setText(getText(2131230847));
          break;
          if (c.v == 2)
          {
            localButton.setText(getText(2131232248));
            localButton.setBackgroundResource(2130837824);
          }
          else if (c.v == 3)
          {
            localButton.setText(getText(2131232246));
            localButton.setBackgroundResource(2130837826);
          }
        }
      }
      if (c.q == 2)
      {
        localTextView1.setText(getText(2131232245));
        l1 = c.t;
        l2 = c.u;
        if (l1 == 0L) {}
        for (k = 0;; k = (int)(l2 * 1000L / l1))
        {
          localProgressBar.setMax(1000);
          localProgressBar.setProgress(k);
          localTextView2.setText(k / 10 + "%");
          localButton.setText(getText(2131231723));
          localButton.setBackgroundResource(2130837824);
          return;
        }
      }
      if (c.q == 3)
      {
        localObject = j.c(c.t);
        localTextView1.setText((String)localObject + "/" + (String)localObject);
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(1000);
        localTextView2.setText("100%");
        localButton.setText(getText(2131231096));
        localButton.setBackgroundResource(2130837824);
        return;
      }
      if (c.q == 5)
      {
        localTextView1.setText(getText(2131232170));
        localButton.setText(getText(2131230897));
        localButton.setBackgroundResource(2130837825);
        return;
      }
      if (c.q == 4)
      {
        localTextView1.setText(j.c(c.u) + "/" + j.c(c.t));
        if (c.t == 0L) {}
        for (k = 0;; k = (int)(c.u * 1000L / c.t))
        {
          localProgressBar.setMax(1000);
          localProgressBar.setProgress(k);
          localTextView2.setText(k / 10 + "%");
          localButton.setText(getText(2131232244));
          return;
        }
      }
    } while ((c.q != 7) && (c.q != 6));
    localLinearLayout.setVisibility(8);
    ((LinearLayout)localObject).setVisibility(0);
    localButton.setText(getText(2131232247));
    if (c.q == 6)
    {
      localButton.setVisibility(8);
      findViewById(2131624391).setVisibility(0);
      return;
    }
    localButton.setVisibility(0);
    findViewById(2131624391).setVisibility(8);
  }
  
  public void a(int paramInt)
  {
    n.b().a(c, 0);
    if (f) {
      return;
    }
    e();
  }
  
  public void a(Object paramObject)
  {
    if (f) {}
    do
    {
      return;
      paramObject = (aa)paramObject;
    } while (c.k == null);
    ((ImageView)findViewById(2131625445)).setImageBitmap(c.k);
  }
  
  public void b(Object paramObject)
  {
    paramObject = (aa)paramObject;
    if (f) {
      return;
    }
    e();
  }
  
  public void c(Object paramObject)
  {
    paramObject = (aa)paramObject;
    if (f) {
      return;
    }
    e();
  }
  
  public void d(Object paramObject)
  {
    paramObject = (aa)paramObject;
    if (f) {
      return;
    }
    e();
  }
  
  public void e(Object paramObject)
  {
    paramObject = (aa)paramObject;
    if (f) {
      return;
    }
    e();
    startActivity(b.a(n.a(c.f)));
  }
  
  public void f(Object paramObject)
  {
    paramObject = (Integer)e;
    d.notifyDataSetChanged();
    if (bk.a(c.m, ((Integer)paramObject).intValue())) {
      c.m[paramObject.intValue()] = null;
    }
  }
  
  public void finish()
  {
    super.finish();
    n.b().a(g);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = getIntent().getIntExtra("position", -1);
    paramBundle = n.b().d();
    Object localObject;
    if (paramBundle.length > e)
    {
      c = paramBundle[e];
      setContentView(2130903400);
      b = J();
      int k = getIntent().getIntExtra("com.estrongs.intent.extra.TITLE", -1);
      if (k == -1) {
        break label443;
      }
      setTitle(k);
      a = ((ProgressBar)findViewById(2131625439));
      h = ((Gallery)findViewById(2131625034));
      h.setSpacing(6);
      d = new lc(this, this);
      h.setAdapter(d);
      a(h);
      h.setOnItemClickListener(new kw(this));
      localObject = (TextView)findViewById(2131625447);
      ((TextView)localObject).setTextColor(b.i());
      paramBundle = (ImageView)findViewById(2131625445);
      TextView localTextView1 = (TextView)findViewById(2131625455);
      localTextView1.setTextColor(b.i());
      TextView localTextView2 = (TextView)findViewById(2131625458);
      localTextView2.setTextColor(b.i());
      TextView localTextView3 = (TextView)findViewById(2131625454);
      TextView localTextView4 = (TextView)findViewById(2131625456);
      TextView localTextView5 = (TextView)findViewById(2131625457);
      localTextView3.setTextColor(b.i());
      localTextView4.setTextColor(b.i());
      localTextView5.setTextColor(b.i());
      ((TextView)localObject).setText(c.c);
      localTextView1.setText(c.i);
      localTextView4.setText(c.s);
      localTextView2.setText(c.h);
      localObject = n.b().e(c);
      if (localObject != null) {
        break label453;
      }
      paramBundle.setImageResource(2130837895);
    }
    for (;;)
    {
      paramBundle = (TextView)findViewById(2131625452);
      paramBundle.setTextColor(b.i());
      paramBundle.setOnClickListener(i);
      g = n.b().a(j);
      e();
      return;
      finish();
      return;
      label443:
      setTitle(2131232250);
      break;
      label453:
      paramBundle.setImageBitmap((Bitmap)localObject);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      d();
      h.setAdapter(new kx(this));
      n.b().a(g);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  public void startActivity(Intent paramIntent)
  {
    try
    {
      super.startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException paramIntent) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.RecommItemDetailAcitivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */