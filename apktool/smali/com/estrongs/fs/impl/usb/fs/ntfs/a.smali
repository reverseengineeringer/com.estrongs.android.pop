.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/a;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>([BI)V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->b:Z

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->c:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->e(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d:I

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->e:I

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->f:J

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->g:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->e(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->h:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->j(I)I

    move-result v0

    const/16 v1, 0x44

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->j(I)I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->g(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->i:J

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->e:I

    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->l:I

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->j:I

    invoke-direct {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->k:I

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileRecordSize  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexRecordSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalSectors    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private final a(I)I
    .locals 2

    if-lez p1, :cond_0

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->l:I

    mul-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    neg-int v1, p1

    shl-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->f:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->l:I

    return v0
.end method
