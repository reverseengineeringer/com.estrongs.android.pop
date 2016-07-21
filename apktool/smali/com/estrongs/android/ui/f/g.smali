.class public Lcom/estrongs/android/ui/f/g;
.super Lcom/estrongs/android/widget/bc;


# static fields
.field private static g:Lcom/estrongs/android/ui/f/g;


# instance fields
.field private h:Lcom/estrongs/android/ui/adapter/dn;

.field private i:Lcom/estrongs/android/ui/theme/at;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/widget/bc;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/g;)Lcom/estrongs/android/ui/adapter/dn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/f/g;
    .locals 7

    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/f/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/g;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/g;->k()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/f/g;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/g;->i()V

    new-instance v0, Lcom/estrongs/android/ui/f/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/g;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/g;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/g;->g:Lcom/estrongs/android/ui/f/g;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/view/eh;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/g;->i:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03015d

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e069d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/g;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/f/h;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/f/h;-><init>(Lcom/estrongs/android/ui/f/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e06a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/g;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dn;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v4}, Lcom/estrongs/android/ui/adapter/dn;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/f/g;->l()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f0e05a9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0803a7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/f/g;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    :cond_0
    const v0, 0x7f0301a7

    goto :goto_0
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/bc;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->e:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->ay()[Lcom/estrongs/android/util/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/adapter/dn;->a([Lcom/estrongs/android/util/bn;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dn;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/f/g;->h:Lcom/estrongs/android/ui/adapter/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a([Lcom/estrongs/android/util/bn;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
