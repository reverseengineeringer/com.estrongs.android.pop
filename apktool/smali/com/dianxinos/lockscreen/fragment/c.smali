.class public Lcom/dianxinos/lockscreen/fragment/c;
.super Landroid/support/v4/app/au;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field public c:Z

.field final synthetic d:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;Landroid/content/Context;Landroid/support/v4/app/aj;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/aj;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/fragment/c;->d:Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;

    invoke-direct {p0, p3}, Landroid/support/v4/app/au;-><init>(Landroid/support/v4/app/aj;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->c:Z

    iput-object p4, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/fragment/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b()Lcom/dianxinos/lockscreen/fragment/a;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/au;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/lockscreen/fragment/a;

    iput-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    return-object v1
.end method
