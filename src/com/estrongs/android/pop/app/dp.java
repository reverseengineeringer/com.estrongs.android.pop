package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.util.bd;

class dp
  implements View.OnClickListener
{
  dp(ImageCommentPostActivity paramImageCommentPostActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = ImageCommentPostActivity.a(a).getText().toString();
    if (!bd.a(paramView)) {
      ImageCommentPostActivity.a(a, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */