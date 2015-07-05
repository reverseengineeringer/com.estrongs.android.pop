.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method


# virtual methods
.method public l()I
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->e(I)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->g(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[attribute (res) type=x%x name\'%s\' size=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
