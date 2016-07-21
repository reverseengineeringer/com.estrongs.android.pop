.class public abstract Lcom/estrongs/android/ui/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/cc;


# instance fields
.field private a:Landroid/support/design/widget/TabLayout;

.field private b:I

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/d/a;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/d/a;->i:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/d/a;->j:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    const v0, 0x7f0e04d1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0e04d2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    const v0, 0x7f0e04d3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/a;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->g:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f020424

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e04d4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/a;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/d/b;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/d/b;-><init>(Lcom/estrongs/android/ui/d/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/cc;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/d/a;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/d/a;->b:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/d/a;->d(Landroid/support/design/widget/ch;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/d/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/a;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/d/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/d/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/d/a;->b:I

    return v0
.end method

.method private d(Landroid/support/design/widget/ch;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->d()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/d/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/d/a;->d:I

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/d/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/d/a;->e:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/d/a;->h:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/d/a;->d:I

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/d/a;->e:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/d/a;->d(I)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(IF)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/design/widget/ch;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/d/h;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/ch;

    move-result-object v0

    const v1, 0x7f030119

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ch;->a(I)Landroid/support/design/widget/ch;

    new-instance v1, Lcom/estrongs/android/ui/d/c;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/ui/d/c;-><init>(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;Lcom/estrongs/android/ui/d/h;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/c;->a()V

    iget-object v1, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/ch;Z)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/d/h;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/ch;

    move-result-object v0

    const v1, 0x7f030119

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ch;->a(I)Landroid/support/design/widget/ch;

    new-instance v1, Lcom/estrongs/android/ui/d/c;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/ui/d/c;-><init>(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;Lcom/estrongs/android/ui/d/h;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/c;->a()V

    iget-object v1, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/ch;IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/d/a;->j:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f020445

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    return v0
.end method

.method public abstract b(I)V
.end method

.method public b(Landroid/support/design/widget/ch;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/c;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/d/a;->b:I

    iget v0, p0, Lcom/estrongs/android/ui/d/a;->b:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/d/a;->d(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->b(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/support/design/widget/ch;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/ch;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public d()Lcom/estrongs/android/ui/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/ui/d/i;-><init>()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/d/a;->b:I

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    iget v1, p0, Lcom/estrongs/android/ui/d/a;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/ch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/ch;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    iget v1, p0, Lcom/estrongs/android/ui/d/a;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/ch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/ch;->f()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f020424

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/d/a;->j:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/a;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/d/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/d/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/ch;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/d/c;-><init>(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;Lcom/estrongs/android/ui/d/h;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/d/c;->a()V

    :cond_0
    return-void
.end method
