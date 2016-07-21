package com.baidu.scenery.dispatcher.commondialog;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.scenery.utils.ReportHelper;
import java.lang.ref.WeakReference;

class DialogActivity$HomeKeyReceiver
  extends BroadcastReceiver
{
  private static final String SYSTEM_HOME_KEY = "homekey";
  private static final String SYSTEM_REASON = "reason";
  private WeakReference<Activity> mRef;
  
  public DialogActivity$HomeKeyReceiver(Activity paramActivity)
  {
    mRef = new WeakReference(paramActivity);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) && (TextUtils.equals(paramIntent.getStringExtra("reason"), "homekey"))) {
      if (mRef == null) {
        break label100;
      }
    }
    label100:
    for (paramIntent = (Activity)mRef.get();; paramIntent = null)
    {
      if ((paramIntent != null) && (!paramIntent.isFinishing()))
      {
        if (!TextUtils.isEmpty(DialogActivity.access$000())) {
          ReportHelper.reportEvent(paramContext, "duscenery_sdk_close", DialogActivity.access$000() + "_home", Integer.valueOf(1));
        }
        paramIntent.finish();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.DialogActivity.HomeKeyReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */