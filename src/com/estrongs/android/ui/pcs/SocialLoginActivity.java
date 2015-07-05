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
    SapiWebView localSapiWebView = (SapiWebView)findViewById(2131362469);
    ak.a(this, localSapiWebView);
    localSapiWebView.setOnBackCallback(new ao(this, localSapiWebView));
    localSapiWebView.setOnFinishCallback(new ap(this));
    localSapiWebView.setAuthorizationListener(new aq(this));
    localSapiWebView.loadSocialLogin(a, true);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903185);
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