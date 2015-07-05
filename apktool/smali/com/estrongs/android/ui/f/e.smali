.class public Lcom/estrongs/android/ui/f/e;
.super Lcom/estrongs/android/widget/bb;


# static fields
.field private static g:Lcom/estrongs/android/ui/f/e;


# instance fields
.field private h:Lcom/estrongs/android/ui/a/da;

.field private i:Lcom/estrongs/android/ui/theme/al;

.field private j:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/widget/bb;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/f/e;
    .locals 7

    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/f/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/e;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/e;->k()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/f/e;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/e;->i()V

    new-instance v0, Lcom/estrongs/android/ui/f/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/f/e;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/e;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/e;->g:Lcom/estrongs/android/ui/f/e;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/fz;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->h:Lcom/estrongs/android/ui/a/da;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/da;->a(Lcom/estrongs/android/pop/app/fz;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/e;->i:Lcom/estrongs/android/ui/theme/al;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->i:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0202d5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->i:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->i:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201d2

    const v3, 0x7f02010a

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/a/da;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/a/da;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/e;->h:Lcom/estrongs/android/ui/a/da;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->h:Lcom/estrongs/android/ui/a/da;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->h:Lcom/estrongs/android/ui/a/da;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    const/16 v1, 0x10

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/f/e;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/bb;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->h:Lcom/estrongs/android/ui/a/da;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/da;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->j:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
