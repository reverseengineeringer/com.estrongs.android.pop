.class public Lcom/estrongs/android/ui/e/jq;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "paste"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cancel"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jq;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/jq;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/jq;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jq;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jq;->a:Ljava/util/Map;

    const-string v1, "paste"

    new-instance v2, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f020430

    iget-object v4, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f080097

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/ui/e/jr;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/jr;-><init>(Lcom/estrongs/android/ui/e/jq;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jq;->a:Ljava/util/Map;

    const-string v1, "new"

    new-instance v2, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f02042c

    iget-object v4, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f080093

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/ui/e/js;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/js;-><init>(Lcom/estrongs/android/ui/e/jq;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jq;->a:Ljava/util/Map;

    const-string v1, "cancel"

    new-instance v2, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f0203fd

    iget-object v4, p0, Lcom/estrongs/android/ui/e/jq;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f080073

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/ui/e/jt;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/jt;-><init>(Lcom/estrongs/android/ui/e/jq;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
