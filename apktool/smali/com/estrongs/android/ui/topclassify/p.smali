.class Lcom/estrongs/android/ui/topclassify/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Lcom/estrongs/android/ui/topclassify/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Lcom/estrongs/android/ui/topclassify/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/topclassify/s;->c()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Lcom/estrongs/android/ui/topclassify/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/p;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Lcom/estrongs/android/ui/topclassify/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/topclassify/s;->a()V

    :cond_0
    return-void
.end method
