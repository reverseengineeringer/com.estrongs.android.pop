.class public Lcom/estrongs/fs/impl/usb/driver/scsi/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/driver/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/estrongs/fs/impl/usb/a;

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:I

.field private g:I

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->d:Ljava/nio/ByteBuffer;

    const/16 v0, 0xd

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->e:[B

    return-void
.end method

.method private a(Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;Ljava/nio/ByteBuffer;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    array-length v4, v1

    invoke-interface {v3, v1, v4}, Lcom/estrongs/fs/impl/usb/a;->a([BI)I

    move-result v3

    array-length v4, v1

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing all bytes on command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outArray "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " written "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->b()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->c()Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    move-result-object v1

    sget-object v5, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;->IN:Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper$Direction;

    if-ne v1, v5, :cond_3

    move v1, v0

    :cond_1
    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v5, v4, v6, v7}, Lcom/estrongs/fs/impl/usb/a;->b([BII)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    add-int/2addr v1, v5

    if-lt v1, v3, :cond_1

    if-eq v1, v3, :cond_6

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected command size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") on response to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v0

    :cond_4
    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v5, v4, v6, v7}, Lcom/estrongs/fs/impl/usb/a;->a([BII)I

    move-result v5

    if-ne v5, v8, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/2addr v1, v5

    if-lt v1, v3, :cond_4

    if-eq v1, v3, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write all bytes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->e:[B

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->e:[B

    array-length v4, v4

    invoke-interface {v1, v3, v4}, Lcom/estrongs/fs/impl/usb/a;->b([BI)I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_7

    sget-object v3, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected command size while expecting csw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->e:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/driver/scsi/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->b()B

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsuccessful Csw status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->b()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;->a()I

    move-result v4

    if-eq v3, v4, :cond_9

    sget-object v3, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    const-string v4, "wrong csw tag!"

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/a;->b()B

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/usb/driver/scsi/f;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/f;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a(Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    const-string v2, "unit not ready!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/estrongs/fs/impl/usb/driver/scsi/d;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/usb/driver/scsi/d;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a(Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;Ljava/nio/ByteBuffer;)Z

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/driver/scsi/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->b()I

    move-result v1

    iput v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/e;->a()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->g:I

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last block address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(JLjava/nio/ByteBuffer;)V
    .locals 9

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->h:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v2, "Address overflow"

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_ADDRESS_OVERFLOW:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v4, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    const-string v4, "we have to round up size to next block sector"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    rem-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    new-instance v4, Lcom/estrongs/fs/impl/usb/driver/scsi/c;

    long-to-int v5, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget v7, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-direct {v4, v5, v6, v7}, Lcom/estrongs/fs/impl/usb/driver/scsi/c;-><init>(III)V

    iget-boolean v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a(Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;Ljava/nio/ByteBuffer;)Z

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_6
    move-object v0, p3

    goto :goto_0
.end method

.method public a(Lcom/estrongs/fs/impl/usb/a;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->c:Lcom/estrongs/fs/impl/usb/a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    return v0
.end method

.method public declared-synchronized b(JLjava/nio/ByteBuffer;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v2, "Address overflow"

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_ADDRESS_OVERFLOW:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v4, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    const-string v4, "we have to round up size to next block sector"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    rem-int/2addr v4, v5

    sub-int/2addr v0, v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v4, Lcom/estrongs/fs/impl/usb/driver/scsi/g;

    long-to-int v5, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget v7, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->f:I

    invoke-direct {v4, v5, v6, v7}, Lcom/estrongs/fs/impl/usb/driver/scsi/g;-><init>(III)V

    iget-boolean v5, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a(Lcom/estrongs/fs/impl/usb/driver/scsi/CommandBlockWrapper;Ljava/nio/ByteBuffer;)Z

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->b:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/fs/impl/usb/driver/scsi/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    move-object v0, p3

    goto :goto_0
.end method
