.class public Lcom/estrongs/io/archive/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".zip"

    sput-object v0, Lcom/estrongs/io/archive/g;->a:Ljava/lang/String;

    const-string v0, ".gz"

    sput-object v0, Lcom/estrongs/io/archive/g;->b:Ljava/lang/String;

    const-string v0, ".gzip"

    sput-object v0, Lcom/estrongs/io/archive/g;->c:Ljava/lang/String;

    const-string v0, ".7z"

    sput-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    const-string v0, ".esc"

    sput-object v0, Lcom/estrongs/io/archive/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/io/archive/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/io/archive/g;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/io/archive/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/io/archive/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/io/archive/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/io/archive/g;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/io/archive/g;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method
