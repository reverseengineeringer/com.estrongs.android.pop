.class public Lcom/estrongs/android/ui/f/c;
.super Lcom/estrongs/android/widget/bb;


# static fields
.field private static g:Lcom/estrongs/android/ui/f/c;


# instance fields
.field private h:Lcom/estrongs/android/ui/theme/al;

.field private i:Landroid/view/View;

.field private j:Lcom/estrongs/android/ui/a/cx;

.field private k:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/widget/bb;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/c;)Lcom/estrongs/android/ui/a/cx;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/f/c;
    .locals 7

    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/f/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/c;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/c;->k()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/f/c;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/c;->i()V

    new-instance v0, Lcom/estrongs/android/ui/f/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/c;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/c;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/c;->g:Lcom/estrongs/android/ui/f/c;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/view/fg;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/cx;->a(Lcom/estrongs/android/pop/view/fg;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/c;->h:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/c;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->i:Landroid/view/View;

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/c;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/estrongs/android/ui/a/cx;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/ui/a/cx;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->i:Landroid/view/View;

    const v1, 0x7f0a03e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->i:Landroid/view/View;

    const v2, 0x7f0a03e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Lcom/estrongs/android/ui/f/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/d;-><init>(Lcom/estrongs/android/ui/f/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->i:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/f/c;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/bb;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->e:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->ak()[Lcom/estrongs/android/util/bf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/a/cx;->a([Lcom/estrongs/android/util/bf;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/cx;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/cx;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/cx;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->j:Lcom/estrongs/android/ui/a/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/cx;->a([Lcom/estrongs/android/util/bf;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
