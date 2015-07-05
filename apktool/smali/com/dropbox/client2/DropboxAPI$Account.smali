.class public Lcom/dropbox/client2/DropboxAPI$Account;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1d1be5b63d0357f4L


# instance fields
.field public final country:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final quota:J

.field public final quotaNormal:J

.field public final quotaShared:J

.field public final referralLink:Ljava/lang/String;

.field public final uid:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$Account;->country:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->displayName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dropbox/client2/DropboxAPI$Account;->uid:J

    iput-object p5, p0, Lcom/dropbox/client2/DropboxAPI$Account;->referralLink:Ljava/lang/String;

    iput-wide p6, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quota:J

    iput-wide p8, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaNormal:J

    iput-wide p10, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaShared:J

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 4
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "country"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$Account;->country:Ljava/lang/String;

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$Account;->displayName:Ljava/lang/String;

    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$Account;->uid:J

    const-string v0, "referral_link"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$Account;->referralLink:Ljava/lang/String;

    const-string v0, "quota_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "quota"

    invoke-static {v0, v1}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quota:J

    const-string v1, "normal"

    invoke-static {v0, v1}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaNormal:J

    const-string v1, "shared"

    invoke-static {v0, v1}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$Account;->quotaShared:J

    return-void
.end method
