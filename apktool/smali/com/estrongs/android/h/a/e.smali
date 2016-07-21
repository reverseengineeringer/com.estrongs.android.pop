.class public Lcom/estrongs/android/h/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static b:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private static d:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private static e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# direct methods
.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/h/a/e;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 5

    sget-object v0, Lcom/estrongs/android/h/a/e;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/h/a/e;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/h/a/e;->f()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/h/a/c;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/h/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/h/a/e;->b:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/16 v1, 0x140

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/h/a/e;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    sget-object v1, Lcom/estrongs/android/h/a/e;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    sget-object v0, Lcom/estrongs/android/h/a/e;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    goto :goto_0
.end method

.method public static a(ILandroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "es_drawable://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p0, v2}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    return-void
.end method

.method public static a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "es_drawable://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/h/f;->k(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, p0, v1}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    instance-of v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    instance-of v1, p1, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/d;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020089

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_2
    new-instance v3, Lcom/estrongs/android/h/a/g;

    invoke-direct {v3, p1, p0}, Lcom/estrongs/android/h/a/g;-><init>(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/estrongs/fs/impl/c/b;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_3
    instance-of v1, p1, Lcom/estrongs/fs/impl/c/d;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    move-object v1, p1

    check-cast v1, Lcom/estrongs/fs/impl/c/d;

    iget-object v1, v1, Lcom/estrongs/fs/impl/c/d;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-virtual {v4, v5, v1, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_4
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    :cond_5
    invoke-static {p1}, Lcom/estrongs/fs/util/j;->c(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0202e3

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setLeftCornerImage(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/estrongs/android/ui/pcs/z;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0202e8

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->c(Landroid/graphics/drawable/Drawable;F)V

    :goto_2
    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->invalidate()V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1}, Lcom/estrongs/fs/h;->isLink()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0201fc

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setLeftCornerImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/estrongs/fs/util/a;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const v1, 0x7f020182

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setLeftCornerImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/h/f;->g(Lcom/estrongs/fs/h;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;I)V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/h/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p0, p2, v1}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p1, p0}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appIcon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f020188

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V
    .locals 3

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/h/a/e;->b()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    :cond_0
    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-ne p3, v2, :cond_6

    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/estrongs/android/h/f;->g(Lcom/estrongs/fs/h;)I

    move-result p3

    move v0, p3

    :goto_0
    if-ne v0, v2, :cond_5

    const v0, 0x7f0201a4

    move v1, v0

    :goto_1
    const v0, 0x7f020195

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/android/h/a/e;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/h/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/h/a/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/a/e;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    :cond_1
    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v2, Lcom/estrongs/android/h/a/e;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    :goto_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    sget-object v2, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-static {}, Lcom/estrongs/android/h/a/e;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/h/a/f;

    invoke-direct {v2}, Lcom/estrongs/android/h/a/f;-><init>()V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/android/h/a/e;->d:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/a/e;->d:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    :cond_3
    sget-object v0, Lcom/estrongs/android/h/a/e;->c:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v2, Lcom/estrongs/android/h/a/e;->d:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    move v0, p3

    goto :goto_0
.end method

.method public static b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folderIcon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/h/a/e;->f()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/estrongs/android/h/a/e;->b:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    return-void
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/h/a/e;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    return-void
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/h/a/e;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method public static e()V
    .locals 0

    invoke-static {}, Lcom/estrongs/android/h/a/e;->c()V

    invoke-static {}, Lcom/estrongs/android/h/a/e;->d()V

    return-void
.end method

.method private static f()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/estrongs/android/h/a/e;->b:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/h/a/e;->b:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_0
    return-void
.end method
