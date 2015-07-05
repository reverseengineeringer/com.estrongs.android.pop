.class public Lorg/apache/commons/net/io/SocketInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final __socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/commons/net/io/SocketInputStream;->__socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/net/io/SocketInputStream;->__socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method
