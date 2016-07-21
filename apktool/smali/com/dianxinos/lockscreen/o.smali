.class public Lcom/dianxinos/lockscreen/o;
.super Lcom/dianxinos/lockscreen/v;


# instance fields
.field private a:Lcom/dianxinos/lockscreen/c;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/v;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/o;->a:Lcom/dianxinos/lockscreen/c;

    iput-object p1, p0, Lcom/dianxinos/lockscreen/o;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/o;)Lcom/dianxinos/lockscreen/c;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->a:Lcom/dianxinos/lockscreen/c;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/o;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/lockscreen/o;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->a:Lcom/dianxinos/lockscreen/c;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->e:Landroid/content/res/Resources;

    sget v2, Lcom/dianxinos/lockscreen/ab;->lock_screen_setting_switch_open:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->e:Landroid/content/res/Resources;

    sget v2, Lcom/dianxinos/lockscreen/ab;->lock_screen_setting_switch_close:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ad;->lock_screen_setting_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/dianxinos/lockscreen/ac;->setting_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/o;->b:Landroid/widget/ImageView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->setting_switch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/o;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->a()Lcom/dianxinos/lockscreen/r;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v0, Lcom/dianxinos/lockscreen/ac;->main_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->setting_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/dianxinos/lockscreen/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/o;->e:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/o;->c()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/dianxinos/lockscreen/p;

    invoke-direct {v2, p0}, Lcom/dianxinos/lockscreen/p;-><init>(Lcom/dianxinos/lockscreen/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/o;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/dianxinos/lockscreen/q;

    invoke-direct {v2, p0}, Lcom/dianxinos/lockscreen/q;-><init>(Lcom/dianxinos/lockscreen/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
