.class public abstract Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->h(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->a:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->b:I

    return-void
.end method

.method public static a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, p1, 0x0

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->h(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/b;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x90 -> :sswitch_3
        0xa0 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->d(I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e(I)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->f()I

    move-result v1

    if-lez v1, :cond_1

    new-array v2, v1, [C

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->g()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->o(I)C

    move-result v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-object v0
.end method

.method public k()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
