.class public Lcom/c/a/a/h;
.super Lcom/c/a/a/t;

# interfaces
.implements Lb/b/b;


# instance fields
.field private a:Lcom/c/a/a/e;


# direct methods
.method public constructor <init>(Lb/a/a/e;Lcom/c/a/a/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/c/a/a/t;-><init>(Lb/a/a/e;Lcom/c/a/a/i;)V

    iput-boolean v0, p0, Lcom/c/a/a/h;->i:Z

    iput-boolean v0, p0, Lcom/c/a/a/h;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    return-void
.end method

.method private a(Lb/b/c;ZZZ)Lb/b/c;
    .locals 5

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v4, v0, [B

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    if-eqz p3, :cond_0

    move v0, v1

    :cond_0
    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    aput-byte v1, v4, v3

    const/16 v2, 0x85

    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v2, v4, v0}, Lcom/c/a/a/h;->a(I[BLcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/h;->f()[B

    move-result-object v0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/h;->a(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    if-nez p4, :cond_2

    invoke-virtual {v1}, Lcom/c/a/a/j;->b()I

    move-result v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/h;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/c/a/a/h;->a(Lb/b/c;ZZZ)Lb/b/c;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Lb/b/c;Z)Lb/b/c;
    .locals 7

    const/4 v6, 0x6

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    iget-boolean v0, p0, Lcom/c/a/a/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v0, 0x10

    aput-byte v0, v1, v4

    aput-byte v4, v1, v5

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/c/a/a/h;->f:Lcom/c/a/a/i;

    iget v2, v2, Lcom/c/a/a/i;->c:I

    invoke-static {v2}, Lcom/c/a/a/v;->a(I)B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v0, p0, Lcom/c/a/a/h;->f:Lcom/c/a/a/i;

    iget v0, v0, Lcom/c/a/a/i;->c:I

    invoke-static {v0}, Lcom/c/a/a/v;->b(I)B

    move-result v0

    aput-byte v0, v1, v3

    const/16 v2, 0x80

    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v2, v1, v0}, Lcom/c/a/a/h;->a(I[BLcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/h;->f()[B

    move-result-object v0

    array-length v1, v0

    if-ge v1, v6, :cond_2

    array-length v1, v0

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response from OBEX server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/c/a/a/v;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response from OBEX server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    aget-byte v2, v0, v6

    invoke-static {v1, v2}, Lcom/c/a/a/v;->a(BB)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MTU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v2, p0, Lcom/c/a/a/h;->d:I

    if-ge v1, v2, :cond_4

    iput v1, p0, Lcom/c/a/a/h;->d:I

    :cond_4
    const-string v1, "mtu selected"

    iget v2, p0, Lcom/c/a/a/h;->d:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    aget-byte v1, v0, v4

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v2

    const/16 v0, 0xcb

    invoke-virtual {v2, v0}, Lcom/c/a/a/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/a/a/h;->c:J

    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/h;->a(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    if-nez p2, :cond_6

    invoke-virtual {v2}, Lcom/c/a/a/j;->b()I

    move-result v0

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v2, v0}, Lcom/c/a/a/h;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    invoke-direct {p0, v1, v5}, Lcom/c/a/a/h;->b(Lb/b/c;Z)Lb/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_6
    invoke-virtual {v2}, Lcom/c/a/a/j;->b()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_7

    iput-boolean v5, p0, Lcom/c/a/a/h;->b:Z

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/h;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    invoke-virtual {v0}, Lcom/c/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client is already in an operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lb/b/c;
    .locals 1

    invoke-static {}, Lcom/c/a/a/t;->d()Lb/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/b/c;)Lb/b/c;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/h;->b(Lb/b/c;Z)Lb/b/c;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/b/c;Z)Lb/b/c;
    .locals 3

    const/16 v1, 0x82

    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/h;->a(ILcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/h;->f()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/h;->a(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/c/a/a/j;->b()I

    move-result v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/h;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/h;->a(Lb/b/c;Z)Lb/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lb/b/c;ZZ)Lb/b/c;
    .locals 1

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    invoke-direct {p0}, Lcom/c/a/a/h;->g()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/a/h;->a(Lb/b/c;ZZZ)Lb/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectionID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/c/a/a/h;->c:J

    return-void
.end method

.method public b(Lb/b/c;)Lb/b/c;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    invoke-direct {p0}, Lcom/c/a/a/h;->g()V

    iget-boolean v0, p0, Lcom/c/a/a/h;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x81

    check-cast p1, Lcom/c/a/a/j;

    invoke-virtual {p0, v0, p1}, Lcom/c/a/a/h;->a(ILcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/h;->f()[B

    move-result-object v0

    iput-boolean v2, p0, Lcom/c/a/a/h;->b:Z

    iget-object v1, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    invoke-virtual {v1}, Lcom/c/a/a/e;->e()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    :cond_1
    aget-byte v1, v0, v2

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    invoke-super {p0}, Lcom/c/a/a/t;->b()Z

    move-result v0

    return v0
.end method

.method public c(Lb/b/c;)Lb/b/d;
    .locals 1

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    invoke-direct {p0}, Lcom/c/a/a/h;->g()V

    new-instance v0, Lcom/c/a/a/f;

    check-cast p1, Lcom/c/a/a/j;

    invoke-direct {v0, p0, p1}, Lcom/c/a/a/f;-><init>(Lcom/c/a/a/h;Lcom/c/a/a/j;)V

    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    return-object v0
.end method

.method public d(Lb/b/c;)Lb/b/d;
    .locals 1

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    invoke-direct {p0}, Lcom/c/a/a/h;->g()V

    new-instance v0, Lcom/c/a/a/g;

    check-cast p1, Lcom/c/a/a/j;

    invoke-direct {v0, p0, p1}, Lcom/c/a/a/g;-><init>(Lcom/c/a/a/h;Lcom/c/a/a/j;)V

    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    return-object v0
.end method

.method public e(Lb/b/c;)Lb/b/c;
    .locals 1

    invoke-static {p1}, Lcom/c/a/a/h;->f(Lb/b/c;)V

    invoke-direct {p0}, Lcom/c/a/a/h;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/h;->a(Lb/b/c;Z)Lb/b/c;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    invoke-virtual {v0}, Lcom/c/a/a/e;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/h;->a:Lcom/c/a/a/e;

    :cond_0
    invoke-super {p0}, Lcom/c/a/a/t;->e()V

    return-void
.end method
