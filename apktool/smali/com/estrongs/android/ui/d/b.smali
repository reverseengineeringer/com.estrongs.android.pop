.class public abstract Lcom/estrongs/android/ui/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field protected c:Lcom/estrongs/android/ui/view/IndicatorView;

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    iput-object p1, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/estrongs/android/ui/d/b;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/d/b;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/estrongs/android/ui/d/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/d/c;-><init>(Lcom/estrongs/android/ui/d/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/d/d;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    iget v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/d/b;->e(I)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/view/IndicatorView;->a(IF)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/view/IndicatorView;->a(II)V

    iput p2, p0, Lcom/estrongs/android/ui/d/b;->d:I

    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/b;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/d/b;->c(I)V

    return-void

    :cond_1
    if-eq v0, p1, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/d/d;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/d/d;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/d/d;I)V

    return-void
.end method

.method protected b()I
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lcom/estrongs/android/ui/d/b;->d:I

    if-ne v1, p1, :cond_1

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    iget v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    iget v2, p0, Lcom/estrongs/android/ui/d/b;->d:I

    if-gt p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/estrongs/android/ui/view/IndicatorView;->a(IIZ)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    iget v1, p0, Lcom/estrongs/android/ui/d/b;->d:I

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(II)V

    :goto_0
    iput p1, p0, Lcom/estrongs/android/ui/d/b;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->b(I)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/d/b;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/b;->e(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->b(I)V

    iput p1, p0, Lcom/estrongs/android/ui/d/b;->d:I

    return-void
.end method

.method public f(I)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/b;->c:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1, p1, v0}, Lcom/estrongs/android/ui/view/IndicatorView;->a(ILcom/estrongs/android/ui/d/d;)V

    return-void
.end method
