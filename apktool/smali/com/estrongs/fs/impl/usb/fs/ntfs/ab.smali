.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:B

.field private final d:Lcom/estrongs/fs/impl/usb/driver/a;

.field private e:I

.field private final f:Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

.field private g:Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

.field private h:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c:B

    if-nez p3, :cond_0

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a([B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v1, "unsupported partition type"

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->d()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    if-gtz v0, :cond_2

    const/16 v0, 0x1000

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    :cond_2
    return-void
.end method

.method public static a([B)Z
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "NTFS    "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->f:Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    return-object v0
.end method

.method public a(J[BII)V
    .locals 5

    sget-boolean v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readClusters("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, p1

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    mul-int/2addr v0, p5

    invoke-static {p3, p4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->e:I

    return v0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v6, 0x1

    :goto_0
    mul-int v1, v6, v2

    new-array v4, v1, [B

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->b()J

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a(J[BII)V

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    invoke-direct {v0, p0, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;[BI)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    return-object v0

    :cond_1
    div-int v6, v1, v2

    goto :goto_0
.end method

.method public d()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->h:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->h:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    sget-boolean v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootDirectory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->h:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->h:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-object v0
.end method
