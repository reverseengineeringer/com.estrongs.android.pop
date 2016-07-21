.class Landroid/support/design/widget/dn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Landroid/support/v4/view/cn;->p(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    invoke-static {p0, v0}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/dn;->d:I

    iget-object v2, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/dn;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->e(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/dn;->e:I

    iget-object v2, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/dn;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->f(Landroid/view/View;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/dn;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/dn;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/dn;->b:I

    iget-object v0, p0, Landroid/support/design/widget/dn;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/dn;->c:I

    invoke-direct {p0}, Landroid/support/design/widget/dn;->c()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/dn;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/dn;->d:I

    invoke-direct {p0}, Landroid/support/design/widget/dn;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/dn;->d:I

    return v0
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/dn;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/dn;->e:I

    invoke-direct {p0}, Landroid/support/design/widget/dn;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
