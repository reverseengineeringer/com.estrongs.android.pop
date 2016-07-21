.class public Lcom/flurry/sdk/dk;
.super Lcom/flurry/sdk/ks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ks",
        "<",
        "Lcom/flurry/sdk/dj;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/ks;-><init>()V

    return-void
.end method

.method private a(Lcom/flurry/sdk/dj;I)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/sdk/bb;->N:Lcom/flurry/sdk/bb;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dj;I)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dk;->c(Lcom/flurry/sdk/kr;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dk;->c(Lcom/flurry/sdk/kr;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dk;->d(Lcom/flurry/sdk/kr;)V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dk;->c(Lcom/flurry/sdk/kr;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/jz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dj;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, ".yflurryreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryreporter"

    const/4 v3, 0x3

    new-instance v4, Lcom/flurry/sdk/dk$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/dk$1;-><init>(Lcom/flurry/sdk/dk;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/dj;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending next report for original url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to current url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    sget-object v1, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/flurry/sdk/dk$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dk$2;-><init>(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/flurry/sdk/kr;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/dj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dj;)V

    return-void
.end method
