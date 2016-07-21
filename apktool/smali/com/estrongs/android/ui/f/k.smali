.class public Lcom/estrongs/android/ui/f/k;
.super Lcom/estrongs/android/widget/bc;


# static fields
.field private static g:Lcom/estrongs/android/ui/f/k;


# instance fields
.field private h:Lcom/estrongs/android/ui/adapter/dq;

.field private i:Lcom/estrongs/android/ui/theme/at;

.field private j:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/k;->g:Lcom/estrongs/android/ui/f/k;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/f/k;->g:Lcom/estrongs/android/ui/f/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/f/k;->g:Lcom/estrongs/android/ui/f/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/k;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/f/k;->g:Lcom/estrongs/android/ui/f/k;

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/k;->i:Lcom/estrongs/android/ui/theme/at;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->i:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020448

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->i:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->i:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020319

    const v3, 0x7f020249

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/adapter/dq;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/adapter/dq;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/k;->h:Lcom/estrongs/android/ui/adapter/dq;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->h:Lcom/estrongs/android/ui/adapter/dq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->h:Lcom/estrongs/android/ui/adapter/dq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    const/16 v1, 0x10

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/f/k;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/bc;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->h:Lcom/estrongs/android/ui/adapter/dq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dq;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/k;->j:Landroid/widget/ListView;

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
