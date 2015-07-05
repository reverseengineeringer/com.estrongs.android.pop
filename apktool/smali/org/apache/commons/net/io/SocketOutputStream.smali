.class public Lorg/apache/commons/net/io/SocketOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final __socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/commons/net/io/SocketOutputStream;->__socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/net/io/SocketOutputStream;->__socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/io/SocketOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
