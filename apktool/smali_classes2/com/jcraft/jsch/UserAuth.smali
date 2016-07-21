.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/jcraft/jsch/UserInfo;

.field protected b:Lcom/jcraft/jsch/Packet;

.field protected c:Lcom/jcraft/jsch/Buffer;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->c()Lcom/jcraft/jsch/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->b()Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
