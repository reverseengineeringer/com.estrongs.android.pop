.class public Lcom/estrongs/android/ftp/ESFtpService;
.super Landroid/app/Service;


# static fields
.field private static d:Z


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/estrongs/android/ftp/d;

.field private final c:Landroid/os/IBinder;

.field private e:Lcom/estrongs/android/j/c;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/estrongs/android/ftp/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/g;-><init>(Lcom/estrongs/android/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->c:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->e:Lcom/estrongs/android/j/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    new-instance v0, Lcom/estrongs/android/ftp/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/e;-><init>(Lcom/estrongs/android/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ftp/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/f;-><init>(Lcom/estrongs/android/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->b:Lcom/estrongs/android/ftp/d;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/ESFtpService;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/ESFtpService;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    return p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ftp/ESFtpService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/i;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ftp/ESFtpService;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/ftp/a;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/estrongs/android/ftp/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ftp/ESFtpService;->b:Lcom/estrongs/android/ftp/d;

    iput-object v1, v0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x237ee9f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v1, 0x7f080477

    invoke-direct {p0, v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    if-nez p1, :cond_4

    const v1, 0x7f0201a9

    iput v1, v2, Landroid/app/Notification;->icon:I

    :cond_3
    :goto_1
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/app/Notification;->flags:I

    const v1, 0x7f080477

    invoke-direct {p0, v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ftp/ESFtpService;->e:Lcom/estrongs/android/j/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/ftp/ESFtpService;->e:Lcom/estrongs/android/j/c;

    const-string v4, "act3"

    invoke-virtual {v1, v4}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ftp/ESFtpService;->e:Lcom/estrongs/android/j/c;

    const-string v4, "act3"

    const-string v5, "remote_manager"

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "stop_ftp_server"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, p0, v3, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v1, 0x237ee9f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    const v1, 0x7f0201a8

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    const v1, 0x7f0201aa

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const v1, 0x7f0201ab

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ftp/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ftp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->j()V

    invoke-virtual {p0}, Lcom/estrongs/android/ftp/ESFtpService;->d()V

    invoke-static {}, Lcom/estrongs/android/util/k;->b()V

    return-void
.end method

.method public c()I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->X()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ftp/a;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v2

    if-eqz v2, :cond_2

    const v0, 0x7f080540

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/i;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f080540

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ftp/ESFtpService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ftp:/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/ftp/a;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/ftp/ESFtpService;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v4, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    :cond_3
    invoke-static {}, Lcom/estrongs/android/util/k;->a()V

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080479

    invoke-direct {p0, v3}, Lcom/estrongs/android/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public d()V
    .locals 2

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x237ee9f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->f:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->i:Z

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->i:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/ESFtpService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    invoke-direct {p0}, Lcom/estrongs/android/ftp/ESFtpService;->g()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ftp/ESFtpService;->d:Z

    const/4 v0, 0x1

    return v0
.end method
