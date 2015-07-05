.class public Lcom/estrongs/android/ui/dialog/fh;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/CheckBox;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->d:Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->f:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/fh;->h:Z

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->i:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/ui/dialog/fh;->j:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s3.amazonaws.com"

    aput-object v1, v0, v3

    const-string v1, "s3-us-west-2.amazonaws.com"

    aput-object v1, v0, v5

    const-string v1, "s3-us-west-1.amazonaws.com"

    aput-object v1, v0, v6

    const-string v1, "s3-eu-west-1.amazonaws.com"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "s3-ap-southeast-1.amazonaws.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "s3-ap-northeast-1.amazonaws.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "s3-sa-east-1.amazonaws.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "s3-ap-southeast-2.amazonaws.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->k:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US Standard"

    aput-object v1, v0, v3

    const-string v1, "US (Oregon)"

    aput-object v1, v0, v5

    const-string v1, "US (Northern California)"

    aput-object v1, v0, v6

    const-string v1, "EU (Ireland)"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Asia (Singapore)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Asia (Tokyo)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sao Paulo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sydney"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->l:[Ljava/lang/String;

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->m:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/fh;->b()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/fh;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/fh;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/fh;->j:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/fh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "s3"

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "secret"

    invoke-virtual {v0, v2, p3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "host"

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fh;->k:[Ljava/lang/String;

    iget v4, p0, Lcom/estrongs/android/ui/dialog/fh;->j:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fh;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http"

    const-string v3, "https://"

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "s3"

    const-string v3, "s3fakeuser"

    const-string v4, "fake"

    invoke-static {v2, v3, v4, v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    invoke-static {p1}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v2, "http"

    const-string v3, "http://"

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "yandex"

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/android/util/am;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "webdavs://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    const-string v0, "443"

    :cond_4
    :goto_3
    invoke-static {p2, v3, v0}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "80"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/fh;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/fh;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/fh;->j:I

    return v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->l:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/fi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/fi;-><init>(Lcom/estrongs/android/ui/dialog/fh;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->n:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/fj;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/fj;-><init>(Lcom/estrongs/android/ui/dialog/fh;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/fh;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->n:Landroid/widget/Button;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "net://"

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    const-string v1, "vdisk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, p1, p2, v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "s3"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    const-string v1, "s3fakeuser"

    const-string v2, "fake"

    const-string v3, "/"

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/dialog/fm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fm;-><init>(Lcom/estrongs/android/ui/dialog/fh;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/fl;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fl;-><init>(Lcom/estrongs/android/ui/dialog/fh;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/fh;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "s3"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    const v2, 0x7f0b023e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "s3"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yandex"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vdisk"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/fh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    const v2, 0x7f0b0241

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    const-string v0, "kanbox"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    if-le v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    const v2, 0x7f0b0271

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_4
    const-string v0, "sugarsync"

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/fh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/dialog/fh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/ui/dialog/fh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->c:Landroid/content/Context;

    const v1, 0x7f0b01c8

    const v7, 0x7f0b01c9

    invoke-static {v0, v1, v7}, Lcom/estrongs/android/a/u;->a(Landroid/content/Context;II)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/estrongs/android/ui/dialog/fn;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/fn;-><init>(Lcom/estrongs/android/ui/dialog/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v2, v2, v1

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lt v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    const-string v3, "[a-zA-z]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/fh;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/fh;->d()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/fh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/fh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/fh;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/fh;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/fh;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fh;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/fh;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/fh;
    .locals 3

    const v1, 0x7f0a03f0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fh;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fh;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/fh;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/fh;

    const-string v0, "vdisk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "s3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->d:Landroid/widget/CheckBox;

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->b:Landroid/view/View;

    const v1, 0x7f0a03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
