.class public Lcom/estrongs/a/b/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Ljava/net/ServerSocket;

.field private static i:Landroid/app/Activity;

.field private static j:Lcom/estrongs/android/pop/zeroconf/w;

.field private static k:Landroid/content/BroadcastReceiver;

.field private static l:Ljava/lang/Object;

.field private static m:Lcom/estrongs/a/b/d;


# instance fields
.field private e:Ljava/net/Socket;

.field private f:Ljava/io/DataInputStream;

.field private g:Ljava/io/DataOutputStream;

.field private h:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/estrongs/a/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/a/b/d;->c:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    const v0, 0xa497

    sput v0, Lcom/estrongs/a/b/d;->a:I

    const-string v0, "ESuser"

    sput-object v0, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/a/b/d;->j:Lcom/estrongs/android/pop/zeroconf/w;

    sput-object v1, Lcom/estrongs/a/b/d;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/a/b/d;->l:Ljava/lang/Object;

    sput-object v1, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/a/b/d;->e:Ljava/net/Socket;

    iput-object v3, p0, Lcom/estrongs/a/b/d;->f:Ljava/io/DataInputStream;

    iput-object v3, p0, Lcom/estrongs/a/b/d;->g:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/b/d;->h:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/b/d;->n:Ljava/lang/String;

    if-eqz p2, :cond_0

    sput-object p2, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    sget v1, Lcom/estrongs/a/b/d;->a:I

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    sput-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    new-instance v0, Lcom/estrongs/a/b/e;

    invoke-direct {v0, p0}, Lcom/estrongs/a/b/e;-><init>(Lcom/estrongs/a/b/d;)V

    invoke-virtual {v0}, Lcom/estrongs/a/b/e;->start()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/a/b/d;
    .locals 3

    sget-object v1, Lcom/estrongs/a/b/d;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/estrongs/a/b/d;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/a/b/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    sput-object p0, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/a/b/h;

    invoke-direct {v0}, Lcom/estrongs/a/b/h;-><init>()V

    sput-object v0, Lcom/estrongs/a/b/d;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/a/b/d;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;
    .locals 0

    sput-object p0, Lcom/estrongs/a/b/d;->j:Lcom/estrongs/android/pop/zeroconf/w;

    return-object p0
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/d;->f:Ljava/io/DataInputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/d;->g:Ljava/io/DataOutputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/d;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    new-array v0, v0, [B

    :cond_0
    array-length v2, v0

    move-object v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    add-int/lit16 v2, v0, 0x80

    new-array v4, v2, [B

    array-length v2, v4

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    move v0, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    if-eq v2, v6, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Line reading error:no \\n!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :sswitch_1
    if-ne v5, v6, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Line reading error: socket read error!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    :cond_3
    move-object v4, v3

    move v3, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/d;->e:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/d;->e:Ljava/net/Socket;

    return-object p1
.end method

.method public static a()V
    .locals 3

    sget-object v1, Lcom/estrongs/a/b/d;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/a/b/d;->m:Lcom/estrongs/a/b/d;

    sget-object v0, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    sget-object v0, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;

    sget-object v2, Lcom/estrongs/a/b/d;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/estrongs/a/b/d;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;Lcom/estrongs/fs/b/bn;)V
    .locals 6

    new-instance v0, Lcom/estrongs/a/b/m;

    iget-object v3, p0, Lcom/estrongs/a/b/d;->n:Ljava/lang/String;

    new-instance v4, Lcom/estrongs/a/b/k;

    invoke-direct {v4, p0}, Lcom/estrongs/a/b/k;-><init>(Lcom/estrongs/a/b/d;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/a/b/m;-><init>(Lcom/estrongs/a/b/d;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/fs/b/bn;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/a/b/m;->a(Ljava/lang/CharSequence;)V

    const v1, 0x7f080221

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/b/m;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f080226

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/estrongs/a/b/m;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/a/b/m;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/a/b/m;->j()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Landroid/app/Activity;ILjava/lang/String;Lcom/estrongs/fs/b/bn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/a/b/d;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/estrongs/fs/b/bn;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/a/b/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/a/b/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/estrongs/fs/b/bn;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0x194

    const-string v2, "Not found"

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :cond_0
    new-instance v0, Lcom/estrongs/a/b/l;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/estrongs/a/b/l;-><init>(Lcom/estrongs/a/b/d;Landroid/content/Context;Lcom/estrongs/fs/b/bn;)V

    const v1, 0x7f0803e3

    invoke-virtual {v0, v1}, Lcom/estrongs/a/b/l;->setTitle(I)V

    sget-object v1, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/estrongs/a/b/l;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    sget-object v1, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/estrongs/a/b/l;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/a/b/l;->show()V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/a/b/d;)Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/d;->f:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic b()Ljava/net/ServerSocket;
    .locals 1

    sget-object v0, Lcom/estrongs/a/b/d;->d:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic c()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/estrongs/a/b/d;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/a/b/d;)Ljava/io/DataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/d;->g:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/a/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/estrongs/a/b/d;->h()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/a/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/estrongs/a/b/d;->i()V

    return-void
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/a/b/d;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()Lcom/estrongs/android/pop/zeroconf/w;
    .locals 1

    sget-object v0, Lcom/estrongs/a/b/d;->j:Lcom/estrongs/android/pop/zeroconf/w;

    return-object v0
.end method

.method private static h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/a/b/i;

    invoke-direct {v1}, Lcom/estrongs/a/b/i;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static i()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/a/b/j;

    invoke-direct {v1}, Lcom/estrongs/a/b/j;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 5

    const-string v1, "Server: ES Name Response Server\r\n"

    const-string v2, "Content-Type: text/html\r\n"

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    const-string v0, "HTTP/1.1 200 OK\r\n"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "Connection: close\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    const-string v0, "HTTP/1.1 404 Not Found\r\n"

    goto :goto_0
.end method
