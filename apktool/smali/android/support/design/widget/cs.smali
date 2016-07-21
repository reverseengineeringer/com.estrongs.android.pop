.class Landroid/support/design/widget/cs;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/design/widget/cz;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->a()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/cz;->a(FF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/cz;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/cz;->a(II)V

    return-void
.end method

.method public a(Landroid/support/design/widget/cv;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    new-instance v1, Landroid/support/design/widget/cu;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/cu;-><init>(Landroid/support/design/widget/cs;Landroid/support/design/widget/cv;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/cz;->a(Landroid/support/design/widget/da;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/cz;->a(Landroid/support/design/widget/da;)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/cx;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    new-instance v1, Landroid/support/design/widget/ct;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ct;-><init>(Landroid/support/design/widget/cs;Landroid/support/design/widget/cx;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/cz;->a(Landroid/support/design/widget/db;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/cz;->a(Landroid/support/design/widget/db;)V

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/cz;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->c()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->d()F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->e()V

    return-void
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->f()F

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/cs;->a:Landroid/support/design/widget/cz;

    invoke-virtual {v0}, Landroid/support/design/widget/cz;->g()J

    move-result-wide v0

    return-wide v0
.end method
