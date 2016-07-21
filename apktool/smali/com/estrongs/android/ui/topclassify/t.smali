.class public Lcom/estrongs/android/ui/topclassify/t;
.super Lcom/estrongs/android/ui/topclassify/b;


# instance fields
.field private d:Lcom/estrongs/android/ui/topclassify/f;

.field private e:Lcom/estrongs/android/ui/c/a;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/estrongs/android/ui/c/a;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/topclassify/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/v;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/v;-><init>(Lcom/estrongs/android/ui/topclassify/t;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->f:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/estrongs/android/ui/topclassify/t;->e:Lcom/estrongs/android/ui/c/a;

    new-instance v0, Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v0, p2}, Lcom/estrongs/android/ui/topclassify/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->d:Lcom/estrongs/android/ui/topclassify/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->d:Lcom/estrongs/android/ui/topclassify/f;

    new-instance v1, Lcom/estrongs/android/ui/topclassify/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/topclassify/u;-><init>(Lcom/estrongs/android/ui/topclassify/t;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/l;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/t;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/t;)Lcom/estrongs/android/ui/c/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->e:Lcom/estrongs/android/ui/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/t;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/topclassify/t;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/estrongs/android/ui/topclassify/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "log://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto :goto_0

    :cond_1
    const-string v1, "archive://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto :goto_0

    :cond_2
    const-string v1, "encrypt://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto :goto_0

    :cond_3
    const-string v1, "music://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto :goto_0

    :cond_4
    const-string v1, "video://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto/16 :goto_0

    :cond_5
    const-string v1, "book://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto/16 :goto_0

    :cond_6
    const-string v1, "app://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto/16 :goto_0

    :cond_7
    const-string v1, "finder://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto/16 :goto_0

    :cond_8
    const-string v1, "pic://"

    iget-object v3, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/topclassify/k;

    iput-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e7

    if-lt p1, v0, :cond_0

    const-string v0, "999+"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i()I
    .locals 1

    const v0, 0x7f0300e0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "log://"

    const v2, 0x7f02023b

    const v3, 0x7f080360

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "encrypt://"

    const v2, 0x7f020237

    const v3, 0x7f0802bc

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "archive://"

    const v2, 0x7f020233

    const v3, 0x7f08035d

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "clean://"

    const v2, 0x7f020231

    const v3, 0x7f080355

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "app://"

    const v2, 0x7f02022e

    const v3, 0x7f080199

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "pic://"

    const v2, 0x7f02023a

    const v3, 0x7f0801a2

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "music://"

    const v2, 0x7f02023d

    const v3, 0x7f080361

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "video://"

    const v2, 0x7f020243

    const v3, 0x7f08019f

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "net://"

    const v2, 0x7f020232

    const v3, 0x7f08035c

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "download://"

    const v2, 0x7f020236

    const v3, 0x7f08035f

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "book://"

    const v2, 0x7f020235

    const v3, 0x7f08019a

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "mynetwork://"

    const v2, 0x7f020234

    const v3, 0x7f08035e

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "recycle://"

    const v2, 0x7f02023e

    const v3, 0x7f080602

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "remote://"

    const v2, 0x7f020244

    const v3, 0x7f080362

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    const-string v1, "applocker"

    const v2, 0x7f02022f

    const v3, 0x7f08035b

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/t;->a(Lcom/estrongs/android/ui/topclassify/d;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const v12, 0x7f0d0159

    const v11, 0x7f0201d6

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/d;

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/t;->i()I

    move-result v1

    invoke-virtual {v6, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setFocusable(Z)V

    const v1, 0x7f0200aa

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0e0417

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0e0419

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0418

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v9, v0, Lcom/estrongs/android/ui/topclassify/d;->b:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, v0, Lcom/estrongs/android/ui/topclassify/d;->c:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v1, v1, Lcom/estrongs/android/ui/topclassify/k;->a:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/topclassify/k;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v1, v1, Lcom/estrongs/android/ui/topclassify/k;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v1, v1, Lcom/estrongs/android/ui/topclassify/k;->a:I

    if-gt v1, v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v2, v2, Lcom/estrongs/android/ui/topclassify/k;->a:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/topclassify/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    const v9, 0x7f08019b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v2, v2, Lcom/estrongs/android/ui/topclassify/k;->a:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/topclassify/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    const v9, 0x7f08019c

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v2, v2, Lcom/estrongs/android/ui/topclassify/k;->a:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/topclassify/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    const v1, 0x7f0201d7

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, ""

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    const v1, 0x7f0201d8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/t;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->e:Lcom/estrongs/android/ui/topclassify/k;

    iget v2, v2, Lcom/estrongs/android/ui/topclassify/k;->a:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/topclassify/t;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    move-object v0, v4

    :goto_3
    return-object v0

    :cond_3
    move-object v0, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->d:Lcom/estrongs/android/ui/topclassify/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/t;->d:Lcom/estrongs/android/ui/topclassify/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/f;->a()V

    :cond_0
    return-void
.end method
