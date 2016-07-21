.class public Lcom/dianxinos/lockscreen/ui/SDCardView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/dianxinos/lockscreen/ui/InfoCycleView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/dianxinos/lockscreen/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/SDCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/SDCardView;)Lcom/dianxinos/lockscreen/a/b;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/dianxinos/lockscreen/ad;->lock_screen_sd_card_layout:I

    invoke-static {p1, v0, p0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_sd_card_info_cycle_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/InfoCycleView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->a:Lcom/dianxinos/lockscreen/ui/InfoCycleView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_card_one_title:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->b:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_card_one_message:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->c:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ab;->lock_screen_sd_card_background:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->setBackgroundResource(I)V

    new-instance v0, Lcom/dianxinos/lockscreen/ui/q;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/q;-><init>(Lcom/dianxinos/lockscreen/ui/SDCardView;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->f()Lcom/dianxinos/lockscreen/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->a:Lcom/dianxinos/lockscreen/ui/InfoCycleView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/InfoCycleView;->a(I)V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard view title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - des:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - per:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/a/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SDCardView;->d:Lcom/dianxinos/lockscreen/a/b;

    return-void
.end method
