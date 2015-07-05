.class public Lcom/estrongs/android/pop/spfs/SPFileInfo;
.super Lcom/estrongs/android/pop/netfs/NetFileInfo;


# instance fields
.field public description:Ljava/lang/String;

.field public familyFlag:Z

.field public friendFlag:Z

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public ownerId:Ljava/lang/String;

.field public ownerUsername:Ljava/lang/String;

.field public publicFlag:Z

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnail_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/NetFileInfo;-><init>()V

    return-void
.end method
