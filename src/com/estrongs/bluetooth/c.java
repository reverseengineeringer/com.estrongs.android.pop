package com.estrongs.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.os.Looper;
import b.b.g;
import com.c.a.a.i;
import com.c.a.a.u;
import java.io.IOException;
import java.util.UUID;

public class c
{
  /* Error */
  public static b.b.b a(android.bluetooth.BluetoothDevice paramBluetoothDevice, UUID paramUUID)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 14	android/bluetooth/BluetoothDevice:createRfcommSocketToServiceRecord	(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    //   5: astore_1
    //   6: aload_1
    //   7: invokevirtual 20	android/bluetooth/BluetoothSocket:connect	()V
    //   10: new 22	com/c/a/a/h
    //   13: dup
    //   14: new 24	com/estrongs/bluetooth/a
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 28	com/estrongs/bluetooth/a:<init>	(Landroid/bluetooth/BluetoothSocket;)V
    //   22: new 30	com/c/a/a/i
    //   25: dup
    //   26: invokespecial 32	com/c/a/a/i:<init>	()V
    //   29: invokespecial 35	com/c/a/a/h:<init>	(Lb/a/a/e;Lcom/c/a/a/i;)V
    //   32: areturn
    //   33: astore_2
    //   34: aload_1
    //   35: invokevirtual 38	android/bluetooth/BluetoothSocket:close	()V
    //   38: aload_0
    //   39: invokevirtual 42	java/lang/Object:getClass	()Ljava/lang/Class;
    //   42: ldc 44
    //   44: iconst_1
    //   45: anewarray 46	java/lang/Class
    //   48: dup
    //   49: iconst_0
    //   50: getstatic 52	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   53: aastore
    //   54: invokevirtual 56	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   57: aload_0
    //   58: iconst_1
    //   59: anewarray 4	java/lang/Object
    //   62: dup
    //   63: iconst_0
    //   64: iconst_1
    //   65: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   68: aastore
    //   69: invokevirtual 66	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   72: checkcast 16	android/bluetooth/BluetoothSocket
    //   75: astore_0
    //   76: ldc2_w 67
    //   79: invokestatic 74	java/lang/Thread:sleep	(J)V
    //   82: aload_0
    //   83: invokevirtual 20	android/bluetooth/BluetoothSocket:connect	()V
    //   86: aload_0
    //   87: astore_1
    //   88: aload_0
    //   89: ifnonnull -79 -> 10
    //   92: aload_2
    //   93: invokevirtual 77	java/lang/Exception:printStackTrace	()V
    //   96: new 79	java/io/IOException
    //   99: dup
    //   100: ldc 81
    //   102: invokespecial 84	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   105: athrow
    //   106: astore_0
    //   107: aconst_null
    //   108: astore_0
    //   109: aload_0
    //   110: invokevirtual 38	android/bluetooth/BluetoothSocket:close	()V
    //   113: aconst_null
    //   114: astore_0
    //   115: goto -29 -> 86
    //   118: astore_1
    //   119: goto -81 -> 38
    //   122: astore_1
    //   123: goto -41 -> 82
    //   126: astore_1
    //   127: goto -18 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	paramBluetoothDevice	android.bluetooth.BluetoothDevice
    //   0	130	1	paramUUID	UUID
    //   33	60	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   6	10	33	java/lang/Exception
    //   38	76	106	java/lang/Exception
    //   34	38	118	java/lang/Exception
    //   76	82	122	java/lang/Exception
    //   82	86	126	java/lang/Exception
  }
  
  public static g a(String paramString, UUID paramUUID)
  {
    if (Looper.myLooper() == null) {
      Looper.prepare();
    }
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter == null) {
      throw new IOException("not support bluetooth");
    }
    return new u(new b(localBluetoothAdapter.listenUsingRfcommWithServiceRecord(paramString, paramUUID)), new i());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */