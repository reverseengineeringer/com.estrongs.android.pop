.class public Lorg/apache/commons/net/ProtocolCommandSupport;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6f449111453ca76aL


# instance fields
.field private final __listeners:Lorg/apache/commons/net/util/ListenerList;

.field private final __source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lorg/apache/commons/net/ProtocolCommandListener;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    goto :goto_0
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .locals 3

    new-instance v1, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__source:Ljava/lang/Object;

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lorg/apache/commons/net/ProtocolCommandListener;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    goto :goto_0
.end method

.method public getListenerCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->getListenerCount()I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->__listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    return-void
.end method
