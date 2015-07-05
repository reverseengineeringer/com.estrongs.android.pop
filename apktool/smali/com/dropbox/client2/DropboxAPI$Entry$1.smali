.class Lcom/dropbox/client2/DropboxAPI$Entry$1;
.super Lcom/dropbox/client2/jsonextract/JsonExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonExtractor",
        "<",
        "Lcom/dropbox/client2/DropboxAPI$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .locals 2

    new-instance v1, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-virtual {p1}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectMap()Lcom/dropbox/client2/jsonextract/JsonMap;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dropbox/client2/DropboxAPI$Entry$1;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method
