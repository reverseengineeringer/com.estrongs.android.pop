.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private a:Lcom/jcraft/jsch/JSch;

.field private b:Lcom/jcraft/jsch/KeyPair;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->a:Lcom/jcraft/jsch/JSch;

    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 2

    invoke-static {p2, p0, p1}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {v1, p2, p0, v0}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v1
.end method

.method static a(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 2

    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {v1, p3, p0, v0}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v1
.end method


# virtual methods
.method public a([B)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->c([B)Z

    move-result v0

    return v0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->c()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public b([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->e()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method public f()Lcom/jcraft/jsch/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method
