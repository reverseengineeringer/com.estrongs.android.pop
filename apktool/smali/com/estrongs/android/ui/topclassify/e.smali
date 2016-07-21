.class public Lcom/estrongs/android/ui/topclassify/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/topclassify/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/e;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "book://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "music://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pic://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gallery://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/ui/topclassify/b;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/b;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/ui/topclassify/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/topclassify/e;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/topclassify/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/ui/topclassify/b;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video://"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/topclassify/ab;

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/e;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/topclassify/ab;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "music://"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/topclassify/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/e;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/topclassify/z;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "book://"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/topclassify/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/e;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/topclassify/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "pic://"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "gallery://"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    new-instance v0, Lcom/estrongs/android/ui/topclassify/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/e;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/topclassify/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
