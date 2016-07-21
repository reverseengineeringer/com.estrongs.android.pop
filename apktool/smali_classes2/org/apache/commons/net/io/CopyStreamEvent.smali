.class public Lorg/apache/commons/net/io/CopyStreamEvent;
.super Ljava/util/EventObject;


# static fields
.field public static final UNKNOWN_STREAM_SIZE:J = -0x1L

.field private static final serialVersionUID:J = -0xd641c927d2d4a5bL


# instance fields
.field private final bytesTransferred:I

.field private final streamSize:J

.field private final totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JIJ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p4, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    iput-wide p5, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    return-void
.end method


# virtual methods
.method public getBytesTransferred()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    return v0
.end method

.method public getStreamSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    return-wide v0
.end method

.method public getTotalBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
