package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.BaseAdapter;
import java.util.LinkedList;
import java.util.List;

class df
  implements Runnable
{
  df(dd paramdd, List paramList) {}
  
  public void run()
  {
    ImageCommentActivity.e(b.a).clear();
    ImageCommentActivity.e(b.a).add(ImageCommentActivity.f(b.a));
    ImageCommentActivity.e(b.a).addAll(a);
    if (ImageCommentActivity.g(b.a))
    {
      ImageCommentActivity.e(b.a).add(ImageCommentActivity.h(b.a));
      ImageCommentActivity.h(b.a).findViewById(2131624429).setVisibility(8);
    }
    ImageCommentActivity.i(b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */