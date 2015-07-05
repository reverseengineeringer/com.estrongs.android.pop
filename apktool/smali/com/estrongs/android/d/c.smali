.class public Lcom/estrongs/android/d/c;
.super Lcom/estrongs/android/d/a;


# static fields
.field private static b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/d/c;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/d/c;->b()Ljava/io/File;

    move-result-object v0

    const-string v1, ".albumart"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".albumart"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected c(Lcom/estrongs/fs/h;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v8, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "album_id"

    aput-object v3, v2, v10

    const-string v3, "album_key"

    aput-object v3, v2, v8

    const-string v3, "_data=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/estrongs/android/util/aj;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/d/f;->e()I

    move-result v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v2, v2

    div-float v7, v3, v5

    div-float v8, v4, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v3, v7

    float-to-int v3, v3

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v0, v3, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    div-float/2addr v0, v11

    :goto_1
    float-to-int v0, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float v6, v4, v11

    :cond_3
    float-to-int v4, v6

    float-to-int v5, v5

    float-to-int v2, v2

    invoke-static {v3, v0, v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_6

    sget-object v1, Lcom/estrongs/android/d/c;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v2, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02016a

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/d/c;->b:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/estrongs/android/d/c;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/estrongs/android/d/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_5
    sget-object v1, Lcom/estrongs/android/d/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/estrongs/android/d/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_6
    return-object v0

    :cond_7
    move v0, v6

    goto :goto_1

    :cond_8
    move-object v0, v7

    goto :goto_2

    :cond_9
    move-object v5, v0

    goto/16 :goto_0
.end method

.method public d()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "131104"

    aput-object v2, v0, v1

    return-object v0
.end method
