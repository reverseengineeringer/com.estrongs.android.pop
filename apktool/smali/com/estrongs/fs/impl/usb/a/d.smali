.class public Lcom/estrongs/fs/impl/usb/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:B

.field b:I

.field c:I


# direct methods
.method public constructor <init>(BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/estrongs/fs/impl/usb/a/d;->a:B

    iput p2, p0, Lcom/estrongs/fs/impl/usb/a/d;->b:I

    iput p3, p0, Lcom/estrongs/fs/impl/usb/a/d;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, Lcom/estrongs/fs/impl/usb/a/d;->a:B

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/a/d;->b:I

    return v0
.end method
