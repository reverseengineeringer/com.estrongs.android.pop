.class public Lcom/estrongs/android/pop/app/aa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Z

.field private static final d:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/estrongs/android/pop/app/aa;


# instance fields
.field private e:Lcom/estrongs/chromecast/ChromeCast;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/estrongs/android/pop/app/ad;

.field private l:Lcom/estrongs/android/pop/app/a/am;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/aa;->c:Z

    const-class v0, Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/aa;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/aa;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.estrongs.chromecast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/aa;->b:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/app/aa;->f:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/app/aa;->g:Lcom/estrongs/android/pop/app/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/aa;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/aa;->i:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/chromecast/MediaMetaData;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/app/aa;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/app/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->i(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/app/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/am;->g()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/a/ak;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Lcom/estrongs/chromecast/MediaMetaData;

    invoke-direct {v0}, Lcom/estrongs/chromecast/MediaMetaData;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/c/a;->a()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/chromecast/MediaMetaData;->imageUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    :try_start_5
    invoke-static {p1}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/d/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_7
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x7f0b04a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000d

    new-instance v2, Lcom/estrongs/android/pop/app/ab;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ab;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/z;->at:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bd;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string v3, "com.estrongs.chromecast"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v3, v1, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/app/aa;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g()Lcom/estrongs/android/pop/app/aa;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/aa;->g:Lcom/estrongs/android/pop/app/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/aa;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/aa;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/aa;->g:Lcom/estrongs/android/pop/app/aa;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/aa;->g:Lcom/estrongs/android/pop/app/aa;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1, p2}, Lcom/estrongs/chromecast/ChromeCast;->mediaSeek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->selectDevice(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/chromecast/ChromeCast;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/a/am;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/aa;->d:Ljava/lang/String;

    const-string v1, "loadMedia failed not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->y()Lcom/estrongs/chromecast/CastDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/c/h;->d(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/c/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/ad;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/ad;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object p3, v0, Lcom/estrongs/android/pop/app/ad;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object p2, v0, Lcom/estrongs/android/pop/app/ad;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object p4, v0, Lcom/estrongs/android/pop/app/ad;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object p1, v0, Lcom/estrongs/android/pop/app/ad;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/ad;->a:Ljava/lang/String;

    :cond_4
    iput-object p5, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/app/aa;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/chromecast/MediaMetaData;

    move-result-object v1

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/estrongs/chromecast/ChromeCast;->loadMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/chromecast/MediaMetaData;)V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/d/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ad;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/aa;->h:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/aa;->i:Z

    return v0
.end method

.method public e()Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/aa;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ldalvik/system/DexClassLoader;

    sget-object v3, Lcom/estrongs/android/pop/app/aa;->f:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-class v8, Lcom/estrongs/android/util/h;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v3, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "com.estrongs.chromecast.ChromeCastImpl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v3, v6, v7}, Lcom/estrongs/android/util/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/ChromeCast;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/aa;->i:Z

    sget-boolean v0, Lcom/estrongs/android/pop/app/aa;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/aa;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load time "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/aa;->h:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v4}, Lcom/estrongs/chromecast/ChromeCast;->init()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b04a6

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b04a5

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_3
    if-gez v4, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b01b6

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/aa;->h:Z

    sget-boolean v4, Lcom/estrongs/android/pop/app/aa;->c:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/estrongs/android/pop/app/aa;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public k()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/am;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/am;->g()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->i()V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/c/a;->a()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/app/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/a/am;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public m()Lcom/estrongs/android/pop/app/a/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->l:Lcom/estrongs/android/pop/app/a/am;

    return-object v0
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/app/aa;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    return-void
.end method

.method public o()Lcom/estrongs/android/pop/app/ad;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->k:Lcom/estrongs/android/pop/app/ad;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->stopScan()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaStop()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public r()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaPlayerState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaStreamDuration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public t()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaStreamPosition()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public u()D
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getVolume()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public v()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->u()D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/aa;->a(Ljava/lang/Double;)V

    return-void
.end method

.method public w()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->u()D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/aa;->a(Ljava/lang/Double;)V

    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/chromecast/CastDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getDevices()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Lcom/estrongs/chromecast/CastDeviceInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getConnectedDevice()Lcom/estrongs/chromecast/CastDeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getIdleReason()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
