.class public Lcom/estrongs/android/ui/c/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static a:I

.field private static b:I


# instance fields
.field private c:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/k/d;",
            "Lcom/estrongs/android/ui/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/estrongs/android/ui/topclassify/t;

.field private i:Lcom/estrongs/android/ui/c/b/a;

.field private j:Lcom/estrongs/android/pop/app/messagebox/ah;

.field private k:Lcom/estrongs/android/pop/app/unlock/y;

.field private l:Lcom/estrongs/android/ui/c/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    sput v0, Lcom/estrongs/android/ui/c/a;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/ui/c/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->g:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/ui/topclassify/t;

    const-string v1, "home"

    invoke-direct {v0, v1, p1, p0}, Lcom/estrongs/android/ui/topclassify/t;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/estrongs/android/ui/c/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    new-instance v0, Lcom/estrongs/android/ui/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    new-instance v0, Lcom/estrongs/android/ui/c/b/a;

    check-cast p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, p1, p0}, Lcom/estrongs/android/ui/c/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/c/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->i:Lcom/estrongs/android/ui/c/b/a;

    new-instance v0, Lcom/estrongs/android/ui/c/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->b()Lcom/estrongs/android/pop/app/messagebox/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Lcom/estrongs/android/pop/app/messagebox/ah;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Lcom/estrongs/android/pop/app/messagebox/ah;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/c/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/k/d;

    new-instance v2, Lcom/estrongs/android/ui/c/h;

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/ui/c/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/s;->c()Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/estrongs/android/ui/c/h;

    invoke-direct {v1, v3, v0}, Lcom/estrongs/android/ui/c/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "positon"

    const-string v3, "home"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "feature"

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    const-string v2, "show"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v2, "unlockc"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/estrongs/android/ui/c/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/b;-><init>(Lcom/estrongs/android/ui/c/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->k:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/y;)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/c/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->i:Lcom/estrongs/android/ui/c/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->i:Lcom/estrongs/android/ui/c/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/a;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->j:Lcom/estrongs/android/pop/app/messagebox/ah;

    new-instance v0, Lcom/estrongs/android/ui/c/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/h;I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/c/h;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Ljava/util/Map;

    iget v1, p1, Lcom/estrongs/android/ui/c/h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/estrongs/android/k/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->g:Ljava/util/Map;

    iget-object v0, p1, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/k/d;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/estrongs/android/ui/c/a;->a:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/t;->h()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->b(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/t;->c()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/h;

    iget v0, v0, Lcom/estrongs/android/ui/c/h;->a:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/estrongs/android/ui/c/a;->b:I

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/c/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/estrongs/android/ui/c/c/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/f;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/c/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/estrongs/android/ui/c/c/b;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Lcom/estrongs/android/ui/topclassify/t;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/c/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/estrongs/android/ui/c/c/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Lcom/estrongs/android/pop/app/messagebox/ah;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/c/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/estrongs/android/ui/c/c/g;

    new-instance v0, Lcom/estrongs/android/ui/c/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/c;-><init>(Lcom/estrongs/android/ui/c/a;)V

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/pop/app/unlock/g;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/k/d;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/k/d;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/c/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    check-cast p1, Lcom/estrongs/android/pop/app/a/a/a;

    new-instance v0, Lcom/estrongs/android/ui/c/d;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/ui/c/d;-><init>(Lcom/estrongs/android/ui/c/a;I)V

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/a/a/a;->a(Lcom/estrongs/android/pop/app/a/a/d;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/c/c/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->i:Lcom/estrongs/android/ui/c/b/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/c/f;->a(Lcom/estrongs/android/ui/c/b/a;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Lcom/estrongs/android/ui/c/c/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/c/c/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Lcom/estrongs/android/ui/c/c/b;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Lcom/estrongs/android/ui/c/c/b;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/c/c/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/c/c/g;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    const-string v3, "home"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/g;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/estrongs/android/pop/app/a/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/a/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Landroid/support/v7/widget/RecyclerView$Adapter;

    sget v1, Lcom/estrongs/android/ui/c/a;->b:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
