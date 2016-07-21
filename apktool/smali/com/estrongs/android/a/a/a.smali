.class public Lcom/estrongs/android/a/a/a;
.super Lcom/estrongs/android/a/a/e;


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/a/a/a;->a:Ljava/util/HashSet;

    sget-object v0, Lcom/estrongs/android/a/a/a;->a:Ljava/util/HashSet;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;
    .locals 8

    check-cast p1, Lcom/estrongs/android/a/aj;

    new-instance v1, Lcom/estrongs/android/a/b/b;

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected b(Lcom/estrongs/android/a/ai;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/a/aj;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/a/aj;

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/a/a/a;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
