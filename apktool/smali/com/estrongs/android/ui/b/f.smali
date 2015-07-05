.class public Lcom/estrongs/android/ui/b/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/text/DateFormat;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/estrongs/android/ui/b/a;

.field private j:Lcom/estrongs/a/a;

.field private k:Lcom/estrongs/android/ui/theme/al;

.field private l:Ljava/lang/Object;

.field private m:Lcom/estrongs/android/ui/notification/e;

.field private n:Lcom/estrongs/android/pop/m;

.field private o:Lcom/estrongs/a/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/b/f;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/a/a;)V
    .locals 4

    const/4 v2, 0x0

    const v3, 0x7f08002a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->l:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/f;->m:Lcom/estrongs/android/ui/notification/e;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/f;->n:Lcom/estrongs/android/pop/m;

    new-instance v0, Lcom/estrongs/android/ui/b/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/i;-><init>(Lcom/estrongs/android/ui/b/f;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->o:Lcom/estrongs/a/a/p;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const v1, 0x7f0a03b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const v1, 0x7f0a03b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->f:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/f;->n:Lcom/estrongs/android/pop/m;

    new-instance v1, Lcom/estrongs/android/ui/b/g;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/b/g;-><init>(Lcom/estrongs/android/ui/b/f;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/f;)Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/f;)Lcom/estrongs/android/ui/b/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    return-object v0
.end method

.method protected a(I)V
    .locals 9

    const v5, 0x7f0b04c5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/a;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    const v3, 0x7f0a032f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "target"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    const v5, 0x7f0b03b8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "size"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/estrongs/android/ui/b/f;->a:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v3}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/ui/b/f;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/a/a/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v2, v2, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/a/a/l;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    const v2, 0x7f0b011d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/a;->e(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/a;->f(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/a;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Landroid/widget/ImageView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/estrongs/a/a;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->o:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/a;->e(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v1, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/a;->f(J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->o:Lcom/estrongs/a/a/p;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    instance-of v0, p1, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->n:Lcom/estrongs/android/pop/m;

    invoke-virtual {p1, v0}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    :cond_2
    instance-of v0, p1, Lcom/estrongs/fs/b/ap;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/estrongs/a/a;->execute()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/f;->a(I)V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_4
    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/notification/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->m:Lcom/estrongs/android/ui/notification/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->m:Lcom/estrongs/android/ui/notification/e;

    if-nez v0, :cond_6

    iget v0, p1, Lcom/estrongs/a/a;->notificationId:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p1, Lcom/estrongs/a/a;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5
    new-instance v1, Lcom/estrongs/android/ui/b/h;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/estrongs/android/ui/b/h;-><init>(Lcom/estrongs/android/ui/b/f;Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/f;->m:Lcom/estrongs/android/ui/notification/e;

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->m:Lcom/estrongs/android/ui/notification/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/a;->c()V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/a/a;->resume()V

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/a;->f()V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/f;->b(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->i:Lcom/estrongs/android/ui/b/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v2}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/f;->o:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v2}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->j:Lcom/estrongs/a/a;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
