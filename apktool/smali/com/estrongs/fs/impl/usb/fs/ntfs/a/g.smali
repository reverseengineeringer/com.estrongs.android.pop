.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-void
.end method

.method private f()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->d(I)I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->d(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->h(I)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->e(I)I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->i(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->e(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->f()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-array v3, v2, [C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->g()I

    move-result v0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->o(I)C

    move-result v4

    aput-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->b()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ",resident"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ",ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",vcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
