.class public Lcom/estrongs/android/ui/f/i;
.super Lcom/estrongs/android/widget/bc;


# static fields
.field private static g:Lcom/estrongs/android/ui/f/i;


# instance fields
.field private h:Lcom/estrongs/android/ui/theme/at;

.field private i:Landroid/view/View;

.field private j:Lcom/estrongs/android/ui/adapter/dn;

.field private k:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/widget/bc;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/i;)Lcom/estrongs/android/ui/adapter/dn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/f/i;
    .locals 7

    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/f/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/i;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/i;->k()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/f/i;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/i;->i()V

    new-instance v0, Lcom/estrongs/android/ui/f/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/i;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/i;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/i;->g:Lcom/estrongs/android/ui/f/i;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/view/eh;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/adapter/dn;->a(Lcom/estrongs/android/pop/view/eh;)V
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

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/i;->h:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/i;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->i:Landroid/view/View;

    const v1, 0x7f0e06a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/i;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dn;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/estrongs/android/ui/adapter/dn;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->i:Landroid/view/View;

    const v1, 0x7f0e069d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->i:Landroid/view/View;

    const v2, 0x7f0e069e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Lcom/estrongs/android/ui/f/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/j;-><init>(Lcom/estrongs/android/ui/f/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->i:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/f/i;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/bc;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->e:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->ay()[Lcom/estrongs/android/util/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/adapter/dn;->a([Lcom/estrongs/android/util/bn;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dn;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->j:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a([Lcom/estrongs/android/util/bn;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
