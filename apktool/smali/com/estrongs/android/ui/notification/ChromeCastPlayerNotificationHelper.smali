.class public Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/chromecast/ChromeCastConnectionListener;
.implements Lcom/estrongs/chromecast/RemoteMediaPlayerListener;


# static fields
.field private static b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;


# instance fields
.field private a:Z

.field private c:Lcom/estrongs/android/pop/app/aa;

.field private d:Landroid/content/Context;

.field private e:Lcom/estrongs/android/ui/notification/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->g()Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    return-void
.end method

.method public static a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    invoke-direct {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;
    .locals 0

    sput-object p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    return-object p0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;)Lcom/estrongs/android/ui/notification/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    return-object v0
.end method

.method static synthetic k()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a:Z

    return-void
.end method

.method public c()V
    .locals 10

    const v9, 0x7f0a006e

    const v8, 0x7f0a006d

    const v7, 0x7f0a006f

    const/16 v6, 0x8

    const/4 v5, 0x1

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030020

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->o()Lcom/estrongs/android/pop/app/ad;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const v3, 0x7f0a006a

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0070

    invoke-virtual {v1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    const v0, 0x7f0a006c

    iget-object v3, v2, Lcom/estrongs/android/pop/app/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0a0070

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->f()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0a00e0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->h()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    const v0, 0x7f020015

    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    const/4 v0, 0x0

    iget-object v3, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const-class v4, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/notification/c;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Lcom/estrongs/android/ui/notification/c;

    iget-object v4, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/ui/notification/c;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/notification/c;->a(Z)V

    iget-object v1, v2, Lcom/estrongs/android/pop/app/ad;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "ChromecastNotification"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Chromecast"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v1, v0, v5}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/content/Intent;Z)V

    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->a(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    iget-object v1, v2, Lcom/estrongs/android/pop/app/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->c()V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f020016

    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_9
    iget-object v3, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const-class v4, Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_a
    iget-object v3, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const-class v4, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, v2, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/c;->a(I)V

    goto :goto_3
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.chromecast.control.preview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.chromecast.control.play"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.chromecast.control.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.chromecast.control.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.chromecast.control.disconnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->g()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->e()V

    :cond_0
    return-void
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b:Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    iget-object v0, v0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->e()V

    :cond_0
    return-void
.end method

.method public onStatusUpdated(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->e:Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->b()V

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->z()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->c:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->k()V

    :cond_1
    return-void
.end method
