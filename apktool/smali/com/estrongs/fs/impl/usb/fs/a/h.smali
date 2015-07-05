.class public Lcom/estrongs/fs/impl/usb/fs/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/a/f;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/estrongs/fs/impl/usb/fs/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/estrongs/fs/impl/usb/fs/a/f;Ljava/util/List;)Lcom/estrongs/fs/impl/usb/fs/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/impl/usb/fs/a/f;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/a/f;",
            ">;)",
            "Lcom/estrongs/fs/impl/usb/fs/a/h;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;-><init>(Lcom/estrongs/fs/impl/usb/fs/a/f;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;-><init>(Lcom/estrongs/fs/impl/usb/fs/a/f;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)Lcom/estrongs/fs/impl/usb/fs/a/h;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;-><init>()V

    iput-object p0, v0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    iget-object v1, v0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Lcom/estrongs/fs/impl/usb/fs/b/a;)V

    return-object v0
.end method

.method static a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/h;)V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(J)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(J)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->c(J)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0xd

    add-int/2addr v0, v2

    rem-int/lit8 v1, v1, 0xd

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method a(J)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->e(J)V

    return-void
.end method

.method a(Ljava/nio/ByteBuffer;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->n()Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/b/a;->b()B

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v3, v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Ljava/lang/String;IBIZ)Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(Ljava/nio/ByteBuffer;)V

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    mul-int/lit8 v3, v1, 0xd

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Ljava/lang/String;IBIZ)Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(Ljava/nio/ByteBuffer;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->n()Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/b/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d(J)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Lcom/estrongs/fs/impl/usb/fs/b/a;)V

    return-void
.end method

.method c()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method d()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(J)V

    return-void
.end method

.method f()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/f;->c(J)V

    return-void
.end method

.method g()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->c()Z

    move-result v0

    return v0
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->d()V

    return-void
.end method

.method i()Lcom/estrongs/fs/impl/usb/fs/a/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    return-object v0
.end method

.method j()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method k()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->h()Z

    move-result v0

    return v0
.end method

.method m()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/h;->a:Lcom/estrongs/fs/impl/usb/fs/a/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->g()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FatLfnDirectoryEntry getName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
