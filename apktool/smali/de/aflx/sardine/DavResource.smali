.class public Lde/aflx/sardine/DavResource;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CONTENT_LENGTH:J = -0x1L

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octetstream"

.field public static final HTTPD_UNIX_DIRECTORY_CONTENT_TYPE:Ljava/lang/String; = "httpd/unix-directory"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static log:Lde/aflx/sardine/util/Logger;


# instance fields
.field private final contentLength:Ljava/lang/Long;

.field private final contentType:Ljava/lang/String;

.field private final creation:Ljava/util/Date;

.field private final customProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final etag:Ljava/lang/String;

.field private final href:Ljava/net/URI;

.field private final modified:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lde/aflx/sardine/util/Logger;

    invoke-direct {v0}, Lde/aflx/sardine/util/Logger;-><init>()V

    sput-object v0, Lde/aflx/sardine/DavResource;->log:Lde/aflx/sardine/util/Logger;

    return-void
.end method

.method public constructor <init>(Lde/aflx/sardine/model/Response;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    :goto_1
    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getCreationDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/aflx/sardine/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getModifiedDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/aflx/sardine/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getContentLength(Lde/aflx/sardine/model/Response;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getContentType(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getEtag(Lde/aflx/sardine/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lde/aflx/sardine/DavResource;->getCustomProps(Lde/aflx/sardine/model/Response;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    iput-object p2, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    iput-object p3, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    iput-object p4, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    iput-object p5, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    iput-object p6, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    iput-object p7, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-void
.end method

.method private getContentLength(Lde/aflx/sardine/model/Response;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v2}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v2

    invoke-virtual {v2}, Lde/aflx/sardine/model/Prop;->getGetcontentlength()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getContentType(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetcontenttype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "httpd/unix-directory"

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getResourcetype()Lde/aflx/sardine/model/Resourcetype;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lde/aflx/sardine/model/Resourcetype;->getCollection()Lde/aflx/sardine/model/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "httpd/unix-directory"

    goto :goto_0

    :cond_5
    const-string v0, "application/octetstream"

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lde/aflx/sardine/model/Prop;->getResourcetype()Lde/aflx/sardine/model/Resourcetype;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lde/aflx/sardine/model/Resourcetype;->getCollection()Lde/aflx/sardine/model/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "httpd/unix-directory"

    goto :goto_0
.end method

.method private getCreationDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getCreationdate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCustomProps(Lde/aflx/sardine/model/Response;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/aflx/sardine/model/Response;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getEtag(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetetag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getModifiedDate(Lde/aflx/sardine/model/Response;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lde/aflx/sardine/model/Response;->getPropstat()Lde/aflx/sardine/model/Propstat;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lde/aflx/sardine/model/Propstat;->getProp()Lde/aflx/sardine/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Prop;->getGetlastmodified()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreation()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->creation:Ljava/util/Date;

    return-object v0
.end method

.method public getCustomProps()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getCustomPropsNS()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/util/QName;

    invoke-virtual {v0}, Lde/aflx/sardine/util/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCustomPropsNS()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->customProps:Ljava/util/Map;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lde/aflx/sardine/DavResource;->log:Lde/aflx/sardine/util/Logger;

    const-string v2, "Failed to parse name from path %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/aflx/sardine/util/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 4

    const-string v0, "httpd/unix-directory"

    iget-object v1, p0, Lde/aflx/sardine/DavResource;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/aflx/sardine/DavResource;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
