package com.baidu.sapi2.share;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;

class ShareService$a
  extends Binder
{
  private ShareService$a(ShareService paramShareService) {}
  
  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    if (!a.c(a)) {
      return false;
    }
    if (SapiAccountManager.getReceiveShareListener() != null)
    {
      if (ShareService.a(a) == null) {
        ShareService.a(a, new Handler(Looper.getMainLooper()));
      }
      ShareService.a(a).post(new ShareService.a.a(this));
    }
    if (!ShareService.a()) {
      a.a(a);
    }
    if ((!ShareService.a()) || (ShareService.b() == LoginShareStrategy.DISABLED)) {
      return true;
    }
    paramParcel1 = paramParcel1.readBundle(ShareModel.class.getClassLoader());
    ShareModel localShareModel = (ShareModel)paramParcel1.getParcelable("LOGIN_SHARE_MODEL");
    if (localShareModel == null) {
      return true;
    }
    if ((paramParcel1.getSerializable("RUNTIME_ENVIRONMENT") != null) && ((paramParcel1.getSerializable("RUNTIME_ENVIRONMENT") instanceof Domain)) && ((Domain)paramParcel1.getSerializable("RUNTIME_ENVIRONMENT") != getInstancegetSapiConfigurationenvironment)) {
      return true;
    }
    a.c(ShareService.c(), paramParcel1.getString("RELOGIN_CREDENTIALS"));
    switch (ShareService.b.a[localShareModel.b().ordinal()])
    {
    }
    for (;;)
    {
      return true;
      a.a(ShareService.c(), ShareService.b(), localShareModel);
      continue;
      a.a(ShareService.c(), localShareModel);
      continue;
      a.a(paramParcel2);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */