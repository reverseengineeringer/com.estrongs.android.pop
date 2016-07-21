.class public Lcom/estrongs/android/ui/notification/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/ui/notification/j;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/notification/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/notification/j;->a:Lcom/estrongs/android/ui/notification/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/j;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/j;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/j;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/j;->a:Lcom/estrongs/android/ui/notification/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/notification/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/ui/notification/j;->a:Lcom/estrongs/android/ui/notification/j;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/notification/j;->a:Lcom/estrongs/android/ui/notification/j;

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/notification/j;->a:Lcom/estrongs/android/ui/notification/j;

    return-void
.end method

.method private a(Landroid/app/Notification;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/notification/j;->a(Landroid/app/Notification;I)V

    return-void

    :cond_0
    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v0, 0xbbaee0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/estrongs/android/ui/notification/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0202c5

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02023f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/notification/j;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/notification/d;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/notification/j;->a(Landroid/app/Notification;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v1, "category"

    const-string v2, "preference_display_settings_category"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030175

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/estrongs/android/ui/notification/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/widget/RemoteViews;)V

    const v2, 0x7f0e0602

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/notification/j;->f(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f0e0603

    invoke-direct {p0}, Lcom/estrongs/android/ui/notification/j;->d()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/notification/j;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/notification/d;->d()Landroid/app/Notification;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/ui/notification/j;->a(Landroid/app/Notification;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "select_notification_usb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "select_notification_sd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.PERFNOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 14

    const-wide/16 v12, 0x400

    const v11, 0x7f0e01ed

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/notification/d;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/j;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/notification/j;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/notification/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/ui/notification/j;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e00c7

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v2

    aget-wide v4, v2, v10

    aget-wide v6, v2, v6

    sub-long/2addr v4, v6

    aget-wide v6, v2, v8

    mul-long/2addr v4, v6

    aget-wide v6, v2, v10

    aget-wide v2, v2, v8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    div-long v6, v2, v12

    long-to-int v6, v6

    div-long v8, v4, v12

    long-to-int v7, v8

    invoke-virtual {v1, v11, v6, v7, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    :goto_1
    const v6, 0x7f0e022e

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0e0230

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/widget/RemoteViews;)V

    :goto_2
    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/notification/j;->a(Landroid/app/Notification;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    long-to-int v6, v2

    long-to-int v7, v4

    invoke-virtual {v1, v11, v6, v7, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v1

    aget-wide v2, v1, v10

    aget-wide v4, v1, v6

    sub-long/2addr v2, v4

    aget-wide v4, v1, v8

    mul-long/2addr v2, v4

    aget-wide v4, v1, v10

    aget-wide v6, v1, v8

    mul-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/notification/j;->f:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/notification/j;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/notification/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/notification/j;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/j;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/j;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
