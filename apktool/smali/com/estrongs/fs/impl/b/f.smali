.class Lcom/estrongs/fs/impl/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/b/e;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/f;->a:Lcom/estrongs/fs/impl/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
