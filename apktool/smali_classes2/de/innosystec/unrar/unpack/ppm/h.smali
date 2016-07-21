.class public Lde/innosystec/unrar/unpack/ppm/h;
.super Lde/innosystec/unrar/unpack/ppm/d;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/d;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/h;->d:I

    invoke-static {v0, v1}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->a:I

    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->a:I

    return v0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/h;->a:I

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/h;->c:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/h;->d:I

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/b/b;->c([BII)V

    :cond_0
    return-void
.end method

.method public a(Lde/innosystec/unrar/unpack/ppm/h;)V
    .locals 1

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/h;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/h;->a(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
