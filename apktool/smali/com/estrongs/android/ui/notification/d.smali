.class public Lcom/estrongs/android/ui/notification/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/estrongs/android/ui/notification/ESTaskService;

.field private static e:Landroid/content/ServiceConnection;

.field private static f:Z

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/notification/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field public a:J

.field public b:J

.field private i:Landroid/content/Context;

.field private j:Landroid/app/NotificationManager;

.field private k:Z

.field private l:Landroid/app/Notification;

.field private m:I

.field private n:I

.field private o:Ljava/lang/CharSequence;

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/app/PendingIntent;

.field private s:Landroid/app/PendingIntent;

.field private t:Landroid/widget/RemoteViews;

.field private u:Z

.field private v:J

.field private w:J

.field private x:Landroid/support/v4/app/NotificationCompat$Builder;

.field private y:Ljava/lang/Object;

.field private z:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    new-instance v0, Lcom/estrongs/android/ui/notification/e;

    invoke-direct {v0}, Lcom/estrongs/android/ui/notification/e;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/d;->e:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/estrongs/android/ui/notification/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/d;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const-wide/16 v0, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->z:Landroid/text/TextPaint;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->b:J

    iput-boolean v4, p0, Lcom/estrongs/android/ui/notification/d;->B:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/notification/d;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->j:Landroid/app/NotificationManager;

    iput-boolean v4, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->z:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    const-string v0, "android.app.Notification$Builder"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    new-array v2, v5, [Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v6, v0, v1, v2}, Lcom/estrongs/android/util/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    :goto_0
    sget-object v0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->C:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    iget v2, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/estrongs/android/ui/notification/d;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bk;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f0202ba

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const v4, 0x7f08068b

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    const v6, 0x7f08068b

    invoke-virtual {v5, v6}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_1
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    sget-object v2, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    sget-object v3, Lcom/estrongs/android/ui/notification/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/ui/notification/ESTaskService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ui/notification/d;->f:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Landroid/app/Notification;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/notification/ESTaskService;)Lcom/estrongs/android/ui/notification/ESTaskService;
    .locals 0

    sput-object p0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    return-object p0
.end method

.method private a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/notification/d;->A:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/estrongs/android/ui/notification/d;->A:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/notification/d;->A:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/notification/d;->A:I

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/ui/notification/ESTaskService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/ui/notification/d;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/FexApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setProgress"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    iput p1, p0, Lcom/estrongs/android/ui/notification/d;->n:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setSmallIcon"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Z)V
    .locals 4

    const/high16 v3, 0x8000000

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->r:Landroid/app/PendingIntent;

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setContentIntent"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/d;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->r:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setLargeIcon"

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/d;->t:Landroid/widget/RemoteViews;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setContent"

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/d;->o:Ljava/lang/CharSequence;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setTicker"

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/estrongs/android/ui/notification/d;->u:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setOngoing"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->C:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    iget v2, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/notification/ESTaskService;->stopForeground(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ui/notification/d;->f:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    return-void
.end method

.method public b(Landroid/content/Intent;Z)V
    .locals 3

    const/high16 v2, 0x8000000

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->s:Landroid/app/PendingIntent;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setDeleteIntent"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/d;->s:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->i:Landroid/content/Context;

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->s:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->s:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/d;->p:Ljava/lang/CharSequence;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setContentTitle"

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/notification/d;->a(IZ)V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "getNotification"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->t:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->t:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/estrongs/android/ui/notification/d;->A:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->j:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->B:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->j:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public c(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-wide v2, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->a:J

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setProgress"

    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 7

    const/16 v6, 0xe

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget-wide v2, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->z:Landroid/text/TextPaint;

    const/high16 v1, 0x43480000    # 200.0f

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->b:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "setContentText"

    const-class v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/d;->c()V

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/ui/notification/d;->v:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/ui/notification/d;->w:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2
.end method

.method public d()Landroid/app/Notification;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->y:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ao;

    move-result-object v0

    const-string v1, "getNotification"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->x:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/d;->l:Landroid/app/Notification;

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->B:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/d;->j:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->C:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    iget v2, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/d;->d:Lcom/estrongs/android/ui/notification/ESTaskService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/notification/ESTaskService;->stopForeground(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ui/notification/d;->f:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-boolean v3, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/notification/d;->m:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->k:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/d;->B:Z

    return v0
.end method
