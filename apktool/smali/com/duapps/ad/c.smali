.class public Lcom/duapps/ad/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/duapps/ad/entity/a/c;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/duapps/ad/entity/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/duapps/ad/c;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->j()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/c;->d:F

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->e:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->i:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->j:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->k()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/c;->g:I

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c;->k:Ljava/lang/String;

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/c;->o()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/c;->l:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    invoke-interface {v0, p1}, Lcom/duapps/ad/entity/a/c;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    invoke-interface {v0, p1}, Lcom/duapps/ad/entity/a/c;->a(Lcom/duapps/ad/d;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/c;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/c;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/c;->d()V

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/c;->l:I

    return v0
.end method

.method public l()Lcom/duapps/ad/entity/a/c;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/c;->h:Lcom/duapps/ad/entity/a/c;

    return-object v0
.end method
