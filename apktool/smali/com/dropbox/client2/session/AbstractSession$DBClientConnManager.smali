.class Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->ensureRunning(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    return-object v0
.end method
