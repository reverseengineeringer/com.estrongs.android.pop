.class public Lcom/dropbox/client2/DropboxAPI$DropboxLink;
.super Ljava/lang/Object;


# instance fields
.field public final expires:Ljava/util/Date;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://"

    const-string v1, "http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":443/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/dropbox/client2/DropboxAPI$DropboxLink;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "expires"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/dropbox/client2/RESTUtility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    :goto_0
    if-nez p2, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":443/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->url:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLcom/dropbox/client2/DropboxAPI$DropboxLink;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Z)V

    return-void
.end method
