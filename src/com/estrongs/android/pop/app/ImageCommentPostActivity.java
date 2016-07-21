package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.util.m;

public class ImageCommentPostActivity
  extends HomeAsBackActivity
{
  private m a;
  private EditText b = null;
  private String c = null;
  private boolean d = false;
  
  private void a(String paramString)
  {
    findViewById(2131625363).setVisibility(0);
    findViewById(2131625359).setVisibility(8);
    a = new dr(this, "Comment Poster", paramString);
    a.start();
  }
  
  public void finish()
  {
    if (a != null) {
      a.a();
    }
    super.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232007);
    setContentView(2130903376);
    c = getIntent().getStringExtra("pic_path");
    d = getIntent().getBooleanExtra("from_detial_page", d);
    b = ((EditText)findViewById(2131624200));
    findViewById(2131625361).setOnClickListener(new dp(this));
    findViewById(2131625362).setOnClickListener(new dq(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ImageCommentPostActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */