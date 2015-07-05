.class public Lde/innosystec/unrar/unpack/ppm/g;
.super Lde/innosystec/unrar/unpack/ppm/d;


# instance fields
.field private a:I

.field private b:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/d;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;-><init>([B)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->a(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->d(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/g;->f:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/b/b;->c([BII)V

    :cond_0
    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/g;)V
    .locals 2

    new-instance v0, Lde/innosystec/unrar/unpack/ppm/g;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;-><init>([B)V

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->d(I)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->a(I)V

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/g;->b(Lde/innosystec/unrar/unpack/ppm/g;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/g;->c(I)V

    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/g;->c(Lde/innosystec/unrar/unpack/ppm/g;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->f:I

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->f:I

    return v0
.end method

.method public b(I)V
    .locals 3

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->b:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x2

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lde/innosystec/unrar/b/b;->a([BIS)V

    :cond_0
    return-void
.end method

.method public b(Lde/innosystec/unrar/unpack/ppm/g;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/g;->a(I)V

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->b:I

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->b:I

    return v0
.end method

.method public c(Lde/innosystec/unrar/unpack/ppm/g;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/g;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/g;->d(I)V

    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->g:I

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->g:I

    return v0
.end method

.method public d(I)V
    .locals 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/g;->g:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/b/b;->c([BII)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/g;->a:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lde/innosystec/unrar/b/b;->a([BIS)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/g;->d:I

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->a:I

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/g;->a:I

    return v0
.end method
