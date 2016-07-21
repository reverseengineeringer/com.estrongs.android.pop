package com.duapps.ad.base;

import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.a.a.c;
import com.dianxinos.a.a.d;
import com.dianxinos.a.a.e;
import com.dianxinos.a.a.g;

public class k
  extends Dialog
{
  private TextView a;
  private String b;
  private ImageView c;
  private Context d;
  
  public k(Context paramContext, int paramInt)
  {
    super(paramContext, g.Loading_Dialog_Fullscreen);
    d = paramContext;
    setContentView(e.toolbox_loadingdialog_circle);
    a = ((TextView)findViewById(d.loading_text));
    c = ((ImageView)findViewById(d.loading_circle));
    switch (paramInt)
    {
    default: 
      return;
    }
    findViewById(d.view_board).setBackgroundResource(c.loading_dialog_black_board);
  }
  
  private void a()
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setDuration(1000L);
    localRotateAnimation.setRepeatCount(-1);
    c.startAnimation(localRotateAnimation);
  }
  
  private void b()
  {
    a.setText(b);
  }
  
  public void a(int paramInt)
  {
    b = d.getString(paramInt);
    if (isShowing()) {
      b();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 84) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onStart()
  {
    super.onStart();
    a();
    b();
  }
  
  protected void onStop()
  {
    super.onStop();
    c.clearAnimation();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */