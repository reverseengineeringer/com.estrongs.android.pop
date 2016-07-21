.class public Lcom/dianxinos/lockscreen/ad/extra/g;
.super Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;


# instance fields
.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:I

.field private o:I

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/duapps/ad/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ad/extra/g;-><init>(Landroid/content/Context;Lcom/duapps/ad/c;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duapps/ad/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;-><init>(Landroid/content/Context;Lcom/duapps/ad/c;Z)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/extra/g;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ad/extra/g;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ad/extra/g;)Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->r:Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_samll_icon_default:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_samll_icon_default:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_samll_icon_default:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_big_img_bg:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_big_img_bg:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ab;->screenlock_big_img_bg:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dianxinos/lockscreen/aa;->sl_big_ad_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->n:I

    iget v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->n:I

    int-to-double v0, v0

    const-wide v2, 0x3ffe666666666666L    # 1.9

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->o:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->a:Landroid/content/Context;

    sget v1, Lcom/dianxinos/lockscreen/ad;->view_screenlock_big:I

    invoke-static {v0, v1, p0}, Lcom/dianxinos/lockscreen/ad/extra/g;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->tv_ad_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->ic_small:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->ic_applock_big_ad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->ic_big_image_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->btn_click:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->ic_big_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->r:Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/lockscreen/ac;->big_image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->k:Z

    iput v4, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->b:I

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 5

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/extra/g;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->c:Lcom/duapps/ad/c;

    invoke-virtual {v1}, Lcom/duapps/ad/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->c:Lcom/duapps/ad/c;

    invoke-virtual {v1}, Lcom/duapps/ad/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->c:Lcom/duapps/ad/c;

    invoke-virtual {v1}, Lcom/duapps/ad/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->c:Lcom/duapps/ad/c;

    invoke-virtual {v1}, Lcom/duapps/ad/c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->r:Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ad/extra/g;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v4, Lcom/dianxinos/lockscreen/ad/extra/h;

    invoke-direct {v4, p0}, Lcom/dianxinos/lockscreen/ad/extra/h;-><init>(Lcom/dianxinos/lockscreen/ad/extra/g;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method
