.class public Lcom/estrongs/android/ui/dialog/kw;
.super Lcom/estrongs/android/ui/dialog/cg;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final a:Lcom/estrongs/android/e/j;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Lcom/estrongs/android/e/h;

.field private f:Landroid/widget/Button;

.field private g:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/e/h;Lcom/estrongs/android/e/j;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->g:Lcom/estrongs/android/ui/theme/al;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/kw;->e:Lcom/estrongs/android/e/h;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {p3}, Lcom/estrongs/android/e/j;->c()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/dialog/kw;->c:I

    return-void
.end method

.method private a()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/16 v3, 0x22

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v1}, Lcom/estrongs/android/e/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/kw;->c:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kw;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->a()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a03e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kw;)Lcom/estrongs/android/e/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->e:Lcom/estrongs/android/e/h;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kw;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const v1, 0x7f0a03e4

    iget v0, p0, Lcom/estrongs/android/ui/dialog/kw;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    const v1, 0x7f0a03e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->b()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kw;->d:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0b000c

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kw;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/kw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/e/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kw;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->b:Landroid/view/View;

    const v3, 0x7f0a0115

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v3}, Lcom/estrongs/android/e/j;->d()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f0b0090

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/kw;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/estrongs/android/e/m;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/estrongs/android/ui/dialog/kw;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_0
    const v4, 0x7f070011

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b0094

    iget-object v6, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v6}, Lcom/estrongs/android/e/j;->c()I

    move-result v6

    aget-object v4, v4, v6

    invoke-direct {p0, v0, v5, v4}, Lcom/estrongs/android/ui/dialog/kw;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v4}, Lcom/estrongs/android/e/j;->e()I

    move-result v4

    if-eq v4, v8, :cond_1

    const v5, 0x7f070001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0b008f

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v5, v2}, Lcom/estrongs/android/ui/dialog/kw;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kw;->a:Lcom/estrongs/android/e/j;

    invoke-virtual {v2}, Lcom/estrongs/android/e/j;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const v5, 0x7f0b0091

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Lcom/estrongs/android/ui/dialog/kw;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_2

    const v5, 0x7f0b0092

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v5, v2}, Lcom/estrongs/android/ui/dialog/kw;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v0, :cond_3

    if-eq v4, v8, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->c()V

    const v0, 0x7f0b0037

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/dialog/kx;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/kx;-><init>(Lcom/estrongs/android/ui/dialog/kw;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/ui/dialog/kw;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    :cond_3
    new-instance v0, Lcom/estrongs/android/ui/dialog/ky;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ky;-><init>(Lcom/estrongs/android/ui/dialog/kw;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    if-nez v2, :cond_5

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/dialog/kw;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kw;->f:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->b()V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/dialog/kw;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iput p3, p0, Lcom/estrongs/android/ui/dialog/kw;->c:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/kw;->b()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
