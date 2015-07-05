.class public final Lcom/estrongs/android/pop/zeroconf/e;
.super Lcom/estrongs/android/pop/zeroconf/d;


# static fields
.field public static f:Z


# instance fields
.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Lcom/estrongs/android/pop/zeroconf/f;

.field private final j:Lcom/estrongs/android/pop/zeroconf/f;

.field private final k:Lcom/estrongs/android/pop/zeroconf/f;

.field private final l:Lcom/estrongs/android/pop/zeroconf/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/zeroconf/e;->f:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5b4

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/zeroconf/e;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/estrongs/android/pop/zeroconf/d;-><init>(IIZ)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->g:Ljava/util/Map;

    if-lez p3, :cond_0

    move v0, p3

    :goto_0
    iput v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->h:I

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    invoke-direct {v0, p3, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->i:Lcom/estrongs/android/pop/zeroconf/f;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    invoke-direct {v0, p3, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->j:Lcom/estrongs/android/pop/zeroconf/f;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    invoke-direct {v0, p3, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->k:Lcom/estrongs/android/pop/zeroconf/f;

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    invoke-direct {v0, p3, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->l:Lcom/estrongs/android/pop/zeroconf/f;

    return-void

    :cond_0
    const/16 v0, 0x5b4

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/zeroconf/a;Lcom/estrongs/android/pop/zeroconf/n;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/estrongs/android/pop/zeroconf/n;->a(Lcom/estrongs/android/pop/zeroconf/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/estrongs/android/pop/zeroconf/e;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/g;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/f;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->p()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->i:Lcom/estrongs/android/pop/zeroconf/f;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->write([BII)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/n;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/f;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->p()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->k:Lcom/estrongs/android/pop/zeroconf/f;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->write([BII)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/n;J)V
    .locals 4

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/n;->b(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/f;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/f;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->p()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->j:Lcom/estrongs/android/pop/zeroconf/f;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->write([BII)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "message full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->b()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->h:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->i:Lcom/estrongs/android/pop/zeroconf/f;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->j:Lcom/estrongs/android/pop/zeroconf/f;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->k:Lcom/estrongs/android/pop/zeroconf/f;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/e;->l:Lcom/estrongs/android/pop/zeroconf/f;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/f;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public q()[B
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v1, Lcom/estrongs/android/pop/zeroconf/f;

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->h:I

    invoke-direct {v1, v0, p0}, Lcom/estrongs/android/pop/zeroconf/f;-><init>(ILcom/estrongs/android/pop/zeroconf/e;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->l()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/g;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/g;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/e;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/zeroconf/n;

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/f;->a(Lcom/estrongs/android/pop/zeroconf/n;J)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/estrongs/android/pop/zeroconf/f;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
