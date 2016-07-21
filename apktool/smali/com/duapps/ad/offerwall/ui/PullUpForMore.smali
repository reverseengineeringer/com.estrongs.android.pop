.class public Lcom/duapps/ad/offerwall/ui/PullUpForMore;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/dianxinos/a/a/f;->duapps_ad_pull_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/b;->duapps_ad_offer_wall_indeterminate_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/dianxinos/a/a/f;->duapps_ad_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/dianxinos/a/a/f;->duapps_ad_footer_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFooterViewOptions()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_offer_wall_more_footer_tip:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_offer_wall_more_footer_pb:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    return-void
.end method

.method public setFooterViewOptions(I)V
    .locals 1

    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
