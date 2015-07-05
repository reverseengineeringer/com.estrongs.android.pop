.class public final Lcom/dropbox/client2/session/Session$ProxyInfo;
.super Ljava/lang/Object;


# instance fields
.field public final host:Ljava/lang/String;

.field public final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/session/Session$ProxyInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    iput p2, p0, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    return-void
.end method
