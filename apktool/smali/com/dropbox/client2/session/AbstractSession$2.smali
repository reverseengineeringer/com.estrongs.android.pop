.class Lcom/dropbox/client2/session/AbstractSession$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field final synthetic this$0:Lcom/dropbox/client2/session/AbstractSession;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/session/AbstractSession;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$2;->this$0:Lcom/dropbox/client2/session/AbstractSession;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 2

    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;-><init>(Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;)V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 2

    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;-><init>(Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;)V

    return-object v0
.end method
