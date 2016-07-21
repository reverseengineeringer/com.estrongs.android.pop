.class Landroid/support/design/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/cx;


# instance fields
.field final synthetic a:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic b:Landroid/support/design/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ad;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    iput-object p2, p0, Landroid/support/design/widget/ae;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/cs;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ae;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/cs;->d()F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    return-void
.end method
