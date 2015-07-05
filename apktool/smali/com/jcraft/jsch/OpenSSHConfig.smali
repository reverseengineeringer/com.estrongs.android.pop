.class public Lcom/jcraft/jsch/OpenSSHConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository;


# static fields
.field private static final e:Ljava/util/Hashtable;


# instance fields
.field private final c:Ljava/util/Hashtable;

.field private final d:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "kex"

    const-string v2, "KexAlgorithms"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "server_host_key"

    const-string v2, "HostKeyAlgorithms"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "cipher.c2s"

    const-string v2, "Ciphers"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "cipher.s2c"

    const-string v2, "Ciphers"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "mac.c2s"

    const-string v2, "Macs"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "mac.s2c"

    const-string v2, "Macs"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "compression.s2c"

    const-string v2, "Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "compression.c2s"

    const-string v2, "Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "compression_level"

    const-string v2, "CompressionLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    const-string v1, "MaxAuthTries"

    const-string v2, "NumberOfPasswordPrompts"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/jcraft/jsch/OpenSSHConfig;->e:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic b(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig;->d:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;-><init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V

    return-object v0
.end method
