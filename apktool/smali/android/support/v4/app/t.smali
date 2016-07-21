.class Landroid/support/v4/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/v4/app/v;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroid/support/v4/app/q;


# direct methods
.method constructor <init>(Landroid/support/v4/app/q;Landroid/view/View;Landroid/support/v4/app/v;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/t;->e:Landroid/support/v4/app/q;

    iput-object p2, p0, Landroid/support/v4/app/t;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/v;

    iput p4, p0, Landroid/support/v4/app/t;->c:I

    iput-object p5, p0, Landroid/support/v4/app/t;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/t;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->e:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/v;

    iget v2, p0, Landroid/support/v4/app/t;->c:I

    iget-object v3, p0, Landroid/support/v4/app/t;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/q;Landroid/support/v4/app/v;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
