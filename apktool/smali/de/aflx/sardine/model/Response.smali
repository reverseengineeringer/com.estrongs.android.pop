.class public Lde/aflx/sardine/model/Response;
.super Ljava/lang/Object;


# instance fields
.field protected error:Lde/aflx/sardine/model/Error;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected href:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field protected propstat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/model/Propstat;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field

.field protected responsedescription:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected status:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lde/aflx/sardine/model/Error;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->error:Lde/aflx/sardine/model/Error;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->href:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Response;->href:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lde/aflx/sardine/model/Response;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getPropstat()Lde/aflx/sardine/model/Propstat;
    .locals 2

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->propstat:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Response;->propstat:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lde/aflx/sardine/model/Response;->propstat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->propstat:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/model/Propstat;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponsedescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->responsedescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Response;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Lde/aflx/sardine/model/Error;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Response;->error:Lde/aflx/sardine/model/Error;

    return-void
.end method

.method public setResponsedescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Response;->responsedescription:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Response;->status:Ljava/lang/String;

    return-void
.end method
