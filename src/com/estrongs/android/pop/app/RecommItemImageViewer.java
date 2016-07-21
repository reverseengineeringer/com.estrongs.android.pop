package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.util.aa;
import com.estrongs.android.widget.RealViewSwitcher;

public class RecommItemImageViewer
  extends ESActivity
{
  protected RealViewSwitcher a;
  protected ViewGroup.LayoutParams b = new ViewGroup.LayoutParams(-1, -1);
  private v c;
  private int d;
  private int e;
  private Handler f;
  private SparseArray<ImageView> g = new SparseArray();
  private SparseArray<ImageView> h = new SparseArray();
  private int i;
  private Handler j = new le(this);
  
  private void a()
  {
    int k = 0;
    while (k < c.n.length)
    {
      if (c.n[k] != null)
      {
        c.n[k].recycle();
        c.n[k] = null;
      }
      k += 1;
    }
  }
  
  public void a(Object paramObject)
  {
    paramObject = (Integer)e;
    ((ImageView)g.get(((Integer)paramObject).intValue())).setImageBitmap(n.b().d(c, ((Integer)paramObject).intValue()));
    c.o[paramObject.intValue()] = null;
  }
  
  public void finish()
  {
    super.finish();
    n.b().a(f);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    int m = 0;
    super.onCreate(paramBundle);
    d = getIntent().getIntExtra("position", -1);
    e = getIntent().getIntExtra("index", -1);
    c = n.b().d()[d];
    i = e;
    setContentView(2130903401);
    f = n.b().a(j);
    paramBundle = (LinearLayout)findViewById(2131625460);
    int k = 0;
    ESImageView localESImageView;
    if (k < c.n.length)
    {
      localESImageView = new ESImageView(this);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(15, 15);
      if (k >= 1) {
        leftMargin = 6;
      }
      localESImageView.setLayoutParams(localLayoutParams);
      if (k == i) {
        localESImageView.setImageResource(2130837853);
      }
      for (;;)
      {
        h.put(k, localESImageView);
        paramBundle.addView(localESImageView);
        k += 1;
        break;
        localESImageView.setImageResource(2130837854);
      }
    }
    a = ((RealViewSwitcher)findViewById(2131625024));
    a.a(true);
    paramBundle = new ld(this);
    a.setOnScreenSwitchListener(paramBundle);
    k = m;
    if (k < c.n.length)
    {
      paramBundle = n.b().d(c, k);
      localESImageView = new ESImageView(this);
      localESImageView.setLayoutParams(b);
      if (paramBundle == null) {
        localESImageView.setImageResource(2130838335);
      }
      for (;;)
      {
        g.put(k, localESImageView);
        a.addView(localESImageView);
        k += 1;
        break;
        localESImageView.setImageBitmap(paramBundle);
      }
    }
    a.setCurrentScreen(i);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a();
      a.removeAllViews();
      n.b().a(f);
    }
    for (;;)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      if (paramInt == 21)
      {
        if (i > 0) {
          a.a(i - 1);
        }
      }
      else if ((paramInt == 22) && (i < a.getChildCount() - 1)) {
        a.a(i + 1);
      }
    }
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
 * Qualified Name:     com.estrongs.android.pop.app.RecommItemImageViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */