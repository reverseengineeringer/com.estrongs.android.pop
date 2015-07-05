.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;


# static fields
.field static d:[[B

.field private static final g:[B

.field private static k:[B

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# instance fields
.field a:I

.field protected b:Ljava/lang/String;

.field c:Lcom/jcraft/jsch/JSch;

.field protected e:Z

.field protected f:[B

.field private h:Lcom/jcraft/jsch/Cipher;

.field private i:Lcom/jcraft/jsch/HASH;

.field private j:[B

.field private l:[B

.field private m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->g:[B

    new-array v0, v2, [[B

    const-string v1, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->d:[[B

    const-string v0, " "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->k:[B

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PuTTY-User-Key-File-2: "

    aput-object v1, v0, v3

    const-string v1, "Encryption: "

    aput-object v1, v0, v4

    const-string v1, "Comment: "

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "Public-Lines: "

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->n:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-Lines: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->o:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-MAC: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    const-string v0, "no comment"

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch;

    iput-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->f:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->m:[B

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->c:Lcom/jcraft/jsch/JSch;

    return-void
.end method

.method private static a(B)B
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static a(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->d(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pub"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->d(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :try_start_2
    invoke-static {p0, v2, v0}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    throw v0

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method static a(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    invoke-static {v2, v8}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PuTTY-User-Key-File-2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const-string v1, "Public-Lines"

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v3

    :cond_3
    invoke-static {v2, v8}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Private-Lines"

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v1

    :cond_4
    invoke-static {v2, v8}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v4

    if-nez v4, :cond_4

    array-length v2, v1

    invoke-static {v1, v7, v2}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v9

    array-length v1, v3

    invoke-static {v3, v7, v1}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v1

    const-string v2, "ssh-rsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->d([B)V

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v1, p0, v3, v2, v6}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "Encryption"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    iput-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->e:Z

    const/4 v0, 0x2

    iput v0, v1, Lcom/jcraft/jsch/KeyPair;->a:I

    const-string v0, "Comment"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->e:Z

    if-eqz v0, :cond_8

    const-string v0, "aes256-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    const-string v0, "aes256-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    iget-object v0, v1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v9, v1, Lcom/jcraft/jsch/KeyPair;->f:[B

    :goto_3
    move-object v6, v1

    goto/16 :goto_0

    :cond_5
    const-string v2, "ssh-dss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v1

    new-array v5, v1, [B

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->d([B)V

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-object v9, v1, Lcom/jcraft/jsch/KeyPair;->f:[B

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/KeyPair;->b([B)Z

    goto :goto_3
.end method

.method public static a(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 18

    const/16 v2, 0x8

    new-array v12, v2, [B

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, ""

    const/4 v4, 0x0

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v3, 0xb

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b(I)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()V

    const-string v4, "ssh-rsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->a(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v4, "ssh-dss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->a(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: invalid key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/jcraft/jsch/KeyPair;->a(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_4
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v2, v0

    move v3, v2

    :goto_1
    const/4 v10, 0x0

    :goto_2
    if-lt v10, v3, :cond_8

    move-object v13, v4

    move-object v14, v12

    move v4, v5

    move v5, v6

    move v6, v11

    :cond_5
    :goto_3
    if-lt v10, v3, :cond_a

    :cond_6
    :goto_4
    if-eqz p1, :cond_51

    if-nez v5, :cond_20

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    instance-of v3, v2, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_43

    check-cast v2, Lcom/jcraft/jsch/JSchException;

    throw v2

    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_8
    :try_start_1
    aget-byte v2, p1, v10

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_9

    add-int/lit8 v2, v10, 0x4

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_9

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_9

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_9

    add-int/lit8 v2, v10, 0x4

    aget-byte v2, p1, v2

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_9

    move-object v13, v4

    move-object v14, v12

    move v4, v5

    move v5, v6

    move v6, v11

    goto :goto_3

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    aget-byte v2, p1, v10

    const/16 v11, 0x42

    if-ne v2, v11, :cond_11

    add-int/lit8 v2, v10, 0x3

    if-ge v2, v3, :cond_11

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0x45

    if-ne v2, v11, :cond_11

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0x47

    if-ne v2, v11, :cond_11

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v11, 0x49

    if-ne v2, v11, :cond_11

    add-int/lit8 v2, v10, 0x6

    add-int/lit8 v5, v2, 0x2

    if-lt v5, v3, :cond_b

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    aget-byte v5, p1, v2

    const/16 v10, 0x44

    if-ne v5, v10, :cond_c

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    const/16 v10, 0x53

    if-ne v5, v10, :cond_c

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    const/16 v10, 0x41

    if-ne v5, v10, :cond_c

    const/4 v5, 0x1

    :goto_5
    add-int/lit8 v10, v2, 0x3

    goto/16 :goto_3

    :cond_c
    aget-byte v5, p1, v2

    const/16 v10, 0x52

    if-ne v5, v10, :cond_d

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    const/16 v10, 0x53

    if-ne v5, v10, :cond_d

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    const/16 v10, 0x41

    if-ne v5, v10, :cond_d

    const/4 v5, 0x2

    goto :goto_5

    :cond_d
    aget-byte v4, p1, v2

    const/16 v5, 0x53

    if-ne v4, v5, :cond_e

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_e

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_e

    const/4 v5, 0x3

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v4, v2, 0x6

    if-ge v4, v3, :cond_f

    aget-byte v4, p1, v2

    const/16 v5, 0x50

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, p1, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x5

    aget-byte v4, p1, v4

    const/16 v5, 0x54

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v2, 0x6

    aget-byte v4, p1, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_f

    const/4 v5, 0x3

    const/4 v4, 0x3

    const/4 v6, 0x0

    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    :cond_f
    add-int/lit8 v4, v2, 0x8

    if-ge v4, v3, :cond_10

    aget-byte v4, p1, v2

    const/16 v5, 0x45

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, p1, v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x5

    aget-byte v4, p1, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x6

    aget-byte v4, p1, v4

    const/16 v5, 0x54

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x7

    aget-byte v4, p1, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v2, 0x8

    aget-byte v4, p1, v4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_10

    const/4 v5, 0x3

    const/4 v4, 0x3

    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_5

    :cond_10
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    aget-byte v2, p1, v10

    const/16 v11, 0x41

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x7

    if-ge v2, v3, :cond_13

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0x45

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0x53

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x4

    aget-byte v2, p1, v2

    const/16 v11, 0x32

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x5

    aget-byte v2, p1, v2

    const/16 v11, 0x35

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x6

    aget-byte v2, p1, v2

    const/16 v11, 0x36

    if-ne v2, v11, :cond_13

    add-int/lit8 v2, v10, 0x7

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_13

    add-int/lit8 v10, v10, 0x8

    const-string v2, "aes256-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "aes256-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v11

    new-array v11, v11, [B

    move-object v13, v2

    move-object v14, v11

    goto/16 :goto_3

    :cond_12
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes256-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    aget-byte v2, p1, v10

    const/16 v11, 0x41

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x7

    if-ge v2, v3, :cond_15

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0x45

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0x53

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x4

    aget-byte v2, p1, v2

    const/16 v11, 0x31

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x5

    aget-byte v2, p1, v2

    const/16 v11, 0x39

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x6

    aget-byte v2, p1, v2

    const/16 v11, 0x32

    if-ne v2, v11, :cond_15

    add-int/lit8 v2, v10, 0x7

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_15

    add-int/lit8 v10, v10, 0x8

    const-string v2, "aes192-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "aes192-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v11

    new-array v11, v11, [B

    move-object v13, v2

    move-object v14, v11

    goto/16 :goto_3

    :cond_14
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes192-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    aget-byte v2, p1, v10

    const/16 v11, 0x41

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x7

    if-ge v2, v3, :cond_17

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0x45

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0x53

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x4

    aget-byte v2, p1, v2

    const/16 v11, 0x31

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x5

    aget-byte v2, p1, v2

    const/16 v11, 0x32

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x6

    aget-byte v2, p1, v2

    const/16 v11, 0x38

    if-ne v2, v11, :cond_17

    add-int/lit8 v2, v10, 0x7

    aget-byte v2, p1, v2

    const/16 v11, 0x2d

    if-ne v2, v11, :cond_17

    add-int/lit8 v10, v10, 0x8

    const-string v2, "aes128-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "aes128-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v11

    new-array v11, v11, [B

    move-object v13, v2

    move-object v14, v11

    goto/16 :goto_3

    :cond_16
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes128-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    aget-byte v2, p1, v10

    const/16 v11, 0x43

    if-ne v2, v11, :cond_18

    add-int/lit8 v2, v10, 0x3

    if-ge v2, v3, :cond_18

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0x42

    if-ne v2, v11, :cond_18

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0x43

    if-ne v2, v11, :cond_18

    add-int/lit8 v2, v10, 0x3

    aget-byte v2, p1, v2

    const/16 v11, 0x2c

    if-ne v2, v11, :cond_18

    add-int/lit8 v10, v10, 0x4

    const/4 v2, 0x0

    :goto_6
    array-length v11, v14

    if-ge v2, v11, :cond_5

    add-int/lit8 v11, v10, 0x1

    aget-byte v10, p1, v10

    invoke-static {v10}, Lcom/jcraft/jsch/KeyPair;->a(B)B

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit16 v12, v10, 0xf0

    add-int/lit8 v10, v11, 0x1

    aget-byte v11, p1, v11

    invoke-static {v11}, Lcom/jcraft/jsch/KeyPair;->a(B)B

    move-result v11

    and-int/lit8 v11, v11, 0xf

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    aget-byte v2, p1, v10

    const/16 v11, 0xd

    if-ne v2, v11, :cond_19

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v2, v11, :cond_19

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0xa

    if-ne v2, v11, :cond_19

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_19
    aget-byte v2, p1, v10

    const/16 v11, 0xa

    if-ne v2, v11, :cond_1f

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v2, v11, :cond_1f

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0xa

    if-ne v2, v11, :cond_1a

    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_4

    :cond_1a
    add-int/lit8 v2, v10, 0x1

    aget-byte v2, p1, v2

    const/16 v11, 0xd

    if-ne v2, v11, :cond_1b

    add-int/lit8 v2, v10, 0x2

    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v2, v11, :cond_1b

    add-int/lit8 v2, v10, 0x2

    aget-byte v2, p1, v2

    const/16 v11, 0xa

    if-ne v2, v11, :cond_1b

    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x0

    add-int/lit8 v11, v10, 0x1

    :goto_7
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v11, v12, :cond_1d

    :cond_1c
    :goto_8
    if-nez v2, :cond_1f

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x3

    if-eq v4, v2, :cond_6

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_1d
    aget-byte v12, p1, v11

    const/16 v15, 0xa

    if-eq v12, v15, :cond_1c

    aget-byte v12, p1, v11

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_1e

    const/4 v2, 0x1

    goto :goto_8

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_20
    move v2, v10

    :goto_9
    if-lt v2, v3, :cond_23

    :cond_21
    sub-int/2addr v3, v2

    if-eqz v3, :cond_22

    sub-int v3, v2, v10

    if-nez v3, :cond_24

    :cond_22
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    aget-byte v11, p1, v2

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_21

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    sub-int/2addr v2, v10

    new-array v12, v2, [B

    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, p1

    invoke-static {v0, v10, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v15, 0x0

    const/4 v3, 0x0

    array-length v2, v12

    move v11, v3

    :goto_a
    if-lt v11, v2, :cond_26

    :cond_25
    sub-int v2, v11, v15

    if-lez v2, :cond_50

    sub-int v2, v11, v15

    invoke-static {v12, v15, v2}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v2

    :goto_b
    invoke-static {v12}, Lcom/jcraft/jsch/Util;->d([B)V

    :goto_c
    if-eqz v2, :cond_4f

    array-length v3, v2

    const/4 v9, 0x4

    if-le v3, v9, :cond_4f

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v9, 0x3f

    if-ne v3, v9, :cond_4f

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v9, 0x6f

    if-ne v3, v9, :cond_4f

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/4 v9, -0x7

    if-ne v3, v9, :cond_4f

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    const/16 v9, -0x15

    if-ne v3, v9, :cond_4f

    new-instance v9, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v9, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    const-string v10, "3des-cbc"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->d()I

    array-length v2, v2

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->b()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {v9, v2}, Lcom/jcraft/jsch/Buffer;->d([B)V

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown privatekey format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    aget-byte v3, v12, v11

    const/16 v10, 0xa

    if-ne v3, v10, :cond_2a

    add-int/lit8 v3, v11, -0x1

    aget-byte v3, v12, v3

    const/16 v10, 0xd

    if-ne v3, v10, :cond_28

    const/4 v3, 0x1

    move v10, v3

    :goto_d
    add-int/lit8 v16, v11, 0x1

    if-eqz v10, :cond_29

    const/4 v3, 0x1

    :goto_e
    sub-int v3, v11, v3

    add-int/lit8 v17, v11, 0x1

    sub-int v17, v2, v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v0, v12, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v10, :cond_27

    add-int/lit8 v2, v2, -0x1

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    :cond_28
    const/4 v3, 0x0

    move v10, v3

    goto :goto_d

    :cond_29
    const/4 v3, 0x0

    goto :goto_e

    :cond_2a
    aget-byte v3, v12, v11

    const/16 v10, 0x2d

    if-eq v3, v10, :cond_25

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_a

    :cond_2b
    const-string v10, "none"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->d()I

    const/4 v3, 0x0

    array-length v2, v2

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->b()I

    move-result v6

    sub-int/2addr v2, v6

    new-array v2, v2, [B

    invoke-virtual {v9, v2}, Lcom/jcraft/jsch/Buffer;->d([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v2

    move v12, v3

    :goto_f
    if-eqz p2, :cond_4d

    :try_start_2
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_3b

    const/4 v2, 0x0

    aget-byte v2, p2, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x1

    aget-byte v2, p2, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x3

    aget-byte v2, p2, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x1

    const/4 v6, 0x0

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    array-length v3, v0

    if-le v3, v6, :cond_2d

    aget-byte v3, p2, v6

    const/16 v10, 0xa

    if-ne v3, v10, :cond_2c

    :cond_2d
    move-object/from16 v0, p2

    array-length v3, v0

    if-gt v3, v6, :cond_2e

    const/4 v2, 0x0

    :cond_2e
    :goto_10
    if-nez v2, :cond_33

    :goto_11
    move-object/from16 v0, p2

    array-length v3, v0

    if-gt v3, v6, :cond_2f

    const/4 v2, 0x0

    :cond_2f
    move v3, v6

    :goto_12
    if-eqz v2, :cond_30

    if-lt v3, v9, :cond_38

    :cond_30
    if-eqz v2, :cond_4d

    sub-int v2, v3, v6

    move-object/from16 v0, p2

    invoke-static {v0, v6, v2}, Lcom/jcraft/jsch/Util;->a([BII)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-eqz p1, :cond_31

    const/4 v3, 0x3

    if-ne v5, v3, :cond_4e

    :cond_31
    const/16 v3, 0x8

    :try_start_3
    aget-byte v3, v2, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v6, 0x64

    if-ne v3, v6, :cond_3a

    const/4 v5, 0x1

    move-object v3, v8

    move-object v7, v2

    :goto_13
    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_45

    new-instance v2, Lcom/jcraft/jsch/KeyPairDSA;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    :cond_32
    :goto_14
    if-eqz v2, :cond_0

    iput-boolean v12, v2, Lcom/jcraft/jsch/KeyPair;->e:Z

    iput-object v7, v2, Lcom/jcraft/jsch/KeyPair;->m:[B

    iput v4, v2, Lcom/jcraft/jsch/KeyPair;->a:I

    iput-object v3, v2, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    iput-object v13, v2, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    if-eqz v12, :cond_47

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jcraft/jsch/KeyPair;->e:Z

    iput-object v14, v2, Lcom/jcraft/jsch/KeyPair;->l:[B

    iput-object v11, v2, Lcom/jcraft/jsch/KeyPair;->f:[B

    goto/16 :goto_0

    :cond_33
    :try_start_4
    aget-byte v3, p2, v6

    const/16 v10, 0xa

    if-ne v3, v10, :cond_37

    const/4 v3, 0x0

    add-int/lit8 v10, v6, 0x1

    :goto_15
    move-object/from16 v0, p2

    array-length v15, v0

    if-lt v10, v15, :cond_35

    :cond_34
    :goto_16
    if-nez v3, :cond_37

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_35
    aget-byte v15, p2, v10

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_34

    aget-byte v15, p2, v10

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v15, v0, :cond_36

    const/4 v3, 0x1

    goto :goto_16

    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_38
    aget-byte v10, p2, v3

    const/16 v15, 0xa

    if-ne v10, v15, :cond_39

    add-int/lit8 v10, v3, 0x1

    sub-int v15, v9, v3

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    :cond_39
    aget-byte v10, p2, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v15, 0x2d

    if-eq v10, v15, :cond_30

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_3a
    const/16 v3, 0x8

    :try_start_5
    aget-byte v3, v2, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v6, 0x72

    if-ne v3, v6, :cond_4e

    const/4 v5, 0x2

    move-object v3, v8

    move-object v7, v2

    goto :goto_13

    :cond_3b
    const/4 v2, 0x0

    :try_start_6
    aget-byte v2, p2, v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_4d

    const/4 v2, 0x1

    aget-byte v2, p2, v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_4d

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_4d

    const/4 v2, 0x3

    aget-byte v2, p2, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_4d

    if-nez p1, :cond_4c

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x7

    if-le v2, v3, :cond_4c

    const/4 v2, 0x4

    aget-byte v2, p2, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3f

    const/4 v2, 0x1

    :goto_17
    const/4 v3, 0x0

    :goto_18
    if-lt v3, v9, :cond_40

    :cond_3c
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v9, :cond_4b

    move v3, v5

    :goto_19
    if-lt v3, v9, :cond_41

    :cond_3d
    sub-int v6, v3, v5

    :try_start_7
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/jcraft/jsch/Util;->a([BII)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v7

    move v5, v3

    move-object v3, v7

    :goto_1a
    add-int/lit8 v7, v5, 0x1

    if-ge v5, v9, :cond_49

    move v5, v7

    :goto_1b
    if-lt v5, v9, :cond_42

    :cond_3e
    if-lez v5, :cond_4a

    add-int/lit8 v6, v5, -0x1

    :try_start_8
    aget-byte v6, p2, v6

    const/16 v9, 0xd

    if-ne v6, v9, :cond_4a

    add-int/lit8 v5, v5, -0x1

    move v6, v5

    :goto_1c
    if-ge v7, v6, :cond_49

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v6, v7

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v7, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v7, v3

    move-object v3, v5

    move v5, v2

    goto/16 :goto_13

    :cond_3f
    const/4 v2, 0x4

    :try_start_9
    aget-byte v2, p2, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const/16 v3, 0x72

    if-ne v2, v3, :cond_4c

    const/4 v2, 0x2

    goto :goto_17

    :cond_40
    :try_start_a
    aget-byte v5, p2, v3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3c

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_41
    aget-byte v6, p2, v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/16 v10, 0x20

    if-eq v6, v10, :cond_3d

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_42
    :try_start_b
    aget-byte v6, p2, v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    const/16 v10, 0xa

    if-eq v6, v10, :cond_3e

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :catch_1
    move-exception v2

    move-object v2, v7

    :goto_1d
    move-object v3, v8

    move-object v7, v2

    goto/16 :goto_13

    :cond_43
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_44

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_44
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_45
    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    new-instance v2, Lcom/jcraft/jsch/KeyPairRSA;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto/16 :goto_14

    :cond_46
    const/4 v5, 0x3

    if-ne v4, v5, :cond_32

    new-instance v2, Lcom/jcraft/jsch/KeyPairPKCS8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/KeyPairPKCS8;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto/16 :goto_14

    :cond_47
    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/KeyPair;->b([B)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jcraft/jsch/KeyPair;->e:Z

    goto/16 :goto_0

    :cond_48
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v3

    goto :goto_1d

    :catch_3
    move-exception v3

    move v5, v2

    move-object v2, v7

    goto :goto_1d

    :catch_4
    move-exception v5

    move v5, v2

    move-object v2, v3

    goto :goto_1d

    :cond_49
    move v5, v2

    move-object v7, v3

    move-object v3, v8

    goto/16 :goto_13

    :cond_4a
    move v6, v5

    goto/16 :goto_1c

    :cond_4b
    move-object v3, v7

    goto/16 :goto_1a

    :cond_4c
    move v2, v5

    goto/16 :goto_17

    :cond_4d
    move-object v3, v8

    goto/16 :goto_13

    :cond_4e
    move-object v3, v8

    move-object v7, v2

    goto/16 :goto_13

    :cond_4f
    move-object v11, v2

    move v12, v6

    goto/16 :goto_f

    :cond_50
    move-object v2, v9

    goto/16 :goto_b

    :cond_51
    move-object v2, v9

    goto/16 :goto_c
.end method

.method private static a(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0xd

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    move v0, v1

    :goto_0
    array-length v4, v5

    if-lt v0, v4, :cond_0

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_4

    move v0, v2

    :goto_2
    return v0

    :cond_0
    aget-byte v4, v5, v0

    if-ne v4, v7, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    aget-byte v4, v5, v0

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v0, v0, 0x1

    array-length v1, v5

    if-ge v0, v1, :cond_2

    aget-byte v1, v5, v0

    const/16 v6, 0x20

    if-ne v1, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_3
    array-length v6, v5

    if-lt v0, v6, :cond_6

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {p1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_5
    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    aget-byte v6, v5, v0

    if-ne v6, v7, :cond_8

    new-instance v3, Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-direct {v3, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v0, v0, 0x1

    array-length v1, v5

    if-ge v0, v1, :cond_7

    aget-byte v1, v5, v0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    move v1, v0

    move-object v0, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private static a(Lcom/jcraft/jsch/Buffer;I)[B
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    add-int/lit8 v5, p1, -0x1

    if-gtz p1, :cond_6

    if-eqz v2, :cond_0

    iput v3, p0, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v6, v1

    const/16 v7, 0xd

    if-ne v1, v7, :cond_5

    if-nez v2, :cond_4

    sub-int v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    aget-byte v2, v6, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    move-object v2, v1

    move v3, v0

    move p1, v5

    move v1, v0

    goto :goto_0

    :cond_4
    array-length v1, v2

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    array-length v7, v2

    invoke-static {v2, v4, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v2

    sub-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :goto_2
    array-length v7, v2

    if-ge v3, v7, :cond_2

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :cond_6
    array-length v0, v6

    if-gt v0, v1, :cond_1

    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private a([B[B[B)[B
    .locals 6

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->a([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, p3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    array-length v0, p1

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private f()Lcom/jcraft/jsch/HASH;
    .locals 1

    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()Lcom/jcraft/jsch/Cipher;
    .locals 1

    :try_start_0
    const-string v0, "3des-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-gtz p1, :cond_0

    goto :goto_0
.end method

.method a([BII)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x30

    aput-byte v1, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/jcraft/jsch/KeyPair;->b([BII)I

    move-result v0

    return v0
.end method

.method a([BI[B)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x2

    aput-byte v1, p1, p2

    array-length v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/KeyPair;->b([BII)I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/jcraft/jsch/KeyPair;)V
    .locals 1

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->m:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->m:[B

    iget v0, p1, Lcom/jcraft/jsch/KeyPair;->a:I

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    return-void
.end method

.method public abstract a()[B
.end method

.method public abstract a([B)[B
.end method

.method declared-synchronized a([B[B)[B
    .locals 10

    const/16 v3, 0x8

    const/4 v8, 0x2

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->g()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->f()Lcom/jcraft/jsch/HASH;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->h:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    new-array v1, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->b()I

    move-result v4

    array-length v0, v1

    div-int/2addr v0, v4

    mul-int v5, v0, v4

    array-length v0, v1

    rem-int/2addr v0, v4

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    add-int/2addr v0, v5

    new-array v5, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget v6, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    if-nez v6, :cond_6

    :goto_1
    add-int v6, v2, v4

    array-length v7, v5

    if-le v6, v7, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    const/4 v7, 0x0

    array-length v8, v0

    invoke-interface {v6, v0, v7, v8}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-interface {v0, p1, v6, v7}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    const/4 v7, 0x0

    array-length v0, p2

    if-le v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-interface {v6, p2, v7, v0}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v0

    add-int/2addr v2, v6

    goto :goto_1

    :cond_5
    array-length v0, p2

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    :goto_4
    add-int v3, v2, v4

    array-length v6, v5

    if-le v3, v6, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-interface {v3, v0, v6, v7}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_8
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    const/4 v3, 0x0

    array-length v6, p1

    invoke-interface {v0, p1, v3, v6}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->i:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    add-int/2addr v2, v3

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->a:I

    if-ne v0, v8, :cond_b

    const-string v0, "sha-1"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, 0x28

    new-array v1, v4, [B

    :goto_5
    if-lt v2, v8, :cond_a

    move-object v0, v1

    goto :goto_2

    :cond_a
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->a()V

    const/4 v4, 0x3

    int-to-byte v5, v2

    aput-byte v5, v3, v4

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface {v0, v3, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    const/4 v4, 0x0

    array-length v5, p1

    invoke-interface {v0, p1, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    const/4 v5, 0x0

    mul-int/lit8 v6, v2, 0x14

    const/16 v7, 0x14

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :try_start_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method b([BII)I
    .locals 5

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/KeyPair;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p3

    aput-byte v1, p1, p2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, p2, 0x1

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int v0, v2, v1

    :goto_0
    if-lez v1, :cond_0

    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    ushr-int/lit8 p3, p3, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method abstract b([B)Z
.end method

.method abstract b()[B
.end method

.method public c([B)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p1

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->f:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->l:[B

    invoke-direct {p0, v3, v2, v4}, Lcom/jcraft/jsch/KeyPair;->a([B[B[B)[B

    move-result-object v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyPair;->b([B)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    :cond_3
    iget-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->m:[B

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->e:Z

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->j:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->e()V

    return-void
.end method
