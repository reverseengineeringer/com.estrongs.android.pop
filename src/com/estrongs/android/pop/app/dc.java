package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class dc
  implements View.OnClickListener
{
  dc(ImageCommentActivity paramImageCommentActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(a, ImageCommentPostActivity.class);
    paramView.putExtra("pic_path", ImageCommentActivity.b(a));
    paramView.putExtra("from_detial_page", true);
    a.startActivityForResult(paramView, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */