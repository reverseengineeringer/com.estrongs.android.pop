.class Lcom/estrongs/android/recommand/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/recommand/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/recommand/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/recommand/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/recommand/i;->a:Lcom/estrongs/android/recommand/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/recommand/p;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/estrongs/android/recommand/m;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/recommand/m;

    invoke-virtual {p1}, Lcom/estrongs/android/recommand/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/recommand/m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
