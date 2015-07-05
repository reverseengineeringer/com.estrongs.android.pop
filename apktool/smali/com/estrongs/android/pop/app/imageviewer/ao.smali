.class public Lcom/estrongs/android/pop/app/imageviewer/ao;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ao;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/content/Intent;
    .locals 3

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mimeType"

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    :cond_0
    if-nez p4, :cond_1

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v0

    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v4

    invoke-virtual {v4, v3, p5}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-boolean v4, Lcom/estrongs/android/pop/z;->x:Z

    if-nez v4, :cond_5

    :goto_1
    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x1

    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, p5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v1

    invoke-virtual {v1, v3, p5}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_7

    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz p4, :cond_0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :goto_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v6

    :goto_2
    invoke-static {v4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v6

    :goto_3
    invoke-static {v4}, Lcom/estrongs/fs/util/j;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v5, v6

    goto :goto_0
.end method

.method public static a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :goto_0
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v3, v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v4, v2, p3

    if-nez p4, :cond_3

    if-ltz v3, :cond_0

    if-gez v4, :cond_3

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v4, v3, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, p2, v1

    sub-int v8, p3, v3

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p1, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    int-to-float v5, p2

    int-to-float v6, p3

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    int-to-float v2, p3

    div-float/2addr v2, v3

    cmpg-float v3, v2, v7

    if-ltz v3, :cond_4

    cmpl-float v3, v2, v8

    if-lez v3, :cond_7

    :cond_4
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_1
    move-object v5, p0

    :goto_2
    if-eqz v5, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_3
    if-eqz p5, :cond_5

    if-eq v2, p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_2

    if-nez p5, :cond_6

    if-eq v2, p1, :cond_2

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_7
    move-object p0, v0

    goto :goto_1

    :cond_8
    int-to-float v3, p2

    div-float v2, v3, v2

    cmpg-float v3, v2, v7

    if-ltz v3, :cond_9

    cmpl-float v3, v2, v8

    if-lez v3, :cond_a

    :cond_9
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_2

    :cond_a
    move-object v5, v0

    goto :goto_2

    :cond_b
    move-object v2, p1

    goto :goto_3
.end method

.method public static a()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/estrongs/android/pop/app/imageviewer/ap;-><init>(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_1

    move v0, v1

    :goto_0
    if-ne p1, v10, :cond_2

    const/16 v2, 0x80

    :goto_1
    if-ge v2, v0, :cond_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0

    :cond_2
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_3
    if-ne p2, v10, :cond_4

    if-ne p1, v10, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    if-eq p1, v10, :cond_0

    move v0, v2

    goto :goto_2
.end method
