.class public Lcom/estrongs/android/view/fp;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field a:Z

.field private al:Landroid/widget/EditText;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/Button;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/net/wifi/WifiManager;

.field private aq:Landroid/net/ConnectivityManager;

.field private ar:Landroid/content/IntentFilter;

.field private as:Landroid/content/IntentFilter;

.field private at:Landroid/content/BroadcastReceiver;

.field private au:Landroid/content/BroadcastReceiver;

.field private av:Z

.field private b:Landroid/view/View;

.field private c:Lcom/estrongs/android/ui/theme/at;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->v()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    const v0, 0x7f0805a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->a:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/estrongs/android/view/fp;->c(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->t()V

    :cond_4
    iput-boolean v2, p0, Lcom/estrongs/android/view/fp;->a:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/fp;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/fp;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/fp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/fp;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ao:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020346

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const v1, 0x7f080326

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->am:Landroid/widget/TextView;

    const v1, 0x7f080321

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "newState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/estrongs/android/view/fp;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ao:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020346

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->am:Landroid/widget/TextView;

    const v1, 0x7f08031f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/fp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->v()Z

    move-result v0

    return v0
.end method

.method private c(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->V()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->W()I

    move-result v5

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v2

    iget-object v7, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/view/fu;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/fu;-><init>(Lcom/estrongs/android/view/fp;Lcom/estrongs/android/ftp/k;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v7, v0}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/view/fp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/fp;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WIFI_AP_STATE_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-ne p1, v0, :cond_1

    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/fp;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->c(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->t()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->t()V

    return-void
.end method

.method private s()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/view/ft;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ft;-><init>(Lcom/estrongs/android/view/fp;Lcom/estrongs/android/ftp/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private t()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/fp;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ao:Landroid/widget/TextView;

    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020345

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->am:Landroid/widget/TextView;

    const v1, 0x7f08031f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const v0, 0x7f08066e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private v()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->aq:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "ESFtpServer"

    const-string v1, "Failed to closeFtpServer - context is null."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0805a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/view/fp;->av:Z

    if-eqz v0, :cond_3

    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/fp;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->O:Lcom/estrongs/android/view/dw;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "remote://"

    return-object v0
.end method

.method protected i()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->h:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020345

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->ao:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e03f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->am:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->am:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->c:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e03f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->an:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/fq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/fq;-><init>(Lcom/estrongs/android/view/fp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->b:Landroid/view/View;

    const v1, 0x7f0e03f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->al:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/view/fr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fr;-><init>(Lcom/estrongs/android/view/fp;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->at:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->at:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/view/fp;->ar:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Lcom/estrongs/android/view/fs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fs;-><init>(Lcom/estrongs/android/view/fp;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fp;->au:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WIFI_AP_STATE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/fp;->ap:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/android/view/fp;->as:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->as:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->au:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/view/fp;->as:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->s()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i_()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->at:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/fp;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    invoke-direct {p0}, Lcom/estrongs/android/view/fp;->s()V

    return-void
.end method
