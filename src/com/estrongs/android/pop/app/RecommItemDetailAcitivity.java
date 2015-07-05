package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.y;
import com.estrongs.fs.util.j;

public class RecommItemDetailAcitivity
  extends ESActivity
{
  private ProgressBar a;
  private al b;
  private View c;
  private v d;
  private kn e;
  private int f;
  private boolean g = false;
  private Handler h;
  private Gallery i;
  private View.OnClickListener j = new kl(this);
  private Handler k = new km(this);
  
  private void a()
  {
    int m = 0;
    while (m < d.l.length)
    {
      if (d.l[m] != null)
      {
        d.l[m].recycle();
        d.l[m] = null;
      }
      m += 1;
    }
  }
  
  private void a(Gallery paramGallery)
  {
    int m = ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
    int n = a.a(this, 100.0F);
    int i1 = a.a(this, 6.0F);
    if (m <= n) {}
    for (m = m / 2 - n / 2 - i1;; m = m - n - i1 * 2)
    {
      paramGallery = (ViewGroup.MarginLayoutParams)paramGallery.getLayoutParams();
      paramGallery.setMargins(-m, topMargin, rightMargin, bottomMargin);
      return;
    }
  }
  
  private void b()
  {
    Object localObject = (LinearLayout)findViewById(2131362678);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131362680);
    TextView localTextView1 = (TextView)findViewById(2131362681);
    localTextView1.setTextColor(b.i());
    TextView localTextView2 = (TextView)findViewById(2131362682);
    localTextView2.setTextColor(b.i());
    ProgressBar localProgressBar = (ProgressBar)findViewById(2131362683);
    Button localButton = (Button)findViewById(2131362684);
    TextView localTextView3 = (TextView)findViewById(2131362679);
    localTextView3.setTextColor(b.i());
    localLinearLayout.setVisibility(0);
    ((LinearLayout)localObject).setVisibility(8);
    long l1;
    long l2;
    if (d.q == 1)
    {
      localButton.setText(getText(2131427358));
      l1 = d.t;
      l2 = d.u;
      localTextView1.setText(j.c(l2) + "/" + j.c(l1));
      if (l1 == 0L)
      {
        m = 0;
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(m);
        localTextView2.setText(m / 10 + "%");
      }
    }
    do
    {
      return;
      m = (int)(l2 * 1000L / l1);
      break;
      if (d.q == 0)
      {
        localTextView1.setText(getText(2131427447));
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(0);
        localTextView2.setText("0%");
        if (d.v == 0) {
          d.v = n.b().b(d);
        }
        if ((d.v == 0) || (d.v == 1)) {
          if (d.c() != null)
          {
            localButton.setText(getText(2131427608));
            localButton.setBackgroundResource(2130837589);
          }
        }
        for (;;)
        {
          localLinearLayout.setVisibility(8);
          ((LinearLayout)localObject).setVisibility(0);
          localTextView3.setText(d.c);
          return;
          localButton.setText(getText(2131427359));
          break;
          if (d.v == 2)
          {
            localButton.setText(getText(2131427609));
            localButton.setBackgroundResource(2130837589);
          }
          else if (d.v == 3)
          {
            localButton.setText(getText(2131427610));
            localButton.setBackgroundResource(2130837591);
          }
        }
      }
      if (d.q == 2)
      {
        localTextView1.setText(getText(2131427613));
        l1 = d.t;
        l2 = d.u;
        if (l1 == 0L) {}
        for (m = 0;; m = (int)(l2 * 1000L / l1))
        {
          localProgressBar.setMax(1000);
          localProgressBar.setProgress(m);
          localTextView2.setText(m / 10 + "%");
          localButton.setText(getText(2131427397));
          localButton.setBackgroundResource(2130837589);
          return;
        }
      }
      if (d.q == 3)
      {
        localObject = j.c(d.t);
        localTextView1.setText((String)localObject + "/" + (String)localObject);
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(1000);
        localTextView2.setText("100%");
        localButton.setText(getText(2131427612));
        localButton.setBackgroundResource(2130837589);
        return;
      }
      if (d.q == 5)
      {
        localTextView1.setText(getText(2131427447));
        localButton.setText(getText(2131427358));
        localButton.setBackgroundResource(2130837590);
        return;
      }
    } while (d.q != 4);
    localTextView1.setText(j.c(d.u) + "/" + j.c(d.t));
    if (d.t == 0L) {}
    for (int m = 0;; m = (int)(d.u * 1000L / d.t))
    {
      localProgressBar.setMax(1000);
      localProgressBar.setProgress(m);
      localTextView2.setText(m / 10 + "%");
      localButton.setText(getText(2131427611));
      return;
    }
  }
  
  private void b(int paramInt)
  {
    Message localMessage = new Message();
    arg1 = 123465;
    arg2 = paramInt;
    k.sendMessage(localMessage);
  }
  
  public void a(int paramInt)
  {
    n.b().a(d, 0);
    if (g) {
      return;
    }
    b();
  }
  
  public void a(Object paramObject)
  {
    if (g) {}
    do
    {
      return;
      paramObject = (y)paramObject;
    } while (d.k == null);
    ((ImageView)findViewById(2131362677)).setImageBitmap(d.k);
  }
  
  public void b(Object paramObject)
  {
    paramObject = (y)paramObject;
    if (g) {
      return;
    }
    b();
  }
  
  public void c(Object paramObject)
  {
    paramObject = (y)paramObject;
    if (g) {
      return;
    }
    b();
  }
  
  public void d(Object paramObject)
  {
    paramObject = (y)paramObject;
    if (g) {
      return;
    }
    b();
  }
  
  public void e(Object paramObject)
  {
    paramObject = (y)paramObject;
    if (g) {
      return;
    }
    b();
    startActivity(b.a(n.a(d.f)));
  }
  
  public void f(Object paramObject)
  {
    paramObject = (Integer)e;
    e.notifyDataSetChanged();
    if (bd.a(d.m, ((Integer)paramObject).intValue())) {
      d.m[paramObject.intValue()] = null;
    }
  }
  
  public void finish()
  {
    super.finish();
    n.b().a(h);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    f = getIntent().getIntExtra("position", -1);
    paramBundle = n.b().d();
    Object localObject;
    if (paramBundle.length > f)
    {
      d = paramBundle[f];
      setContentView(2130903234);
      b = al.a(this);
      int m = getIntent().getIntExtra("com.estrongs.intent.extra.TITLE", -1);
      if (m != -1) {
        ((TextView)findViewById(2131362672)).setText(m);
      }
      c = findViewById(2131362670);
      ((ImageView)findViewById(2131362671)).setOnClickListener(new ki(this));
      a = ((ProgressBar)findViewById(2131362673));
      i = ((Gallery)findViewById(2131362422));
      i.setSpacing(6);
      e = new kn(this, this);
      i.setAdapter(e);
      a(i);
      i.setOnItemClickListener(new kj(this));
      localObject = (TextView)findViewById(2131362679);
      ((TextView)localObject).setTextColor(b.i());
      paramBundle = (ImageView)findViewById(2131362677);
      TextView localTextView1 = (TextView)findViewById(2131362687);
      localTextView1.setTextColor(b.i());
      TextView localTextView2 = (TextView)findViewById(2131362690);
      localTextView2.setTextColor(b.i());
      TextView localTextView3 = (TextView)findViewById(2131362686);
      TextView localTextView4 = (TextView)findViewById(2131362688);
      TextView localTextView5 = (TextView)findViewById(2131362689);
      localTextView3.setTextColor(b.i());
      localTextView4.setTextColor(b.i());
      localTextView5.setTextColor(b.i());
      ((TextView)localObject).setText(d.c);
      localTextView1.setText(d.i);
      localTextView4.setText(d.s);
      localTextView2.setText(d.h);
      localObject = n.b().d(d);
      if (localObject != null) {
        break label488;
      }
      paramBundle.setImageResource(2130837647);
    }
    for (;;)
    {
      paramBundle = (TextView)findViewById(2131362684);
      paramBundle.setTextColor(b.i());
      paramBundle.setOnClickListener(j);
      h = n.b().a(k);
      b();
      return;
      finish();
      return;
      label488:
      paramBundle.setImageBitmap((Bitmap)localObject);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a();
      i.setAdapter(new kk(this));
      n.b().a(h);
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