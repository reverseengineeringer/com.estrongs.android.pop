.class public Lcom/estrongs/android/ui/dialog/fc;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/dialog/cg;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/dialog/fc;->e:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/fc;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/dialog/fc;->e:Z

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/fc;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/fc;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/fc;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/fc;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/fc;->b(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/estrongs/android/util/ay;->a(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_0

    const v0, 0x7f0b01c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b0254

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_1

    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0255

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/fc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->c:Landroid/view/View;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/fc;->e:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b000b

    move v1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/fc;->e:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b002d

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->c:Landroid/view/View;

    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fc;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->c:Landroid/view/View;

    const v3, 0x7f0a0011

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fc;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fc;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/dialog/fe;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fe;-><init>(Lcom/estrongs/android/ui/dialog/fc;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/fd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fd;-><init>(Lcom/estrongs/android/ui/dialog/fc;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->b:Lcom/estrongs/android/ui/dialog/cg;

    return-void

    :cond_2
    const v0, 0x7f0b0456

    move v1, v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0b02b8

    move v2, v0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ay;->a(Ljava/io/File;)Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    move-result-object v0

    iput-object p3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/estrongs/android/util/ay;->a(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;Ljava/io/File;)V

    const v0, 0x7f0b01c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/fc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/fc;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/fc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->b:Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->d:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    :cond_2
    return-void
.end method
