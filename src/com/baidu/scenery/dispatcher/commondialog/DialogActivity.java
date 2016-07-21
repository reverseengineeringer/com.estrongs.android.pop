package com.baidu.scenery.dispatcher.commondialog;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.aj;
import android.support.v4.app.az;
import android.text.TextUtils;
import com.baidu.scenery.R.id;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.utils.ReportHelper;
import java.util.LinkedHashMap;
import java.util.Map;

public class DialogActivity
  extends FragmentActivity
{
  private static final Map<String, Class<? extends Fragment>> sFragments = new LinkedHashMap();
  private static String sType;
  private DialogActivity.HomeKeyReceiver mHomeKeyEventReceiver;
  
  public DialogActivity()
  {
    sFragments.put("scenery_charge", ChargeDialogFragment.class);
    sFragments.put("scenery_disk_usage", DiskUsageDialogFragment.class);
    sFragments.put("scenery_uninstall", UninstallDialogFragment.class);
    sFragments.put("scenery_take_photo", TakePhotoDialogFragment.class);
  }
  
  private static Fragment createPageFragment(String paramString)
  {
    paramString = (Class)sFragments.get(paramString);
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = (Fragment)paramString.newInstance();
      return paramString;
    }
    catch (InstantiationException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
    catch (IllegalAccessException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
  }
  
  public boolean gotoPage(String paramString)
  {
    if ((isFinishing()) || (TextUtils.isEmpty(paramString))) {}
    Object localObject;
    do
    {
      return false;
      localObject = getSupportFragmentManager().a();
      paramString = createPageFragment(paramString);
    } while (paramString == null);
    ((az)localObject).a(R.id.dialog_content, paramString);
    ((az)localObject).c();
    paramString = getIntent().getStringExtra("scenery_extra_recommend_package");
    if (!TextUtils.isEmpty(paramString))
    {
      if (!TextUtils.equals(getIntent().getStringExtra("scenery_extra_name"), "scenery_take_photo")) {
        break label145;
      }
      localObject = getIntent().getStringExtra("scenery_extra_source");
      if (!TextUtils.equals((CharSequence)localObject, "extra_source_home")) {
        break label112;
      }
      ReportHelper.reportShow(getApplicationContext(), paramString, "home");
    }
    for (;;)
    {
      return true;
      label112:
      if (TextUtils.equals((CharSequence)localObject, "extra_source_gallery"))
      {
        ReportHelper.reportShow(getApplicationContext(), paramString, "gallery");
      }
      else
      {
        ReportHelper.reportShow(getApplicationContext(), paramString);
        continue;
        label145:
        ReportHelper.reportShow(getApplicationContext(), paramString);
      }
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    String str = getIntent().getStringExtra("scenery_extra_name");
    if (!TextUtils.isEmpty(str)) {
      ReportHelper.reportEvent(this, "duscenery_sdk_close", str + "_back", Integer.valueOf(1));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.activity_dialog);
    sType = getIntent().getStringExtra("scenery_extra_name");
    paramBundle = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    mHomeKeyEventReceiver = new DialogActivity.HomeKeyReceiver(this);
    registerReceiver(mHomeKeyEventReceiver, paramBundle);
    gotoPage(getIntent().getStringExtra("scenery_extra_name"));
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (mHomeKeyEventReceiver != null)
    {
      unregisterReceiver(mHomeKeyEventReceiver);
      mHomeKeyEventReceiver = null;
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    gotoPage(getIntent().getStringExtra("scenery_extra_name"));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.DialogActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */