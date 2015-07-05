package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.utils.enums.SocialType;

class m
  extends Handler
{
  m(j paramj) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (what == SocialType.WEIXIN.getType()) {
      return;
    }
    Intent localIntent = new Intent(j.b(a), SocialLoginActivity.class);
    localIntent.putExtra("social_type", SocialType.getSocialType(what));
    ((Activity)j.b(a)).startActivityForResult(localIntent, 1001);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */