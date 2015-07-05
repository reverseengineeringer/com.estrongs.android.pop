.class public Lcom/estrongs/android/ui/dialog/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/au;

.field private b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ap;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ap;)Lcom/estrongs/android/pop/esclasses/ESActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    return-object v0
.end method

.method private a(Landroid/content/DialogInterface;)V
    .locals 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v9, v3

    :goto_0
    if-eqz v9, :cond_e

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v3

    :goto_2
    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_3

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    move v9, v4

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    new-instance v10, Ljava/text/DecimalFormat;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_5

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    move v5, v4

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_6

    move-object v6, v1

    :goto_6
    if-eqz v6, :cond_7

    :goto_7
    const-string v11, "item_rename_new_name"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_4

    move-object v7, v8

    :cond_4
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v12, v2, v5

    int-to-long v12, v12

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v11, v6}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_5
    move v3, v4

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_7
    const-string v6, ""

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    move v2, v4

    :goto_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_a

    move-object v5, v1

    :goto_a
    if-eqz v5, :cond_b

    :goto_b
    const-string v10, "item_rename_new_name"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_c

    move-object v6, v7

    :goto_c
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v10, v5}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v3, v4

    goto :goto_8

    :cond_a
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_b
    const-string v5, ""

    goto :goto_b

    :cond_c
    const-string v6, ""

    goto :goto_c

    :cond_d
    new-instance v0, Lcom/estrongs/fs/b/p;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ap;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ap;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/fs/b/p;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/as;-><init>(Lcom/estrongs/android/ui/dialog/ap;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v3, 0x7f0b02f9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/p;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/p;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ix;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v5, 0x7f0b03c4

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/ix;->b(Z)Lcom/estrongs/android/ui/dialog/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/p;->execute()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ap;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ap;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/au;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/dialog/au;-><init>(Lcom/estrongs/android/ui/dialog/ap;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ap;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02f9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ap;->a:Lcom/estrongs/android/ui/dialog/au;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/au;->aq()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/dialog/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/aq;-><init>(Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/ar;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ar;-><init>(Lcom/estrongs/android/ui/dialog/ap;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->a()V

    return-void
.end method
