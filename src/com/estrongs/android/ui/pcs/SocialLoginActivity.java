package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.utils.enums.SocialType;

public class SocialLoginActivity
  extends Activity
{
  private SocialType a;
  
  protected void a()
  {
    SapiWebView localSapiWebView = (SapiWebView)findViewById(2131625108);
    an.a(this, localSapiWebView);
    localSapiWebView.setOnBackCallback(new ar(this, localSapiWebView));
    localSapiWebView.setOnFinishCallback(new as(this));
    localSapiWebView.setAuthorizationListener(new at(this));
    localSapiWebView.loadSocialLogin(a, true);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903302);
    a = ((SocialType)getIntent().getSerializableExtra("social_type"));
    if (a == null) {
      finish();
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.SocialLoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */