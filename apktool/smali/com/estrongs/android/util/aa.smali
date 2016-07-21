.class public Lcom/estrongs/android/util/aa;
.super Ljava/lang/Object;


# static fields
.field private static u:Z


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/estrongs/android/util/af;

.field private m:J

.field private n:J

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Thread;

.field private q:Z

.field private r:Z

.field private s:[B

.field private t:Z

.field private v:Ljava/lang/String;

.field private w:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/util/aa;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/estrongs/android/util/aa;->f:I

    const v0, 0xea60

    iput v0, p0, Lcom/estrongs/android/util/aa;->g:I

    iput v3, p0, Lcom/estrongs/android/util/aa;->a:I

    iput v4, p0, Lcom/estrongs/android/util/aa;->b:I

    iput v3, p0, Lcom/estrongs/android/util/aa;->c:I

    const-string v0, ".tmp"

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/util/aa;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/estrongs/android/util/aa;->q:Z

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/estrongs/android/util/aa;->r:Z

    iput-boolean v3, p0, Lcom/estrongs/android/util/aa;->t:Z

    const-string v0, "GET"

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->j:Ljava/lang/String;

    sget-boolean v0, Lcom/estrongs/android/util/aa;->u:Z

    if-nez v0, :cond_0

    sput-boolean v4, Lcom/estrongs/android/util/aa;->u:Z

    new-array v0, v4, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/estrongs/android/util/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/util/ab;-><init>(Lcom/estrongs/android/util/aa;)V

    aput-object v1, v0, v3

    :try_start_0
    new-instance v1, Lcom/estrongs/android/util/ag;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/ag;-><init>(Lcom/estrongs/android/util/ab;)V

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/util/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/util/aa;->l()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/util/aa;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/util/aa;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/util/aa;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/util/aa;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/aa;->m:J

    return-wide v0
.end method

.method static synthetic f(Lcom/estrongs/android/util/aa;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    return-wide v0
.end method

.method private k()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/util/ac;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/ac;-><init>(Lcom/estrongs/android/util/aa;)V

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    const-string v1, "HttpDownloader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private l()V
    .locals 15

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/estrongs/android/util/aa;->j:Ljava/lang/String;

    const-string v6, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/estrongs/android/util/aa;->j:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    :goto_0
    const/4 v2, 0x0

    iget v6, p0, Lcom/estrongs/android/util/aa;->c:I

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    if-eqz v6, :cond_27

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    :goto_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    const/16 v2, 0x4e20

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xea60

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->v:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/estrongs/android/util/aa;->r:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/util/aa;->c:I

    if-nez v2, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J

    const-string v2, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x0

    aget-object v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_0
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_4
    :try_start_1
    iget-object v5, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v6, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    invoke-interface {v5, v6, v2}, Lcom/estrongs/android/util/af;->downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_3
    :goto_5
    return-void

    :cond_4
    :try_start_3
    const-string v2, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Pragma"

    const-string v5, "no-cache"

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->v:Ljava/lang/String;

    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->s:[B

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/util/aa;->s:[B

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    iget-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_6

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v5, 0xce

    if-eq v2, v5, :cond_6

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J

    :cond_6
    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v5, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    invoke-interface {v2, v5}, Lcom/estrongs/android/util/af;->downloadStarted(Ljava/lang/Object;)V

    :cond_7
    iget-wide v10, p0, Lcom/estrongs/android/util/aa;->n:J

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-nez v2, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_8
    if-eqz v6, :cond_26

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v5, v6, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-wide v6, p0, Lcom/estrongs/android/util/aa;->n:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v5

    :goto_6
    :try_start_5
    iget-boolean v2, p0, Lcom/estrongs/android/util/aa;->q:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v4, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "UserCannelled"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lcom/estrongs/android/util/af;->downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v10, :cond_a

    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    :cond_a
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_5

    :cond_b
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    const/4 v2, 0x0

    if-gez v4, :cond_11

    const/4 v4, 0x1

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v14

    :cond_c
    if-eqz v4, :cond_f

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v4, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "error"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lcom/estrongs/android/util/af;->downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v10, :cond_e

    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    :cond_e
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v2

    goto/16 :goto_5

    :cond_f
    move v12, v2

    :goto_7
    :try_start_9
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v9

    :try_start_a
    iget v2, p0, Lcom/estrongs/android/util/aa;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget-wide v2, p0, Lcom/estrongs/android/util/aa;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    iget-wide v2, p0, Lcom/estrongs/android/util/aa;->m:J

    long-to-int v2, v2

    new-array v11, v2, [B

    :goto_8
    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v3, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/estrongs/android/util/aa;->m:J

    iget-wide v6, p0, Lcom/estrongs/android/util/aa;->n:J

    invoke-interface/range {v2 .. v7}, Lcom/estrongs/android/util/af;->downloadProgress(Ljava/lang/Object;JJ)V

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/estrongs/android/util/aa;->t:Z

    new-instance v3, Lcom/estrongs/android/util/ae;

    invoke-direct {v3, p0}, Lcom/estrongs/android/util/ae;-><init>(Lcom/estrongs/android/util/aa;)V

    invoke-virtual {v3}, Lcom/estrongs/android/util/ae;->start()V

    if-nez v12, :cond_15

    :goto_9
    array-length v3, v11

    sub-int/2addr v3, v2

    invoke-virtual {v9, v11, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_25

    iget-wide v4, p0, Lcom/estrongs/android/util/aa;->n:J

    iget-wide v6, p0, Lcom/estrongs/android/util/aa;->m:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_25

    iget-boolean v4, p0, Lcom/estrongs/android/util/aa;->q:Z

    if-nez v4, :cond_25

    if-eqz v10, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v2, 0x0

    :goto_a
    iget-wide v4, p0, Lcom/estrongs/android/util/aa;->n:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/util/aa;->n:J
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_4

    :cond_11
    int-to-long v4, v4

    :try_start_b
    iget-wide v6, p0, Lcom/estrongs/android/util/aa;->n:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/util/aa;->m:J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move v12, v2

    goto :goto_7

    :cond_12
    const/16 v2, 0x4000

    :try_start_c
    new-array v11, v2, [B

    goto :goto_8

    :cond_13
    const/16 v2, 0x4000

    new-array v11, v2, [B

    goto :goto_8

    :cond_14
    add-int/2addr v2, v3

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    if-nez v10, :cond_16

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_16
    :goto_b
    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1a

    iget-boolean v4, p0, Lcom/estrongs/android/util/aa;->q:Z

    if-nez v4, :cond_1a

    if-eqz v10, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v10, v11, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_c
    iget-wide v4, p0, Lcom/estrongs/android/util/aa;->n:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/util/aa;->n:J
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v4, :cond_17

    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_18
    :goto_e
    throw v2

    :cond_19
    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {v2, v11, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c

    :cond_1a
    if-nez v10, :cond_25

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/estrongs/android/util/aa;->t:Z

    iget-boolean v3, p0, Lcom/estrongs/android/util/aa;->q:Z

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v3, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "UserCannelled"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/estrongs/android/util/af;->downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_1b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v10, :cond_1c

    :try_start_f
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    :cond_1c
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_5

    :cond_1d
    :try_start_10
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_20

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v3, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/estrongs/android/util/af;->downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_1e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v10, :cond_1f

    :try_start_11
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    :cond_1f
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v2

    goto/16 :goto_5

    :cond_20
    :try_start_12
    iget v3, p0, Lcom/estrongs/android/util/aa;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/estrongs/android/util/aa;->i:Ljava/lang/String;

    :cond_21
    if-eqz v10, :cond_24

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    invoke-direct {p0}, Lcom/estrongs/android/util/aa;->m()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v3, 0x0

    :goto_10
    :try_start_13
    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    iget-object v4, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/estrongs/android/util/af;->downloadCompleted(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :cond_22
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/aa;->t:Z

    if-eqz v3, :cond_23

    :try_start_14
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_23
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v2

    goto/16 :goto_5

    :catch_7
    move-exception v3

    goto/16 :goto_e

    :catchall_1
    move-exception v2

    goto/16 :goto_d

    :catchall_2
    move-exception v2

    move-object v4, v5

    goto/16 :goto_d

    :catchall_3
    move-exception v2

    move-object v4, v10

    goto/16 :goto_d

    :catchall_4
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_d

    :catch_8
    move-exception v2

    goto/16 :goto_5

    :catch_9
    move-exception v2

    move-object v4, v5

    goto/16 :goto_4

    :catch_a
    move-exception v2

    move-object v4, v10

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_4

    :cond_24
    move-object v3, v10

    goto :goto_10

    :cond_25
    move-object v2, v11

    goto/16 :goto_f

    :cond_26
    move-object v10, v4

    goto/16 :goto_6

    :cond_27
    move-object v6, v2

    goto/16 :goto_1

    :cond_28
    move-object v5, v2

    goto/16 :goto_0
.end method

.method private m()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    return-wide v0
.end method

.method public a(Lcom/estrongs/android/util/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->l:Lcom/estrongs/android/util/af;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->o:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->s:[B

    return-void
.end method

.method public a([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/aa;->w:[Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/aa;->q:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    invoke-direct {p0}, Lcom/estrongs/android/util/aa;->k()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/util/aa;->n:J

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/ad;-><init>(Lcom/estrongs/android/util/aa;)V

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/aa;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/util/aa;->m:J

    return-wide v0
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/aa;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public i()V
    .locals 1

    const-string v0, "POST"

    iput-object v0, p0, Lcom/estrongs/android/util/aa;->v:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/util/aa;->q:Z

    return v0
.end method
