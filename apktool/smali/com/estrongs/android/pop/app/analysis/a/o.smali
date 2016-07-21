.class public abstract Lcom/estrongs/android/pop/app/analysis/a/o;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field protected c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/a/o",
            "<TG;TC;>.com/estrongs/android/pop/app/analysis/a/x;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/a/o",
            "<TG;TC;>.com/estrongs/android/pop/app/analysis/a/w;>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/pop/app/analysis/a/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/analysis/a/y",
            "<TG;TC;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private o:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/pop/app/analysis/a/o;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/pop/app/analysis/a/o;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "ExpandableAdapter"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->l:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/o;Landroid/support/v7/widget/LinearLayoutManager;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->o:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p1
.end method

.method private a()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->n:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->n:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->n:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->n:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method private a(I)Lcom/estrongs/android/pop/app/analysis/a/t;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/t;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;)Lcom/estrongs/android/pop/app/analysis/a/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;",
            "Ljava/util/List",
            "<TC;>;)",
            "Lcom/estrongs/android/pop/app/analysis/a/o",
            "<TG;TC;>.com/estrongs/android/pop/app/analysis/a/x;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    invoke-direct {v0, p0, v5}, Lcom/estrongs/android/pop/app/analysis/a/x;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/p;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->a:I

    iput-object p1, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/analysis/a/w;

    invoke-direct {v4, p0, v5}, Lcom/estrongs/android/pop/app/analysis/a/w;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/p;)V

    iput-object v3, v4, Lcom/estrongs/android/pop/app/analysis/a/w;->c:Ljava/lang/Object;

    iput-object v0, v4, Lcom/estrongs/android/pop/app/analysis/a/w;->b:Lcom/estrongs/android/pop/app/analysis/a/v;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(Lcom/estrongs/android/pop/app/analysis/a/x;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/analysis/a/v;",
            "TG;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/s;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/s;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/v;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/analysis/a/x;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/analysis/a/o",
            "<TG;TC;>.com/estrongs/android/pop/app/analysis/a/x;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->a:I

    iget v5, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->a:I

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/analysis/a/w;

    add-int/lit8 v4, v3, 0x1

    iput v3, v1, Lcom/estrongs/android/pop/app/analysis/a/w;->a:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/analysis/a/w;

    iget v1, v1, Lcom/estrongs/android/pop/app/analysis/a/w;->a:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v4

    goto :goto_0

    :cond_0
    add-int v0, v5, v6

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/t;

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/a/t;->a:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemRangeInserted(II)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->h:Z

    return v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(I)Lcom/estrongs/android/pop/app/analysis/a/t;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/estrongs/android/pop/app/analysis/a/v;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    :goto_1
    iget-object v1, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/u;->b:Lcom/estrongs/android/pop/app/analysis/a/v;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    goto :goto_1
.end method

.method private b(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/x;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/pop/app/analysis/a/x;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/analysis/a/o",
            "<TG;TC;>.com/estrongs/android/pop/app/analysis/a/x;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->a:I

    iget v2, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->a:I

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/t;

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/a/t;->a:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemRangeRemoved(II)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/a/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/a/o;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->o:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private c(I)V
    .locals 9

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(I)Lcom/estrongs/android/pop/app/analysis/a/t;

    move-result-object v0

    instance-of v6, v0, Lcom/estrongs/android/pop/app/analysis/a/v;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    move v8, v2

    move-object v2, v0

    move v0, v8

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    iget-boolean v0, v2, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-static {v0, v7}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    :goto_2
    iget-object v0, v2, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    iget-boolean v1, v2, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    invoke-direct {p0, v2, v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V

    :cond_0
    return-void

    :cond_1
    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/u;->b:Lcom/estrongs/android/pop/app/analysis/a/v;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->getItemCount()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(I)Lcom/estrongs/android/pop/app/analysis/a/t;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/analysis/a/v;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-static {v4}, Landroid/support/v4/view/cn;->v(Landroid/view/View;)F

    move-result v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-static {v4, v0}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-static {v0, v7}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->m:Landroid/view/View;

    invoke-static {v0, v7}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/analysis/a/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->g:Lcom/estrongs/android/pop/app/analysis/a/y;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/analysis/a/o;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/analysis/a/o;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/u;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Lcom/estrongs/android/pop/app/analysis/a/u;",
            "TC;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Lcom/estrongs/android/pop/app/analysis/a/v;",
            "TG;Z)V"
        }
    .end annotation
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/a/u;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/a/u;->b:Lcom/estrongs/android/pop/app/analysis/a/v;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyItemRemoved(I)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/a/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/analysis/a/y",
            "<TG;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->g:Lcom/estrongs/android/pop/app/analysis/a/y;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TG;",
            "Ljava/util/List",
            "<TC;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Ljava/lang/Object;Ljava/util/List;)Lcom/estrongs/android/pop/app/analysis/a/x;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(I)Lcom/estrongs/android/pop/app/analysis/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/pop/app/analysis/a/x;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/estrongs/android/pop/app/analysis/a/o;->a:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/estrongs/android/pop/app/analysis/a/o;->b:I

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->l:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/r;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/o;->k:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(I)Lcom/estrongs/android/pop/app/analysis/a/t;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/analysis/a/o;->getItemViewType(I)I

    move-result v1

    sget v2, Lcom/estrongs/android/pop/app/analysis/a/o;->a:I

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;Z)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/p;

    invoke-direct {v2, p0, v0, p2}, Lcom/estrongs/android/pop/app/analysis/a/p;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/w;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/analysis/a/w;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/estrongs/android/pop/app/analysis/a/u;Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/q;

    invoke-direct {v2, p0, p2, v0}, Lcom/estrongs/android/pop/app/analysis/a/q;-><init>(Lcom/estrongs/android/pop/app/analysis/a/o;ILcom/estrongs/android/pop/app/analysis/a/w;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    sget v0, Lcom/estrongs/android/pop/app/analysis/a/o;->a:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
