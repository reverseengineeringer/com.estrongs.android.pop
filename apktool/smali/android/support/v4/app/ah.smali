.class public Landroid/support/v4/app/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/ai",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ai;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ai",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/ai;)Landroid/support/v4/app/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ai",
            "<*>;)",
            "Landroid/support/v4/app/ah;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ah;-><init>(Landroid/support/v4/app/ai;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/aj;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->k()Landroid/support/v4/app/al;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/al;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    iget-object v0, v0, Landroid/support/v4/app/al;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/app/ah;->c()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    iget-object v0, v0, Landroid/support/v4/app/al;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/al;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    iget-object v1, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v2, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/al;->a(Landroid/support/v4/app/ai;Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public a(Landroid/support/v4/e/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/r",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bk;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ai;->a(Landroid/support/v4/e/r;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ai;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ai;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/al;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/app/bk;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->l()Landroid/support/v4/app/bm;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/al;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    iget-object v0, v0, Landroid/support/v4/app/al;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->k()V

    return-void
.end method

.method public e()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->j()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->l()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->m()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->n()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->o()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->p()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->q()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->r()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->t()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->u()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    iget-object v0, v0, Landroid/support/v4/app/ai;->d:Landroid/support/v4/app/al;

    invoke-virtual {v0}, Landroid/support/v4/app/al;->g()Z

    move-result v0

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->n()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->o()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->p()V

    return-void
.end method

.method public t()Landroid/support/v4/e/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/r",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/ai;

    invoke-virtual {v0}, Landroid/support/v4/app/ai;->q()Landroid/support/v4/e/r;

    move-result-object v0

    return-object v0
.end method
