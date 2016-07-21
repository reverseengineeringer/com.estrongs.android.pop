.class public Lcom/estrongs/android/ui/e/hz;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/estrongs/android/ui/e/km;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/estrongs/android/ui/theme/at;

.field private h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/hz;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hz;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/e/hz;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/hz;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/hz;)Lcom/estrongs/android/pop/esclasses/ESScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->g:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->g:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f020411

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->f:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/estrongs/android/ui/e/im;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hz;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/estrongs/android/ui/e/hz;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/e/im;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->d:Lcom/estrongs/android/ui/e/km;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0368

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0367

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0e036a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getView()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    new-instance v1, Lcom/estrongs/android/ui/e/ia;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ia;-><init>(Lcom/estrongs/android/ui/e/hz;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->setOnScrollListener(Lcom/estrongs/android/pop/esclasses/t;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0369

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hz;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hz;->d:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/km;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hz;->d:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/km;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hz;->i:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/hz;->a:Z

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hz;->h:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/hz;->a:Z

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/hz;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/hz;->a:Z

    goto :goto_0
.end method

.method public b()Lcom/estrongs/android/ui/e/km;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->d:Lcom/estrongs/android/ui/e/km;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hz;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method
