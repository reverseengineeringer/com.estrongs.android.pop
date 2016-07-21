.class Landroid/support/v4/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v4/a/d;

.field final synthetic b:Landroid/support/v4/a/j;


# direct methods
.method constructor <init>(Landroid/support/v4/a/j;Landroid/support/v4/a/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/k;->b:Landroid/support/v4/a/j;

    iput-object p2, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/d;

    iget-object v1, p0, Landroid/support/v4/a/k;->b:Landroid/support/v4/a/j;

    invoke-interface {v0, v1}, Landroid/support/v4/a/d;->onAnimationUpdate(Landroid/support/v4/a/l;)V

    return-void
.end method
