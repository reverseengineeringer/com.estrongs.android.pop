.class public Lde/innosystec/unrar/unpack/ppm/j;
.super Lde/innosystec/unrar/unpack/ppm/d;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/d;-><init>([B)V

    return-void
.end method

.method public static a(Lde/innosystec/unrar/unpack/ppm/j;Lde/innosystec/unrar/unpack/ppm/j;)V
    .locals 7

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget-object v4, p1, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    const/4 v2, 0x0

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    iget v0, p1, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_0

    aget-byte v5, v3, v1

    aget-byte v6, v4, v0

    aput-byte v6, v3, v1

    aput-byte v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a([B)Lde/innosystec/unrar/unpack/ppm/j;
    .locals 1

    iput-object p1, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    return-object p0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/c;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/j;)V
    .locals 5

    iget-object v0, p1, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p1, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/k;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/k;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->a(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/k;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->b(I)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/k;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->e(I)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    return v0
.end method

.method public d()Lde/innosystec/unrar/unpack/ppm/j;
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    return-object p0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, v0, v1

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/b/b;->c([BII)V

    return-void
.end method

.method public f()Lde/innosystec/unrar/unpack/ppm/j;
    .locals 1

    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/j;->c(I)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
