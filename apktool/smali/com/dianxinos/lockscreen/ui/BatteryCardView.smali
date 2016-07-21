.class public Lcom/dianxinos/lockscreen/ui/BatteryCardView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/dianxinos/lockscreen/c/d;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/content/Context;

.field private c:Lcom/dianxinos/lockscreen/ui/BatteryPercentView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/dianxinos/lockscreen/ui/a;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/a;-><init>(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->h:I

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    sget v0, Lcom/dianxinos/lockscreen/ad;->lock_screen_battery_info_layout:I

    invoke-static {p1, v0, p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 2

    sget v0, Lcom/dianxinos/lockscreen/ac;->battery_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->c:Lcom/dianxinos/lockscreen/ui/BatteryPercentView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->time_lable:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->d:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->date_lable:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->getWeekDayMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->battery_percent_text:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->e:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->battery_percent_sign:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/dianxinos/lockscreen/ui/b;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/b;-><init>(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c/a;->a()Lcom/dianxinos/lockscreen/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a(Lcom/dianxinos/lockscreen/c/c;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->g:Ljava/lang/String;

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "DisplayCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery card refresh clock time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWeekDayMonth()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    const v3, 0x10010

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "DisplayCard"

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dianxinos/lockscreen/c/a;->a(Lcom/dianxinos/lockscreen/c/d;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->d()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/dianxinos/lockscreen/c/c;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->h:I

    iget v1, p1, Lcom/dianxinos/lockscreen/c/c;->e:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->c:Lcom/dianxinos/lockscreen/ui/BatteryPercentView;

    iget v1, p1, Lcom/dianxinos/lockscreen/c/c;->e:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->setPercent(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->e:Landroid/widget/TextView;

    iget v1, p1, Lcom/dianxinos/lockscreen/c/c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery card refresh battery per:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/dianxinos/lockscreen/c/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget v0, p1, Lcom/dianxinos/lockscreen/c/c;->e:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->c:Lcom/dianxinos/lockscreen/ui/BatteryPercentView;

    invoke-virtual {v0, v3}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->setPercent(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->e:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dianxinos/lockscreen/c/a;->b(Lcom/dianxinos/lockscreen/c/d;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->c()V

    return-void
.end method
