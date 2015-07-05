package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;

class do
  implements View.OnClickListener
{
  do(dj paramdj) {}
  
  public void onClick(View paramView)
  {
    paramView = a.a.getIntent();
    AppRunner.a(a.a, ImageCommentActivity.c(a.a), paramView.getStringExtra("pic_abs_path"), false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */