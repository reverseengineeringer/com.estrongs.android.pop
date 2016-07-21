.class public abstract Lcom/baidu/resultcard/view/BaseResultCardView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected bannerId:I

.field protected buttonId:I

.field protected contentId:I

.field protected iconId:I

.field protected mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected pkgName:Ljava/lang/String;

.field protected titleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->bannerId:I

    iput v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->titleId:I

    iput v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->contentId:I

    iput v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->iconId:I

    iput v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->buttonId:I

    iput-object p1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/baidu/scenery/R$layout;->common_card_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private initCardView()V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/resultcard/view/BaseResultCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->bannerId:I

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_banner:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->bannerId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->titleId:I

    if-eqz v0, :cond_1

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_title:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    iget v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->titleId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->buttonId:I

    if-eqz v0, :cond_2

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_button:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    iget v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->buttonId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->iconId:I

    if-eqz v0, :cond_3

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_button_icon:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->iconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_adview:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_layout:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startApplication(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "com.dianxinos.dxbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.action.DIAGNOSTIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.dianxinos.optimizer.duplay"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extra.autoscan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startWirelessActivity(Landroid/content/Context;)V
    .locals 6

    const/high16 v2, 0x10000000

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Settings$DataUsageSummaryActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected getArgs()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/resultcard/view/BaseResultCardView;->initCardView()V

    invoke-virtual {p0}, Lcom/baidu/resultcard/view/BaseResultCardView;->getArgs()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "..."

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->setArgContent([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x2

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "..."

    aput-object v1, v0, v2

    const-string v1, "..."

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->setArgContent([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/baidu/resultcard/view/BaseResultCardView;->setArgContent([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    sget-object v3, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/baidu/resultcard/view/BaseResultCardView;->startApplication(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    sget-object v3, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_COMMON:Lcom/baidu/resultcard/CardLibrary$CardType;

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/baidu/resultcard/report/ResultCardReport;->reportCommonClick(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/resultcard/CardPreferences;->setCardClickTime(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/resultcard/view/BaseResultCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    const-string v4, "resultsdk"

    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->getBdct()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/scenery/dispatcher/RuleUtils;->jumpToInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/resultcard/view/BaseResultCardView;->startWirelessActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    sget-object v3, Lcom/baidu/resultcard/CardLibrary$CardType;->CARD_MAIN:Lcom/baidu/resultcard/CardLibrary$CardType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->pkgName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/baidu/resultcard/report/ResultCardReport;->reportMainCardClick(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected varargs setArgContent([Ljava/lang/Object;)V
    .locals 3

    sget v0, Lcom/baidu/scenery/R$id;->scenery_card_content:I

    invoke-virtual {p0, v0}, Lcom/baidu/resultcard/view/BaseResultCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    invoke-virtual {p0}, Lcom/baidu/resultcard/view/BaseResultCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->contentId:I

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCardOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCardType(Lcom/baidu/resultcard/CardLibrary$CardType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/view/BaseResultCardView;->mCardType:Lcom/baidu/resultcard/CardLibrary$CardType;

    return-void
.end method

.method public varargs setContentParam([Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;->setArgContent([Ljava/lang/Object;)V

    return-void
.end method
