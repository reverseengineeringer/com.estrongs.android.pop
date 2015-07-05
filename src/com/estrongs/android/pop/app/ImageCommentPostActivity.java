package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.m;

public class ImageCommentPostActivity
  extends ESActivity
{
  private m a;
  private EditText b = null;
  private String c = null;
  private boolean d = false;
  
  private void a(String paramString)
  {
    findViewById(2131362614).setVisibility(0);
    findViewById(2131362610).setVisibility(8);
    a = new ds(this, "Comment Poster", paramString);
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
    requestWindowFeature(1);
    setContentView(2130903215);
    c = getIntent().getStringExtra("pic_path");
    d = getIntent().getBooleanExtra("from_detial_page", d);
    b = ((EditText)findViewById(2131361822));
    paramBundle = al.a(this);
    findViewById(2131362002).setBackgroundDrawable(paramBundle.a(2130838154));
    paramBundle = paramBundle.b(2130837803);
    findViewById(2131362610).setBackgroundDrawable(paramBundle);
    findViewById(2131362614).setBackgroundDrawable(paramBundle);
    findViewById(2131362612).setOnClickListener(new dp(this));
    findViewById(2131362613).setOnClickListener(new dq(this));
    findViewById(2131362609).setOnClickListener(new dr(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ImageCommentPostActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */