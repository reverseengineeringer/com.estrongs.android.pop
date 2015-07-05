.class public Lde/aflx/sardine/model/Multistatus;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field protected response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/model/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field

.field protected responsedescription:Ljava/lang/String;
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
.method public getResponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/model/Response;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/model/Multistatus;->response:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Multistatus;->response:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lde/aflx/sardine/model/Multistatus;->response:Ljava/util/List;

    return-object v0
.end method

.method public getResponsedescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/aflx/sardine/model/Multistatus;->responsedescription:Ljava/lang/String;

    return-object v0
.end method

.method public setResponsedescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/model/Multistatus;->responsedescription:Ljava/lang/String;

    return-void
.end method
