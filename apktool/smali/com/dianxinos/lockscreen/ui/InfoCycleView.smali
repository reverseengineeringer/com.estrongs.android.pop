.class public Lcom/dianxinos/lockscreen/ui/InfoCycleView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/dianxinos/lockscreen/ui/InfoProgressView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ad;->lock_screen_info_cycle_view_layout:I

    invoke-static {v0, v1, p0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_info_cycle_progress:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->b:Lcom/dianxinos/lockscreen/ui/InfoProgressView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_info_cycle_text:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->a:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_info_cycle_percent_sign:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->b:Lcom/dianxinos/lockscreen/ui/InfoProgressView;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->a()V

    return-void
.end method
