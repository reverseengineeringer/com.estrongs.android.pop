.class public Lcom/estrongs/android/ui/c/b/f;
.super Lcom/estrongs/android/ui/c/b/a;


# static fields
.field public static i:I


# instance fields
.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/ui/c/b/f;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/c/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/f;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/c/b/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/d;

    const/16 v1, 0xa

    if-le p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/c/b/f;->h:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/c/b/i;

    invoke-direct {v2, p0, p2, v0}, Lcom/estrongs/android/ui/c/b/i;-><init>(Lcom/estrongs/android/ui/c/b/f;ILcom/estrongs/android/ui/c/a/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/c/a/d;->b(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/c/b/f;->j:Z

    return p1
.end method


# virtual methods
.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->k:Landroid/os/Handler;

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "media_library_block"

    return-object v0
.end method

.method protected g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "book"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "application"

    aput-object v2, v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected h()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    new-instance v4, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200d4

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "gallery://local/buckets/"

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "picture"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200d3

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "music://"

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "music"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200db

    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "video://"

    invoke-virtual {v6, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v7, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200ca

    invoke-virtual {v7, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "book://"

    invoke-virtual {v7, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "book"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v8, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200c8

    invoke-virtual {v8, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    const-string v0, "app://"

    invoke-virtual {v8, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "application"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/c/a/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/c/a/d;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v0, 0x7f0200cc

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/c/a/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/c/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    const-string v1, "download"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/a;

    move-object v2, v0

    check-cast v2, Lcom/estrongs/android/ui/c/a/d;

    new-instance v0, Lcom/estrongs/android/ui/c/b/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/ui/c/b/g;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;Lcom/estrongs/android/ui/c/a/d;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/c/a/d;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i()I
    .locals 1

    const v0, 0x7f030019

    return v0
.end method

.method protected j()I
    .locals 1

    sget v0, Lcom/estrongs/android/ui/c/b/f;->i:I

    return v0
.end method

.method protected k()I
    .locals 1

    sget v0, Lcom/estrongs/android/ui/c/b/f;->i:I

    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/f;->m()V

    return-void
.end method

.method public m()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->j:Z

    new-instance v0, Lcom/estrongs/android/ui/c/b/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/b/h;-><init>(Lcom/estrongs/android/ui/c/b/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/b/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
