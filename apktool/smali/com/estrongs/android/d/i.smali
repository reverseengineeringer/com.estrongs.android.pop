.class public Lcom/estrongs/android/d/i;
.super Lcom/estrongs/android/ui/dialog/ci;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field private f:Landroid/view/View;

.field private g:I

.field private h:Lcom/estrongs/android/d/p;

.field private i:Landroid/widget/CheckBox;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/d/i;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/d/i;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/d/i;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/d/i;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/d/i;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Lcom/estrongs/android/d/p;ZZZ)V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f0803e9

    const v5, 0x7f080228

    const v4, 0x7f0801f6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/estrongs/android/d/i;->b:I

    iput v0, p0, Lcom/estrongs/android/d/i;->g:I

    iput-object v2, p0, Lcom/estrongs/android/d/i;->h:Lcom/estrongs/android/d/p;

    iput-boolean v3, p0, Lcom/estrongs/android/d/i;->j:Z

    iput-object p4, p0, Lcom/estrongs/android/d/i;->h:Lcom/estrongs/android/d/p;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/d/i;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080669

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08025c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/d/i;->i:Landroid/widget/CheckBox;

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/i;->i:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    if-eqz p6, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/j;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    if-eqz p7, :cond_1

    const v0, 0x7f0804a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/k;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/m;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/d/i;->setCancelable(Z)V

    return-void

    :cond_1
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/l;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/n;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/d/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/d/o;-><init>(Lcom/estrongs/android/d/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/d/i;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/d/i;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/d/i;->g:I

    return p1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/d/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/d/i;->j:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    .locals 10

    sget v0, Lcom/estrongs/android/d/i;->b:I

    iput v0, p0, Lcom/estrongs/android/d/i;->g:I

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/d/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->F()Ljava/text/DateFormat;

    move-result-object v4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/estrongs/android/d/i;->mContext:Landroid/content/Context;

    const v6, 0x7f0802f4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v7, 0x7f0e0108

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v6, 0x7f0e0378

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v5, 0x7f0e037a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v5, 0x7f0e037e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/d/i;->mContext:Landroid/content/Context;

    const v3, 0x7f0802fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/d/i;->mContext:Landroid/content/Context;

    const v3, 0x7f0802fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/d/i;->j:Z

    if-nez v0, :cond_0

    sget v0, Lcom/estrongs/android/d/i;->a:I

    iput v0, p0, Lcom/estrongs/android/d/i;->g:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/i;->h:Lcom/estrongs/android/d/p;

    iget v1, p0, Lcom/estrongs/android/d/i;->g:I

    iget-object v2, p0, Lcom/estrongs/android/d/i;->i:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/d/p;->a(IZ)V

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/i;->f:Landroid/view/View;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
