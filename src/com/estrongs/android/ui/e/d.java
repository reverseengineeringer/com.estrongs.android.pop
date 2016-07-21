package com.estrongs.android.ui.e;

import android.support.v7.app.AppCompatActivity;

public class d
{
  /* Error */
  private d(AppCompatActivity paramAppCompatActivity)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 13	java/lang/Object:<init>	()V
    //   4: aload_1
    //   5: invokevirtual 19	android/support/v7/app/AppCompatActivity:getDelegate	()Landroid/support/v7/app/AppCompatDelegate;
    //   8: astore 6
    //   10: aconst_null
    //   11: astore_3
    //   12: aload 6
    //   14: invokevirtual 23	java/lang/Object:getClass	()Ljava/lang/Class;
    //   17: astore_2
    //   18: aload_2
    //   19: ldc 25
    //   21: invokevirtual 31	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   24: astore 4
    //   26: aload 4
    //   28: ifnull +9 -> 37
    //   31: aload 4
    //   33: ifnonnull +24 -> 57
    //   36: return
    //   37: aload_2
    //   38: invokevirtual 34	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   41: astore 5
    //   43: aload 5
    //   45: astore_2
    //   46: aload 4
    //   48: astore_3
    //   49: aload 5
    //   51: ifnonnull -33 -> 18
    //   54: goto -23 -> 31
    //   57: aload 4
    //   59: iconst_1
    //   60: invokevirtual 40	java/lang/reflect/Field:setAccessible	(Z)V
    //   63: aload 4
    //   65: aload 6
    //   67: invokevirtual 44	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   70: checkcast 46	android/view/Window
    //   73: astore_2
    //   74: aload_2
    //   75: invokevirtual 50	android/view/Window:getCallback	()Landroid/view/Window$Callback;
    //   78: astore_3
    //   79: aload_3
    //   80: instanceof 52
    //   83: ifne -47 -> 36
    //   86: aload_2
    //   87: new 52	com/estrongs/android/ui/e/e
    //   90: dup
    //   91: aload_0
    //   92: aload_3
    //   93: aload_1
    //   94: invokespecial 55	com/estrongs/android/ui/e/e:<init>	(Lcom/estrongs/android/ui/e/d;Landroid/view/Window$Callback;Landroid/support/v7/app/AppCompatActivity;)V
    //   97: invokevirtual 59	android/view/Window:setCallback	(Landroid/view/Window$Callback;)V
    //   100: return
    //   101: astore_1
    //   102: aload_1
    //   103: invokevirtual 62	java/lang/IllegalAccessException:printStackTrace	()V
    //   106: return
    //   107: astore 4
    //   109: aload_3
    //   110: astore 4
    //   112: goto -86 -> 26
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	d
    //   0	115	1	paramAppCompatActivity	AppCompatActivity
    //   17	70	2	localObject1	Object
    //   11	99	3	localObject2	Object
    //   24	40	4	localField	java.lang.reflect.Field
    //   107	1	4	localNoSuchFieldException	NoSuchFieldException
    //   110	1	4	localObject3	Object
    //   41	9	5	localClass	Class
    //   8	58	6	localAppCompatDelegate	android.support.v7.app.AppCompatDelegate
    // Exception table:
    //   from	to	target	type
    //   4	10	101	java/lang/IllegalAccessException
    //   12	18	101	java/lang/IllegalAccessException
    //   18	26	101	java/lang/IllegalAccessException
    //   37	43	101	java/lang/IllegalAccessException
    //   57	100	101	java/lang/IllegalAccessException
    //   18	26	107	java/lang/NoSuchFieldException
  }
  
  public static void a(AppCompatActivity paramAppCompatActivity)
  {
    new d(paramAppCompatActivity);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */