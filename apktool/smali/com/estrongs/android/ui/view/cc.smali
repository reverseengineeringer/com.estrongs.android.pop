.class Lcom/estrongs/android/ui/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/cc;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/cc;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/cc;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/estrongs/android/ui/view/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/cd;-><init>(Lcom/estrongs/android/ui/view/cc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method
