.class final Lcom/estrongs/android/pop/app/cleaner/t;
.super Lcom/estrongs/android/widget/b;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/t;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/cleaner/t;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/cleaner/t;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/v4/a/l;)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0x3e8

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/t;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/t;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    int-to-float v4, v0

    invoke-static {v3, v4}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->c:Landroid/view/View;

    neg-int v4, v1

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->d:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ex;->g(F)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ex;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/t;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->g(F)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ex;->a(F)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ex;->b(J)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/t;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ex;->g(F)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ex;->a(F)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ex;->b(J)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/t;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/t;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
