.class public Lorg/apache/commons/net/io/CopyStreamException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = -0x241f5af7ac0a699cL


# instance fields
.field private final ioException:Ljava/io/IOException;

.field private final totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamException;->totalBytesTransferred:J

    iput-object p4, p0, Lorg/apache/commons/net/io/CopyStreamException;->ioException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamException;->ioException:Ljava/io/IOException;

    return-object v0
.end method

.method public getTotalBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamException;->totalBytesTransferred:J

    return-wide v0
.end method
