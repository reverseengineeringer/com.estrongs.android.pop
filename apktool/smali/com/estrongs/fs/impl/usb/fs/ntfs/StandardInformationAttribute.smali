.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->m(I)I

    move-result v0

    return v0
.end method
