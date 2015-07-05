.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->b(Ljava/lang/StringBuilder;I)V

    invoke-static {v0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/StringBuilder;I)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->b(Ljava/lang/StringBuilder;I)V

    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
