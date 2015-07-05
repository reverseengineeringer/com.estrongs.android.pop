.class public final enum Lcom/dropbox/client2/RESTUtility$RequestMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/client2/RESTUtility$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/dropbox/client2/RESTUtility$RequestMethod;

.field public static final enum GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

.field public static final enum POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/client2/RESTUtility$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    new-instance v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/client2/RESTUtility$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/client2/RESTUtility$RequestMethod;

    sget-object v1, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->ENUM$VALUES:[Lcom/dropbox/client2/RESTUtility$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .locals 1

    const-class v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->ENUM$VALUES:[Lcom/dropbox/client2/RESTUtility$RequestMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/dropbox/client2/RESTUtility$RequestMethod;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
