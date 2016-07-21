.class Landroid/support/design/widget/cg;
.super Landroid/support/design/widget/cw;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/ce;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ce;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/cg;->b:Landroid/support/design/widget/ce;

    iput p2, p0, Landroid/support/design/widget/cg;->a:I

    invoke-direct {p0}, Landroid/support/design/widget/cw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/cs;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/cg;->b:Landroid/support/design/widget/ce;

    iget v1, p0, Landroid/support/design/widget/cg;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/ce;->a(Landroid/support/design/widget/ce;I)I

    iget-object v0, p0, Landroid/support/design/widget/cg;->b:Landroid/support/design/widget/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/ce;->a(Landroid/support/design/widget/ce;F)F

    return-void
.end method
