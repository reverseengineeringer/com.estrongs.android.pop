.class Lcom/estrongs/android/pop/app/cleaner/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/estrongs/android/pop/app/cleaner/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ab;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ag;->c:Lcom/estrongs/android/pop/app/cleaner/ab;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/ag;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/ag;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0xc8

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/ah;-><init>(Lcom/estrongs/android/pop/app/cleaner/ag;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ag;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ag;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ex;->b(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/ai;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ai;-><init>(Lcom/estrongs/android/pop/app/cleaner/ag;Landroid/support/v4/view/ex;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    goto :goto_0
.end method
