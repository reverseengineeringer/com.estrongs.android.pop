.class public Lcom/estrongs/android/b/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;


# direct methods
.method public static a()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/h/a/e;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/b/a/c;->c()V

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    new-instance v0, Lcom/estrongs/android/b/a/d;

    invoke-direct {v0, p1, p0}, Lcom/estrongs/android/b/a/d;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/b/a/c;->c()V

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/estrongs/android/b/a/c;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/b/a/c;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/b/a/c;->a()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method static synthetic b()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    return-object v0
.end method

.method private static c()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/h/a/e;->b()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    sget-object v0, Lcom/estrongs/android/b/a/c;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    :cond_0
    return-void
.end method
