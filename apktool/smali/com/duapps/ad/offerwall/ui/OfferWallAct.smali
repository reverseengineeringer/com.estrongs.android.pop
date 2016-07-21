.class public Lcom/duapps/ad/offerwall/ui/OfferWallAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/duapps/ad/offerwall/ui/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/duapps/ad/offerwall/a;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/duapps/ad/base/k;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/duapps/ad/offerwall/ui/g;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Lcom/duapps/ad/stats/c;

.field private w:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->q:Ljava/util/ArrayList;

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->r:I

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->s:I

    new-instance v0, Lcom/duapps/ad/offerwall/ui/f;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/ui/f;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->w:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;I)I
    .locals 0

    iput p1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->r:I

    return p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/stats/c;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->v:Lcom/duapps/ad/stats/c;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/stats/c;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->v:Lcom/duapps/ad/stats/c;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->r:I

    return v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-static {v1}, Lcom/duapps/ad/base/ap;->a(I)V

    const-string v1, "display_home_as_up"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Z

    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Ljava/lang/String;

    const-string v1, "title_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Ljava/lang/String;

    const-string v1, "desc_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Ljava/lang/String;

    const-string v1, "show_feedback"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f:Z

    const-string v1, "enable_facebook"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be put pid in bundle data, Otherwise OfferWall cannot be work."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->s:I

    return v0
.end method

.method private e()V
    .locals 4

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_container:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->o:Landroid/widget/LinearLayout;

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_offer_wall_lv:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/e;->duapps_ad_offer_wall_load_more_footer:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/ag;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->u:Ljava/lang/String;

    new-instance v0, Lcom/duapps/ad/offerwall/ui/g;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->q:Ljava/util/ArrayList;

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-direct {v0, p0, v1, v2}, Lcom/duapps/ad/offerwall/ui/g;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_empty:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/a/a/d;->v2_toolbox_emptyview_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->l:Landroid/view/View;

    sget v1, Lcom/dianxinos/a/a/d;->v2_empty_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->n:Landroid/widget/Button;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/duapps/ad/offerwall/ui/b;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/b;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/c;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/c;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/d;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/d;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f()V

    return-void
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/PullUpForMore;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    return-object v0
.end method

.method private f()V
    .locals 2

    const-string v0, "^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/a;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic h(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->setFooterViewOptions(I)V

    return-void
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duapps/ad/base/k;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/base/k;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/e;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/e;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/k;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/k;->a(I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->show()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/g;->getCount()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->s:I

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    sget v0, Lcom/dianxinos/a/a/f;->duapps_ad_loading:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->setFooterViewOptions(I)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->b()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b()V

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/b;->f(Landroid/content/Context;I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->setFooterViewOptions(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->setFooterViewOptions(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->dismiss()V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/g;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/g;->getCount()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->s:I

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->b()V

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/b;->g(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->k:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->setFooterViewOptions(I)V

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/b;->d(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->setRequestedOrientation(I)V

    sget v0, Lcom/dianxinos/a/a/e;->duapps_ad_offer_wall_layout:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->setContentView(I)V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d()V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e()V

    new-instance v0, Lcom/duapps/ad/offerwall/a;

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-direct {v0, v1, p0, p0}, Lcom/duapps/ad/offerwall/a;-><init>(ILcom/duapps/ad/offerwall/ui/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->a()V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:Lcom/duapps/ad/base/k;

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->c()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->p:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/g;->a()V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h()V

    invoke-static {p0}, Lcom/duapps/ad/base/ap;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->t:I

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/b;->e(Landroid/content/Context;I)V

    return-void
.end method
