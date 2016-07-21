.class Lcom/jcraft/jsch/JSchPartialAuthException;
.super Lcom/jcraft/jsch/JSchException;


# instance fields
.field methods:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->methods:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethods()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->methods:Ljava/lang/String;

    return-object v0
.end method
