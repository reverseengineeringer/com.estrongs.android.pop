.class public Lcom/duapps/ad/offerwall/ui/g;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/util/SparseBooleanArray;

.field private e:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private f:Lcom/duapps/ad/stats/c;

.field private g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private h:Lcom/duapps/ad/offerwall/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/util/SparseBooleanArray;

    iput-object p2, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/j;->a(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iput p3, p0, Lcom/duapps/ad/offerwall/ui/g;->c:I

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v1, Lcom/dianxinos/a/a/c;->v2_default_icon:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/c;->v2_default_icon:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/c;->v2_default_icon:I

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method private a(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 p1, 0x40900000    # 4.5f

    :cond_0
    return p1
.end method

.method private a(Lcom/facebook/ads/NativeAd$Rating;)F
    .locals 2

    if-nez p1, :cond_0

    const/high16 v0, 0x40900000    # 4.5f

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/e;->duapps_ad_offer_wall_item_1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/duapps/ad/offerwall/ui/i;

    invoke-direct {v1}, Lcom/duapps/ad/offerwall/ui/i;-><init>()V

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_icon_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/widget/ImageView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_title_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->b:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_ratingbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->e:Landroid/widget/RatingBar;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_desc_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_action_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/facebook/ads/NativeAd;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->e:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/duapps/ad/offerwall/ui/g;->a(Lcom/facebook/ads/NativeAd$Rating;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/g;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/g;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    new-instance v1, Lcom/duapps/ad/offerwall/a/j;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/g;->c:I

    invoke-direct {v1, v2, p1, v3}, Lcom/duapps/ad/offerwall/a/j;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->h:Lcom/duapps/ad/offerwall/a/j;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->h:Lcom/duapps/ad/offerwall/a/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/i;

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/g;)Lcom/duapps/ad/stats/c;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->f:Lcom/duapps/ad/stats/c;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/g;Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/stats/c;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/g;->f:Lcom/duapps/ad/stats/c;

    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/ui/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/e;->duapps_ad_offer_wall_item_1:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/duapps/ad/offerwall/ui/i;

    invoke-direct {v1}, Lcom/duapps/ad/offerwall/ui/i;-><init>()V

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_icon_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/widget/ImageView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_title_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->b:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_ratingbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->e:Landroid/widget/RatingBar;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_desc_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_action_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->d:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    iput p1, v0, Lcom/duapps/ad/entity/AdData;->f:I

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->e:Landroid/widget/RatingBar;

    iget v3, v0, Lcom/duapps/ad/entity/AdData;->k:F

    invoke-direct {p0, v3}, Lcom/duapps/ad/offerwall/ui/g;->a(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/g;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->g:Ljava/lang/String;

    iget-object v4, v1, Lcom/duapps/ad/offerwall/ui/i;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/duapps/ad/offerwall/ui/g;->g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    const/4 v2, 0x1

    iget v3, v0, Lcom/duapps/ad/entity/AdData;->r:I

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->f:Landroid/widget/ImageView;

    sget v3, Lcom/dianxinos/a/a/c;->v2_hot:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/duapps/ad/offerwall/ui/i;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/h;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/h;-><init>(Lcom/duapps/ad/offerwall/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/i;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/duapps/ad/entity/AdData;->r:I

    if-ne v7, v2, :cond_3

    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->f:Landroid/widget/ImageView;

    sget v3, Lcom/dianxinos/a/a/c;->v2_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/duapps/ad/offerwall/ui/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/g;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/g;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/g;->getItemViewType(I)I

    move-result v2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, p1, :cond_1

    instance-of v0, v1, Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    iput p1, v0, Lcom/duapps/ad/entity/AdData;->f:I

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    new-instance v4, Lcom/duapps/ad/stats/p;

    move-object v0, v1

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    invoke-direct {v4, v0}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-static {v3, v4, p1}, Lcom/duapps/ad/stats/u;->a(Landroid/content/Context;Lcom/duapps/ad/stats/p;I)V

    const-string v0, "OfferWallAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has reported at position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lcom/duapps/ad/entity/AdData;

    iget-object v1, v1, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_1
    if-nez v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/duapps/ad/offerwall/ui/g;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    instance-of v0, v1, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/g;->c:I

    invoke-static {v0, p1, v3}, Lcom/duapps/ad/stats/u;->a(Landroid/content/Context;II)V

    const-string v0, "OfferWallAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has reported at position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v1, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/duapps/ad/offerwall/ui/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
