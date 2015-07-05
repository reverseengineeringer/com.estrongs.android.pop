.class public Lcom/estrongs/bluetooth/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Lb/b/b;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v1, Lcom/c/a/a/h;

    new-instance v2, Lcom/estrongs/bluetooth/a;

    invoke-direct {v2, v0}, Lcom/estrongs/bluetooth/a;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    new-instance v0, Lcom/c/a/a/i;

    invoke-direct {v0}, Lcom/c/a/a/i;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/c/a/a/h;-><init>(Lb/a/a/e;Lcom/c/a/a/i;)V

    return-object v1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "createRfcommSocket"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bluetooth connect error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/util/UUID;)Lb/b/g;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "not support bluetooth"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, p0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    new-instance v1, Lcom/c/a/a/u;

    new-instance v2, Lcom/estrongs/bluetooth/b;

    invoke-direct {v2, v0}, Lcom/estrongs/bluetooth/b;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    new-instance v0, Lcom/c/a/a/i;

    invoke-direct {v0}, Lcom/c/a/a/i;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/c/a/a/u;-><init>(Lb/a/a/f;Lcom/c/a/a/i;)V

    return-object v1
.end method
