package com.estrongs.android.pop.app;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.ui.dialog.cv;

public class i
{
  private static String a = "android.intent.action.PICK_APP_LOCKER";
  
  public static void a(Context paramContext)
  {
    if (a())
    {
      Intent localIntent = new Intent(a);
      localIntent.addFlags(603979776);
      paramContext.startActivity(localIntent);
      return;
    }
    b(paramContext);
  }
  
  /* Error */
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 17	com/estrongs/android/pop/app/i:a	()Z
    //   3: ifeq +198 -> 201
    //   6: invokestatic 42	com/estrongs/android/pop/app/i:b	()Z
    //   9: ifeq +180 -> 189
    //   12: ldc 44
    //   14: aload_1
    //   15: invokevirtual 50	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   18: ifeq +136 -> 154
    //   21: aload_0
    //   22: invokevirtual 54	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   25: ldc 56
    //   27: invokestatic 62	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   30: aconst_null
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: invokevirtual 68	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   37: astore 6
    //   39: aload 6
    //   41: ifnull +180 -> 221
    //   44: aload 6
    //   46: astore 5
    //   48: aload 6
    //   50: invokeinterface 73 1 0
    //   55: ifeq +166 -> 221
    //   58: aload 6
    //   60: astore 5
    //   62: ldc 75
    //   64: aload 6
    //   66: iconst_0
    //   67: invokeinterface 79 2 0
    //   72: invokevirtual 83	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   75: istore_3
    //   76: iload_3
    //   77: istore 4
    //   79: aload 6
    //   81: ifnull +13 -> 94
    //   84: aload 6
    //   86: invokeinterface 86 1 0
    //   91: iload_3
    //   92: istore 4
    //   94: iload 4
    //   96: ifeq +58 -> 154
    //   99: aload_0
    //   100: invokestatic 89	com/estrongs/android/pop/app/i:c	(Landroid/content/Context;)V
    //   103: return
    //   104: astore 7
    //   106: aconst_null
    //   107: astore 6
    //   109: aload 6
    //   111: astore 5
    //   113: aload 7
    //   115: invokevirtual 92	java/lang/Exception:printStackTrace	()V
    //   118: aload 6
    //   120: ifnull +95 -> 215
    //   123: aload 6
    //   125: invokeinterface 86 1 0
    //   130: iconst_0
    //   131: istore 4
    //   133: goto -39 -> 94
    //   136: astore_0
    //   137: aconst_null
    //   138: astore 5
    //   140: aload 5
    //   142: ifnull +10 -> 152
    //   145: aload 5
    //   147: invokeinterface 86 1 0
    //   152: aload_0
    //   153: athrow
    //   154: new 19	android/content/Intent
    //   157: dup
    //   158: getstatic 12	com/estrongs/android/pop/app/i:a	Ljava/lang/String;
    //   161: invokespecial 23	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   164: astore 5
    //   166: aload 5
    //   168: ldc 24
    //   170: invokevirtual 28	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   173: pop
    //   174: aload 5
    //   176: aload_1
    //   177: aload_2
    //   178: invokevirtual 96	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   181: pop
    //   182: aload_0
    //   183: aload 5
    //   185: invokevirtual 34	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   188: return
    //   189: aload_0
    //   190: ldc 97
    //   192: iconst_0
    //   193: invokestatic 102	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   196: aload_0
    //   197: invokestatic 37	com/estrongs/android/pop/app/i:b	(Landroid/content/Context;)V
    //   200: return
    //   201: aload_0
    //   202: invokestatic 37	com/estrongs/android/pop/app/i:b	(Landroid/content/Context;)V
    //   205: return
    //   206: astore_0
    //   207: goto -67 -> 140
    //   210: astore 7
    //   212: goto -103 -> 109
    //   215: iconst_0
    //   216: istore 4
    //   218: goto -124 -> 94
    //   221: iconst_0
    //   222: istore_3
    //   223: goto -147 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	paramContext	Context
    //   0	226	1	paramString1	String
    //   0	226	2	paramString2	String
    //   75	148	3	bool1	boolean
    //   77	140	4	bool2	boolean
    //   46	138	5	localObject	Object
    //   37	87	6	localCursor	android.database.Cursor
    //   104	10	7	localException1	Exception
    //   210	1	7	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   21	39	104	java/lang/Exception
    //   21	39	136	finally
    //   48	58	206	finally
    //   62	76	206	finally
    //   113	118	206	finally
    //   48	58	210	java/lang/Exception
    //   62	76	210	java/lang/Exception
  }
  
  public static boolean a()
  {
    Object localObject = FexApplication.a().getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getPackageInfo("com.estrongs.locker", 1);
      if (localObject != null) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
  
  public static void b(Context paramContext)
  {
    String str = paramContext.getString(2131231004);
    new cv(paramContext).a(2131231718).b(str).b(2131231273, new j(paramContext)).c(2131231269, null).c();
  }
  
  public static boolean b()
  {
    Object localObject = FexApplication.a().getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getPackageInfo("com.estrongs.locker", 1);
      if (localObject != null)
      {
        int i = versionCode;
        int j = a.b();
        return i >= j;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
  
  @TargetApi(21)
  public static void c(Context paramContext)
  {
    new cv(paramContext).a(2131232278).b(2131232279).b(false).b(2131231270, new l(paramContext)).c(2131231265, new k()).c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */