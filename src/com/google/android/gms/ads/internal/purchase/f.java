package com.google.android.gms.ads.internal.purchase;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.internal.kg;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oh;

@me
public class f
  extends kn
  implements ServiceConnection
{
  i a;
  private final Activity b;
  private Context c;
  private kg d;
  private b e;
  private g f;
  private m g;
  private n h;
  private String i = null;
  
  public f(Activity paramActivity)
  {
    b = paramActivity;
    a = i.a(b.getApplicationContext());
  }
  
  public void a()
  {
    Object localObject = GInAppPurchaseManagerInfoParcel.a(b.getIntent());
    g = f;
    h = c;
    d = d;
    e = new b(b.getApplicationContext());
    c = e;
    if (b.getResources().getConfiguration().orientation == 2) {
      b.setRequestedOrientation(ae.g().a());
    }
    for (;;)
    {
      localObject = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      ((Intent)localObject).setPackage("com.android.vending");
      b.bindService((Intent)localObject, this, 1);
      return;
      b.setRequestedOrientation(ae.g().b());
    }
  }
  
  /* Error */
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: sipush 1001
    //   4: if_icmpne +85 -> 89
    //   7: iconst_0
    //   8: istore 4
    //   10: invokestatic 135	com/google/android/gms/ads/internal/ae:o	()Lcom/google/android/gms/ads/internal/purchase/k;
    //   13: aload_3
    //   14: invokevirtual 140	com/google/android/gms/ads/internal/purchase/k:a	(Landroid/content/Intent;)I
    //   17: istore_1
    //   18: iload_2
    //   19: iconst_m1
    //   20: if_icmpne +70 -> 90
    //   23: invokestatic 135	com/google/android/gms/ads/internal/ae:o	()Lcom/google/android/gms/ads/internal/purchase/k;
    //   26: pop
    //   27: iload_1
    //   28: ifne +62 -> 90
    //   31: aload_0
    //   32: getfield 65	com/google/android/gms/ads/internal/purchase/f:h	Lcom/google/android/gms/ads/internal/purchase/n;
    //   35: aload_0
    //   36: getfield 32	com/google/android/gms/ads/internal/purchase/f:i	Ljava/lang/String;
    //   39: iload_2
    //   40: aload_3
    //   41: invokevirtual 145	com/google/android/gms/ads/internal/purchase/n:a	(Ljava/lang/String;ILandroid/content/Intent;)Z
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 4
    //   50: aload_0
    //   51: getfield 68	com/google/android/gms/ads/internal/purchase/f:d	Lcom/google/android/gms/internal/kg;
    //   54: iload_1
    //   55: invokeinterface 149 2 0
    //   60: aload_0
    //   61: getfield 34	com/google/android/gms/ads/internal/purchase/f:b	Landroid/app/Activity;
    //   64: invokevirtual 152	android/app/Activity:finish	()V
    //   67: aload_0
    //   68: aload_0
    //   69: getfield 68	com/google/android/gms/ads/internal/purchase/f:d	Lcom/google/android/gms/internal/kg;
    //   72: invokeinterface 155 1 0
    //   77: iload 4
    //   79: iload_2
    //   80: aload_3
    //   81: invokevirtual 158	com/google/android/gms/ads/internal/purchase/f:a	(Ljava/lang/String;ZILandroid/content/Intent;)V
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 32	com/google/android/gms/ads/internal/purchase/f:i	Ljava/lang/String;
    //   89: return
    //   90: aload_0
    //   91: getfield 47	com/google/android/gms/ads/internal/purchase/f:a	Lcom/google/android/gms/ads/internal/purchase/i;
    //   94: aload_0
    //   95: getfield 160	com/google/android/gms/ads/internal/purchase/f:f	Lcom/google/android/gms/ads/internal/purchase/g;
    //   98: invokevirtual 163	com/google/android/gms/ads/internal/purchase/i:a	(Lcom/google/android/gms/ads/internal/purchase/g;)V
    //   101: goto -51 -> 50
    //   104: astore_3
    //   105: ldc -91
    //   107: invokestatic 169	com/google/android/gms/ads/internal/util/client/b:e	(Ljava/lang/String;)V
    //   110: aload_0
    //   111: getfield 34	com/google/android/gms/ads/internal/purchase/f:b	Landroid/app/Activity;
    //   114: invokevirtual 152	android/app/Activity:finish	()V
    //   117: aload_0
    //   118: aconst_null
    //   119: putfield 32	com/google/android/gms/ads/internal/purchase/f:i	Ljava/lang/String;
    //   122: return
    //   123: astore_3
    //   124: aload_0
    //   125: aconst_null
    //   126: putfield 32	com/google/android/gms/ads/internal/purchase/f:i	Ljava/lang/String;
    //   129: aload_3
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	f
    //   0	131	1	paramInt1	int
    //   0	131	2	paramInt2	int
    //   0	131	3	paramIntent	Intent
    //   8	70	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	18	104	android/os/RemoteException
    //   23	27	104	android/os/RemoteException
    //   31	47	104	android/os/RemoteException
    //   50	84	104	android/os/RemoteException
    //   90	101	104	android/os/RemoteException
    //   10	18	123	finally
    //   23	27	123	finally
    //   31	47	123	finally
    //   50	84	123	finally
    //   90	101	123	finally
    //   105	117	123	finally
  }
  
  protected void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent)
  {
    if (g != null) {
      g.a(paramString, paramBoolean, paramInt, paramIntent, f);
    }
  }
  
  public void b()
  {
    b.unbindService(this);
    e.a();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    e.a(paramIBinder);
    try
    {
      i = h.a();
      paramComponentName = e.a(b.getPackageName(), d.a(), i);
      paramIBinder = (PendingIntent)paramComponentName.getParcelable("BUY_INTENT");
      if (paramIBinder == null)
      {
        int j = ae.o().a(paramComponentName);
        d.c(j);
        a(d.a(), false, j, null);
        b.finish();
        return;
      }
      f = new g(d.a(), i);
      a.b(f);
      b.startIntentSenderForResult(paramIBinder.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (RemoteException paramComponentName)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Error when connecting in-app billing service", paramComponentName);
      b.finish();
      return;
    }
    catch (IntentSender.SendIntentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.google.android.gms.ads.internal.util.client.b.c("In-app billing service disconnected.");
    e.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */