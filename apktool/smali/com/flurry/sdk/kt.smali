.class public abstract Lcom/flurry/sdk/kt;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/flurry/sdk/kv;

.field protected d:Ljava/lang/String;

.field private e:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/jk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kt;->b:Ljava/util/Set;

    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v0, Lcom/flurry/sdk/kt$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kt$1;-><init>(Lcom/flurry/sdk/kt;)V

    iput-object v0, p0, Lcom/flurry/sdk/kt;->e:Lcom/flurry/sdk/kb;

    iput-object p2, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kt;->e:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/kt$a;)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kt$4;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kt$4;-><init>(Lcom/flurry/sdk/kt;Lcom/flurry/sdk/kt$a;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ly;)V

    return-void
.end method

.method protected a(Lcom/flurry/sdk/ly;)V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kt$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kt$2;-><init>(Lcom/flurry/sdk/kt;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ly;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kt$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/kt$7;-><init>(Lcom/flurry/sdk/kt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ly;)V

    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/kt$a;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/kt;->c([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt$a;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kt$8;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kt$8;-><init>(Lcom/flurry/sdk/kt;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ly;)V

    return-void
.end method

.method public b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/kt;->a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/kt$a;)V

    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kt;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kt$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/kt$3;-><init>(Lcom/flurry/sdk/kt;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ly;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kt;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected d([BLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ku;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/ku;-><init>([B)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ku;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ".yflurrydatasenderblock."

    const/4 v6, 0x1

    new-instance v7, Lcom/flurry/sdk/kt$5;

    invoke-direct {v7, p0}, Lcom/flurry/sdk/kt$5;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving Block File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/ku;Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt$a;)V

    return-void
.end method

.method protected f()Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/kt;->d()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v0}, Lcom/flurry/sdk/kv;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/kt;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kv;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of not sent blocks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/kt;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/kt;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, ".yflurrydatasenderblock."

    const/4 v8, 0x1

    new-instance v9, Lcom/flurry/sdk/kt$6;

    invoke-direct {v9, p0}, Lcom/flurry/sdk/kt$6;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    invoke-virtual {v2}, Lcom/flurry/sdk/jz;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/ku;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Cannot read!"

    invoke-static {v12, v2, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/kv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/flurry/sdk/ku;->b()[B

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v6, v2

    if-nez v6, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Report is empty!"

    invoke-static {v12, v2, v6}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/kv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/flurry/sdk/kt;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading block info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v6, v7}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/flurry/sdk/kt;->b:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v1, v0}, Lcom/flurry/sdk/kt;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
