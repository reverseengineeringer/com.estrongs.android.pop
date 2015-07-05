.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private c:I

.field private d:[B


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->c:I

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/a;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->d:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->d:[B

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;->d:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
