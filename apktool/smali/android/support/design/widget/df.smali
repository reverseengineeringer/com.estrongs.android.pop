.class Landroid/support/design/widget/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/db;

.field final synthetic b:Landroid/support/design/widget/de;


# direct methods
.method constructor <init>(Landroid/support/design/widget/de;Landroid/support/design/widget/db;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/df;->b:Landroid/support/design/widget/de;

    iput-object p2, p0, Landroid/support/design/widget/df;->a:Landroid/support/design/widget/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/df;->a:Landroid/support/design/widget/db;

    invoke-interface {v0}, Landroid/support/design/widget/db;->a()V

    return-void
.end method
