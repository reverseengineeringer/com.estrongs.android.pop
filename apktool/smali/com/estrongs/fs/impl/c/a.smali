.class public Lcom/estrongs/fs/impl/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/UUID;

.field public static final b:[B

.field private static c:Ljava/text/DateFormat;

.field private static d:Landroid/bluetooth/BluetoothAdapter;

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Lcom/estrongs/bluetooth/parser/a;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lb/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lb/b/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lb/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Z

.field private static final l:Landroid/content/BroadcastReceiver;

.field private static final m:Landroid/content/BroadcastReceiver;


# instance fields
.field private final n:Landroid/content/BroadcastReceiver;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->c:Ljava/text/DateFormat;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->e:Ljava/util/List;

    sput-boolean v1, Lcom/estrongs/fs/impl/c/a;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->j:Ljava/util/HashMap;

    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->a:Ljava/util/UUID;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->b:[B

    sput-boolean v1, Lcom/estrongs/fs/impl/c/a;->k:Z

    new-instance v0, Lcom/estrongs/fs/impl/c/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/c/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/fs/impl/c/c;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/c/c;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->m:Landroid/content/BroadcastReceiver;

    return-void

    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/fs/impl/c/d;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/c/d;-><init>(Lcom/estrongs/fs/impl/c/a;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/c/a;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;)Lcom/estrongs/fs/m;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/estrongs/fs/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/c/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/16 v10, 0xa0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    if-nez v2, :cond_2

    new-instance v2, Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {v2}, Lcom/estrongs/bluetooth/parser/a;-><init>()V

    sput-object v2, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v6

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_3
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v4}, Lb/b/d;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v5}, Lb/b/b;->a()Lb/b/c;

    move-result-object v7

    const/16 v8, 0xcb

    sget-object v9, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_9

    aget-object v8, v3, v0

    if-eqz v8, :cond_6

    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    aget-object v9, v3, v0

    invoke-interface {v7, v8, v9}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v8

    invoke-interface {v8}, Lb/b/c;->b()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eq v8, v10, :cond_6

    if-eqz v1, :cond_8

    :try_start_3
    invoke-interface {v4}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_9
    :try_start_4
    invoke-interface {v5}, Lb/b/b;->a()Lb/b/c;

    move-result-object v0

    const/16 v3, 0xcb

    sget-object v4, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v3, 0x42

    const-string v4, "x-obex/folder-listing"

    invoke-interface {v0, v3, v4}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v5, v0}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_a

    :try_start_5
    invoke-interface {v3}, Lb/b/d;->i()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v4

    if-eq v4, v10, :cond_c

    :cond_a
    if-eqz v3, :cond_b

    :try_start_6
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    if-eqz v6, :cond_e

    :try_start_7
    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v3, :cond_d

    :try_start_8
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_d
    :goto_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    :try_start_9
    invoke-interface {v3}, Lb/b/d;->h()Lb/b/c;

    move-result-object v4

    const/16 v7, 0x49

    invoke-interface {v4, v7}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v5, v0}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;

    move-result-object v3

    :cond_f
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lb/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v4, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v4, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->E()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/c/a;->c:Ljava/text/DateFormat;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, p0

    :cond_10
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v3, :cond_11

    :try_start_a
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_11
    :goto_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    if-eqz v0, :cond_10

    :try_start_b
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_8
    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_13

    move-object v4, v5

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_14
    new-instance v8, Lcom/estrongs/fs/impl/c/e;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v0, v4}, Lcom/estrongs/fs/impl/c/e;-><init>(Lcom/estrongs/bluetooth/parser/OBEXElement;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-interface {p1, v8}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-interface {v8}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [J

    invoke-interface {p2, v0, v4}, Lcom/estrongs/a/b/o;->a(Ljava/lang/Object;[J)V

    invoke-interface {p2}, Lcom/estrongs/a/b/o;->a()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    if-eqz v3, :cond_17

    :try_start_c
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_17
    :goto_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_18
    move-object v4, v5

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_a
    :try_start_d
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_b
    if-eqz v3, :cond_19

    :try_start_e
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_19
    :goto_c
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v1, v3

    goto :goto_a

    :cond_1a
    move-object v5, v4

    goto/16 :goto_8
.end method

.method private static a(J)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/fs/impl/c/a;->k:Z

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->i()V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    :goto_1
    sget-boolean v1, Lcom/estrongs/fs/impl/c/a;->f:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/c/a;->k:Z

    invoke-virtual {v0}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->d()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/fs/impl/c/f;

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/estrongs/fs/impl/c/f;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/c/a;->j(Ljava/lang/String;)Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->setFileType(Lcom/estrongs/fs/m;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/fs/impl/c/a;->k:Z

    return v0
.end method

.method private static a(Landroid/content/Context;Lb/b/b;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 11

    const/16 v10, 0xa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v4

    :try_start_0
    invoke-interface {p1}, Lb/b/b;->a()Lb/b/c;

    move-result-object v0

    const/16 v3, 0xcb

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v3, 0x42

    const-string v5, "x-obex/folder-listing"

    invoke-interface {v0, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lb/b/d;->i()I

    move-result v5

    if-eq v5, v10, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lb/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v6, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v6, v5}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-interface {v3}, Lb/b/d;->e()V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/fs/impl/c/a;->m(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, v3, v6, v7}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v3

    invoke-interface {v3}, Lb/b/c;->b()I

    move-result v3

    if-ne v3, v10, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/estrongs/fs/impl/c/a;->a(Landroid/content/Context;Lb/b/b;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    :goto_1
    invoke-interface {p1}, Lb/b/b;->a()Lb/b/c;

    move-result-object v3

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p1, v3, v6, v7}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Lb/b/b;->a()Lb/b/c;

    move-result-object v6

    const/16 v7, 0xcb

    sget-object v8, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v6}, Lb/b/b;->e(Lb/b/c;)Lb/b/c;

    move-result-object v0

    invoke-interface {v0}, Lb/b/c;->b()I

    move-result v0

    if-ne v0, v10, :cond_9

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bt://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v4, v0, v6}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lb/b/b;->a()Lb/b/c;

    move-result-object v0

    const/16 v3, 0xcb

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lb/b/b;->e(Lb/b/c;)Lb/b/c;

    move-result-object v0

    invoke-interface {v0}, Lb/b/c;->b()I

    move-result v0

    if-ne v0, v10, :cond_8

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, v0, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    move v0, v1

    :goto_2
    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 11

    const/16 v10, 0xa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    :cond_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {v4}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v2, v6

    if-eqz v2, :cond_1

    invoke-interface {v5}, Lb/b/b;->a()Lb/b/c;

    move-result-object v7

    const/16 v2, 0xcb

    sget-object v8, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lb/b/c;->a(ILjava/lang/Object;)V

    move v2, v1

    :goto_1
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_5

    aget-object v8, v6, v2

    if-eqz v8, :cond_3

    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    aget-object v9, v6, v2

    invoke-interface {v7, v8, v9}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v8

    invoke-interface {v8}, Lb/b/c;->b()I

    move-result v8

    if-eq v8, v10, :cond_3

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    const/4 v2, 0x1

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-interface {v7, v2, v8}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/c/a;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p0, v5, v4, p2}, Lcom/estrongs/fs/impl/c/a;->a(Landroid/content/Context;Lb/b/b;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    move-result v0

    :cond_7
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_8
    invoke-interface {v5}, Lb/b/b;->a()Lb/b/c;

    move-result-object v2

    const/16 v4, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-interface {v2, v4, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v5, v2}, Lb/b/b;->e(Lb/b/c;)Lb/b/c;

    move-result-object v2

    invoke-interface {v2}, Lb/b/c;->b()I

    move-result v2

    if-ne v2, v10, :cond_9

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 11

    const/16 v9, 0xa0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lb/b/d;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_2
    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v5

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v3, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_3
    :try_start_4
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_8

    aget-object v7, v6, v3

    if-eqz v7, :cond_5

    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    aget-object v8, v6, v3

    invoke-interface {v5, v7, v8}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v7, v8}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v7

    invoke-interface {v7}, Lb/b/c;->b()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-eq v7, v9, :cond_5

    if-eqz v0, :cond_7

    :try_start_5
    invoke-interface {v0}, Lb/b/d;->e()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    move v0, v1

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    :try_start_6
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-interface {v5, v3, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    if-eqz p1, :cond_a

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-interface {v4, v5, v3, v6}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v3

    invoke-interface {v3}, Lb/b/c;->b()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eq v3, v9, :cond_b

    if-eqz v0, :cond_9

    :try_start_7
    invoke-interface {v0}, Lb/b/d;->e()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :goto_5
    move v0, v1

    goto :goto_1

    :cond_a
    const/16 v1, 0xc3

    const-wide/16 v6, 0x1

    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lb/b/b;->d(Lb/b/c;)Lb/b/d;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    :try_start_9
    invoke-interface {v0}, Lb/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_b
    if-eqz v0, :cond_c

    :try_start_a
    invoke-interface {v0}, Lb/b/d;->e()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_c
    :goto_6
    move v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    :try_start_b
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_d

    :try_start_c
    invoke-interface {v1}, Lb/b/d;->e()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_d
    :goto_9
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/estrongs/fs/impl/c/a;->f:Z

    return p0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/estrongs/fs/h;->lastModified()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Z)Lb/b/b;
    .locals 12

    const/16 v10, 0xa0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_a

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/b;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Lb/b/b;->a()Lb/b/c;

    move-result-object v8

    const/16 v3, 0xcb

    sget-object v6, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v8, v3, v6}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v3

    move-object v6, v3

    move v3, v5

    :goto_0
    invoke-interface {v6}, Lb/b/c;->b()I

    move-result v6

    if-ne v6, v10, :cond_4

    const/16 v6, 0x28

    if-ge v3, v6, :cond_4

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v6, v9}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v8, "not connected"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "connection abort"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "connect"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Connect"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    invoke-interface {v2}, Lb/b/b;->e()V

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    :try_start_1
    sget-object v3, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    move v11, v5

    move-object v5, v2

    move v2, v11

    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x4

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v8, v3

    :try_start_2
    invoke-static {v8, v9}, Lcom/estrongs/fs/impl/c/a;->a(J)V

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->a:Ljava/util/UUID;

    invoke-static {v3, v5}, Lcom/estrongs/bluetooth/c;->a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Lb/b/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    :cond_3
    if-nez v5, :cond_6

    move-object v2, v4

    :cond_4
    :goto_3
    return-object v2

    :cond_5
    throw v3

    :catch_1
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-interface {v5}, Lb/b/b;->a()Lb/b/c;

    move-result-object v2

    const/16 v3, 0x46

    sget-object v6, Lcom/estrongs/fs/impl/c/a;->b:[B

    invoke-interface {v2, v3, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v5, v2}, Lb/b/b;->a(Lb/b/c;)Lb/b/c;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lb/b/c;->b()I

    move-result v3

    if-eq v3, v10, :cond_7

    move-object v2, v4

    goto :goto_3

    :cond_7
    const/16 v3, 0xcb

    invoke-interface {v2, v3}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lb/b/b;->a(J)V

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    if-eqz p1, :cond_9

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object v2, v5

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v4

    goto :goto_3

    :cond_a
    move-object v2, v4

    goto :goto_1
.end method

.method private static b(Landroid/bluetooth/BluetoothDevice;)Lcom/estrongs/fs/m;
    .locals 2

    const/16 v1, 0xc

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->n:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/estrongs/fs/m;->m:Lcom/estrongs/fs/m;

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/estrongs/fs/m;->i:Lcom/estrongs/fs/m;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/m;->j:Lcom/estrongs/fs/m;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/estrongs/fs/m;->k:Lcom/estrongs/fs/m;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/fs/m;->l:Lcom/estrongs/fs/m;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/fs/m;->n:Lcom/estrongs/fs/m;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method

.method private static b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v0, 0x7f0b01a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b019e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b019f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0b01a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_2
        0x200 -> :sswitch_7
        0x300 -> :sswitch_5
        0x400 -> :sswitch_1
        0x500 -> :sswitch_6
        0x600 -> :sswitch_4
        0x700 -> :sswitch_a
        0x800 -> :sswitch_8
        0x900 -> :sswitch_3
        0x1f00 -> :sswitch_9
    .end sparse-switch
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/c/a;->j()V

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/c/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/b;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Lb/b/b;->b(Lb/b/c;)Lb/b/c;

    invoke-interface {v0}, Lb/b/b;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/estrongs/fs/impl/c/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method private static c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->k(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/c/a;->f:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 10

    const/16 v9, 0xa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_2
    invoke-static {v3}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v3, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v6

    const/16 v3, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    move v3, v1

    :goto_1
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_6

    aget-object v7, v5, v3

    if-eqz v7, :cond_4

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    aget-object v8, v5, v3

    invoke-interface {v6, v7, v8}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v6, v7, v8}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v7

    invoke-interface {v7}, Lb/b/c;->b()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-eq v7, v9, :cond_4

    if-eqz v2, :cond_0

    :try_start_5
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    :try_start_6
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v5, v7

    invoke-interface {v6, v3, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v4, v6, v3, v5}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v3

    invoke-interface {v3}, Lb/b/c;->b()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-ne v3, v9, :cond_a

    :goto_2
    move v1, v0

    :cond_7
    :goto_3
    if-eqz v2, :cond_0

    :try_start_7
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_8
    :try_start_8
    invoke-interface {v4, v6}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_9
    invoke-interface {v2}, Lb/b/d;->i()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v3

    if-ne v3, v9, :cond_7

    move v1, v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_a
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_9

    :try_start_b
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_9
    :goto_6
    throw v0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public static e()V
    .locals 3

    sget-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 10

    const/16 v8, 0xa0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v2}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v5

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    aget-object v6, v2, v1

    if-eqz v6, :cond_2

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    aget-object v7, v2, v1

    invoke-interface {v5, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v6

    invoke-interface {v6}, Lb/b/c;->b()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eq v6, v8, :cond_2

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v1

    const/16 v2, 0xcb

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v2, 0x42

    const-string v3, "x-obex/folder-listing"

    invoke-interface {v1, v2, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v1}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Lb/b/d;->i()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eq v2, v8, :cond_6

    :cond_5
    if-eqz v1, :cond_0

    :try_start_6
    invoke-interface {v1}, Lb/b/d;->e()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_6
    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lb/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v0, v2}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v2, v1

    :goto_2
    :try_start_8
    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->d:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/estrongs/fs/c;->f:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_7

    :try_start_a
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_6
    throw v0

    :cond_8
    :try_start_b
    iget v0, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/estrongs/fs/c;->g:I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_9
    const-string v0, "File"

    iput-object v0, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/fs/c;->e:J

    :cond_a
    invoke-static {p0}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/fs/c;->j:J

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/estrongs/fs/c;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/estrongs/fs/c;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/estrongs/fs/c;->l:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_b

    :try_start_c
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_b
    :goto_7
    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_4

    :cond_c
    move-object v2, v0

    goto :goto_2
.end method

.method public static f()V
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static g(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lb/b/b;->a()Lb/b/c;

    move-result-object v4

    const/16 v5, 0xcb

    sget-object v6, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    :goto_1
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    aget-object v5, v2, v1

    if-eqz v5, :cond_2

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    aget-object v6, v2, v1

    invoke-interface {v4, v5, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v5

    invoke-interface {v5}, Lb/b/c;->b()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lb/b/b;->a()Lb/b/c;

    move-result-object v1

    const/16 v4, 0xcb

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-interface {v1, v4, v2}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v3, v1}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_5

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Lcom/estrongs/fs/impl/c/g;

    invoke-interface {v1}, Lb/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/estrongs/fs/impl/c/g;-><init>(Ljava/io/InputStream;Lb/b/d;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/fs/impl/c/a;->f:Z

    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lb/b/b;->a()Lb/b/c;

    move-result-object v4

    const/16 v5, 0xcb

    sget-object v6, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    :goto_1
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_6

    aget-object v5, v2, v0

    if-eqz v5, :cond_4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    aget-object v6, v2, v0

    invoke-interface {v4, v5, v6}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v5

    invoke-interface {v5}, Lb/b/c;->b()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Lb/b/b;->a()Lb/b/c;

    move-result-object v4

    const/16 v0, 0xcb

    sget-object v5, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-interface {v4, v0, v2}, Lb/b/c;->a(ILjava/lang/Object;)V

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lb/b/b;->a(J)V

    invoke-interface {v3, v4}, Lb/b/b;->d(Lb/b/c;)Lb/b/d;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Lcom/estrongs/fs/impl/c/h;

    invoke-interface {v2}, Lb/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/estrongs/fs/impl/c/h;-><init>(Ljava/io/OutputStream;Lb/b/d;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method static synthetic h()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 9

    const/16 v8, 0xa0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    if-nez v2, :cond_2

    new-instance v2, Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {v2}, Lcom/estrongs/bluetooth/parser/a;-><init>()V

    sput-object v2, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/estrongs/fs/impl/c/a;->b(Ljava/lang/String;Z)Lb/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v5

    const/16 v6, 0xcb

    sget-object v7, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/c/a;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_2
    array-length v6, v2

    if-ge v0, v6, :cond_9

    aget-object v6, v2, v0

    if-eqz v6, :cond_6

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    aget-object v7, v2, v0

    invoke-interface {v5, v6, v7}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lb/b/b;->a(Lb/b/c;ZZ)Lb/b/c;

    move-result-object v6

    invoke-interface {v6}, Lb/b/c;->b()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eq v6, v8, :cond_6

    if-eqz v1, :cond_8

    :try_start_3
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_9
    :try_start_4
    invoke-interface {v4}, Lb/b/b;->a()Lb/b/c;

    move-result-object v0

    const/16 v2, 0xcb

    sget-object v3, Lcom/estrongs/fs/impl/c/a;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v2, 0x42

    const-string v3, "x-obex/folder-listing"

    invoke-interface {v0, v2, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {v4, v0}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_5
    invoke-interface {v2}, Lb/b/d;->i()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eq v3, v8, :cond_c

    :cond_a
    if-eqz v2, :cond_b

    :try_start_6
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_b
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    :try_start_7
    invoke-interface {v2}, Lb/b/d;->h()Lb/b/c;

    move-result-object v3

    const/16 v5, 0x49

    invoke-interface {v3, v5}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v4, v0}, Lb/b/b;->c(Lb/b/c;)Lb/b/d;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :goto_5
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lb/b/d;->b()Ljava/io/DataInputStream;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v2, Lcom/estrongs/fs/impl/c/a;->g:Lcom/estrongs/bluetooth/parser/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-static {p0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v2, Lcom/estrongs/fs/impl/c/e;

    invoke-direct {v2, v0, p0}, Lcom/estrongs/fs/impl/c/e;-><init>(Lcom/estrongs/bluetooth/parser/OBEXElement;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_e

    :try_start_9
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_e
    :goto_6
    move-object v0, v2

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_10

    :try_start_a
    invoke-interface {v3}, Lb/b/d;->e()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_10
    :goto_7
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_10

    :try_start_c
    invoke-interface {v2}, Lb/b/d;->e()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v1, :cond_11

    :try_start_d
    invoke-interface {v1}, Lb/b/d;->e()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_11
    :goto_a
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_8

    :cond_12
    move-object v3, v2

    goto :goto_5
.end method

.method private static i()V
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/fs/impl/c/a;->f:Z

    sget-object v0, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method private static j(Ljava/lang/String;)Lcom/estrongs/fs/m;
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/impl/c/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/bluetooth/BluetoothDevice;)Lcom/estrongs/fs/m;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/c/a;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "[/+]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
