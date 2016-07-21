package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.util.m;

class db
  implements View.OnClickListener
{
  db(ImageCommentActivity paramImageCommentActivity) {}
  
  public void onClick(View paramView)
  {
    if ((ImageCommentActivity.a(a) == null) || (!ImageCommentActivity.a(a).isAlive())) {
      ImageCommentActivity.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */