.class public Lcom/estrongs/android/g/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:Ljava/util/Properties;

.field final synthetic e:Lcom/estrongs/android/g/f;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/g/j;->e:Lcom/estrongs/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/g/j;->d:Ljava/util/Properties;

    iput-object p2, p0, Lcom/estrongs/android/g/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/g/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/g/j;->c:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/g/j;->e:Lcom/estrongs/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/g/j;->d:Ljava/util/Properties;

    iput-object p2, p0, Lcom/estrongs/android/g/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/g/j;->b:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/android/g/j;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/g/j;->d:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
