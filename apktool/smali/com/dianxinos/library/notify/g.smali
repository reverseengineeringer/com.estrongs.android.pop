.class public final Lcom/dianxinos/library/notify/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/g;->b:Z

    const-string v0, "prod"

    iput-object v0, p0, Lcom/dianxinos/library/notify/g;->d:Ljava/lang/String;

    const-string v0, "others"

    iput-object v0, p0, Lcom/dianxinos/library/notify/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/g;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/g;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
