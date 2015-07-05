.class public Lde/aflx/sardine/model/Prop;
.super Ljava/lang/Object;


# instance fields
.field protected any:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Element;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private creationdate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getcontentlength:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getcontenttype:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "getcontenttype"
        inline = true
        required = false
    .end annotation
.end field

.field private getetag:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getlastmodified:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private resourcetype:Lde/aflx/sardine/model/Resourcetype;
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
.method public getAny()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    return-object v0
.end method

.method public getCreationdate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->creationdate:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcontentlength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontentlength:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcontenttype()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontenttype:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontenttype:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontenttype:Ljava/util/List;

    iget-object v1, p0, Lde/aflx/sardine/model/Prop;->getcontenttype:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGetetag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getetag:Ljava/lang/String;

    return-object v0
.end method

.method public getGetlastmodified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getlastmodified:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcetype()Lde/aflx/sardine/model/Resourcetype;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->resourcetype:Lde/aflx/sardine/model/Resourcetype;

    return-object v0
.end method
