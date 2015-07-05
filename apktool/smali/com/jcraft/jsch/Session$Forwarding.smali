.class Lcom/jcraft/jsch/Session$Forwarding;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field final synthetic e:Lcom/jcraft/jsch/Session;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/jcraft/jsch/Session$Forwarding;->e:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    iput-object v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    iput v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$Forwarding;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;)V

    return-void
.end method
