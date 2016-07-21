.class public Lcom/estrongs/android/j/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/j/c;

.field private static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/j/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/j/a;

.field private d:Lcom/estrongs/android/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/j/c;->e:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/j/c;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/j/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/estrongs/android/j/b;->a()Lcom/estrongs/android/j/b;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    .locals 3

    if-nez p0, :cond_2

    sget-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/j/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/j/c;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/android/j/c;->e:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/j/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/j/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/j/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0}, Lcom/estrongs/android/j/c;->c(Landroid/content/Context;)V

    sget-object v1, Lcom/estrongs/android/j/c;->e:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_4

    sput-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    if-nez v1, :cond_0

    sput-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/j/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/j/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/j/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/j/c;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/j/c;->a:Lcom/estrongs/android/j/c;

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/j/a;

    invoke-direct {v0, p1}, Lcom/estrongs/android/j/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mtj"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/j/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/j/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p3}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0}, Lcom/estrongs/android/j/a;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/j/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0}, Lcom/estrongs/android/j/a;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0}, Lcom/estrongs/android/j/b;->b()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/c;->c:Lcom/estrongs/android/j/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/j/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/c;->d:Lcom/estrongs/android/j/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;)V

    return-void
.end method
