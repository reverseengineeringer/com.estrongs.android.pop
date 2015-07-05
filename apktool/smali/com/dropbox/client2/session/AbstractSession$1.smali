.class Lcom/dropbox/client2/session/AbstractSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field final synthetic this$0:Lcom/dropbox/client2/session/AbstractSession;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/session/AbstractSession;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$1;->this$0:Lcom/dropbox/client2/session/AbstractSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
