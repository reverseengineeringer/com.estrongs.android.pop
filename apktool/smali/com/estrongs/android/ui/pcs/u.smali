.class public Lcom/estrongs/android/ui/pcs/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/ui/pcs/u;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/android/ui/pcs/l;

.field private f:Z

.field private g:Lcom/estrongs/android/ui/pcs/q;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/pcs/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/u;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->h:Ljava/util/List;

    iput v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    return-void
.end method

.method public static a()Lcom/estrongs/android/ui/pcs/u;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/u;

    invoke-direct {v0}, Lcom/estrongs/android/ui/pcs/u;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/u;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/pcs/u;->a:Lcom/estrongs/android/ui/pcs/u;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    iput p1, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/u;->f:Z

    :cond_0
    iget v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/pcs/v;

    iget v2, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/pcs/v;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/u;->e:Lcom/estrongs/android/ui/pcs/l;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/u;->g:Lcom/estrongs/android/ui/pcs/q;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/u;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/estrongs/android/ui/pcs/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->g:Lcom/estrongs/android/ui/pcs/q;

    return-object v0
.end method

.method public j()Lcom/estrongs/android/ui/pcs/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->e:Lcom/estrongs/android/ui/pcs/l;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
