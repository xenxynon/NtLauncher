.class public final Lcom/nothing/cardwidget/pedometer/PedometerContainer;
.super Lcom/nothing/cardwidget/RemoteServiceView;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final gson:Ll1/e;

.field private final handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

.field private isResumed:Z

.field private lastMonthStepsData:Lcom/nothing/cardwidget/pedometer/MonthStepsData;

.field private noDataDes:Ljava/lang/String;

.field private noPermissionDes:Ljava/lang/String;

.field private pedometerAbnormalTxt:Landroid/widget/TextView;

.field private pedometerAnimIv:Landroid/widget/ImageView;

.field private pedometerPageIndicator:Lcom/nothing/cardwidget/NTPageIndicatorDot;

.field private pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

.field private pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

.field private reachGoalAnimRes:Landroid/graphics/drawable/Drawable;

.field private walkingAnimRes:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "context"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    const-string v0, "PedometerContainer"

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->TAG:Ljava/lang/String;

    new-instance v0, Ll1/e;

    invoke-direct {v0}, Ll1/e;-><init>()V

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->gson:Ll1/e;

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    new-instance v1, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    new-array v2, v0, [Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    new-instance v3, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    invoke-static {}, Lcom/nothing/cardwidget/pedometer/UtilsKt;->getTodayTimeMillis()J

    move-result-wide v4

    const/4 v6, -0x1

    const/4 v10, 0x0

    invoke-direct {v3, v4, v5, v6, v10}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;-><init>(JII)V

    aput-object v3, v2, v10

    invoke-static {v2}, Lo5/j;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nothing/cardwidget/pedometer/MonthStepsData;-><init>(Ljava/util/List;)V

    iput-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->lastMonthStepsData:Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    const/16 v2, 0xe

    new-array v2, v2, [Ln5/k;

    const-string v3, "leftCircleColor"

    invoke-virtual {v1, v8, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->leftCircleColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "rightDotColor"

    invoke-virtual {v1, v8, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->rightDotColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "human"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->human:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "goalNotReachedColor"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->goalNotReachedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v0, "goalReachedColor"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->goalReachedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const-string v0, "currentDayColor"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->currentDayColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const-string v0, "weeklyDesColor"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->weeklyDesColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    const-string v0, "totalTodayDes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->totalTodayDes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const-string v0, "sevenDayAverageDes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->sevenDayAverageDes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    const-string v0, "commonTextColor"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->commonTextColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const-string v0, "walkingAnimRes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->walkingAnimRes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v2, v3

    const-string v0, "reachGoalAnimRes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->reachGoalAnimRes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v2, v3

    const-string v0, "noPermissionDes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->noPermissionDes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v2, v3

    const-string v0, "noDataDes"

    invoke-virtual {v1, v8, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->noDataDes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v2, v3

    invoke-static {v2}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move v4, v6

    move v5, v4

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v10

    move-object/from16 v16, v0

    sget v0, Lcom/nothing/cardwidget/R$attr;->leftCircleColor:I

    if-ne v10, v0, :cond_0

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0, v8, v9, v4}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v4

    :goto_1
    sget-object v0, Ln5/t;->a:Ln5/t;

    goto/16 :goto_2

    :cond_0
    sget v0, Lcom/nothing/cardwidget/R$attr;->rightDotColor:I

    if-ne v10, v0, :cond_1

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v8, v9, v5}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v5

    goto :goto_1

    :cond_1
    sget v0, Lcom/nothing/cardwidget/R$attr;->human:I

    if-ne v10, v0, :cond_2

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v8, v9, v1}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_1

    :cond_2
    sget v0, Lcom/nothing/cardwidget/R$attr;->goalNotReachedColor:I

    if-ne v10, v0, :cond_3

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v11

    goto :goto_1

    :cond_3
    sget v0, Lcom/nothing/cardwidget/R$attr;->goalReachedColor:I

    if-ne v10, v0, :cond_4

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v12

    goto :goto_1

    :cond_4
    sget v0, Lcom/nothing/cardwidget/R$attr;->currentDayColor:I

    if-ne v10, v0, :cond_5

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v13

    goto :goto_1

    :cond_5
    sget v0, Lcom/nothing/cardwidget/R$attr;->weeklyDesColor:I

    if-ne v10, v0, :cond_6

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v14

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/nothing/cardwidget/R$attr;->totalTodayDes:I

    if-ne v10, v0, :cond_7

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v8, v9, v2}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/nothing/cardwidget/R$attr;->sevenDayAverageDes:I

    if-ne v10, v0, :cond_8

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v8, v9, v3}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_8
    sget v0, Lcom/nothing/cardwidget/R$attr;->commonTextColor:I

    if-ne v10, v0, :cond_9

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v8, v9, v6}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v6

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/nothing/cardwidget/R$attr;->walkingAnimRes:I

    if-ne v10, v0, :cond_a

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->walkingAnimRes:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_a
    sget v0, Lcom/nothing/cardwidget/R$attr;->reachGoalAnimRes:I

    if-ne v10, v0, :cond_b

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->reachGoalAnimRes:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_b
    sget v0, Lcom/nothing/cardwidget/R$attr;->noPermissionDes:I

    if-ne v10, v0, :cond_c

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->noPermissionDes:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    sget v0, Lcom/nothing/cardwidget/R$attr;->noDataDes:I

    if-ne v10, v0, :cond_d

    if-eqz v9, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->noDataDes:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    :goto_2
    move-object/from16 v0, v16

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v9, Lcom/nothing/cardwidget/R$layout;->pedometer_container:I

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v9, Lcom/nothing/cardwidget/R$id;->pedometer_viewpager:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v15, "view.findViewById(R.id.pedometer_viewpager)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v10, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    sget v10, Lcom/nothing/cardwidget/R$id;->pedometer_anim_iv:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v15, "view.findViewById(R.id.pedometer_anim_iv)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    sget v10, Lcom/nothing/cardwidget/R$id;->abnormal_txt:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v15, "view.findViewById(R.id.abnormal_txt)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    new-instance v15, Lcom/nothing/cardwidget/pedometer/a;

    invoke-direct {v15, v8}, Lcom/nothing/cardwidget/pedometer/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-direct {v8}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;-><init>()V

    iput-object v8, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v8, v4}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setLeftCircleColor(I)V

    iget-object v4, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setRightDotColor(I)V

    iget-object v4, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v4, v1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setBgHuman(Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v6}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setCommonTextColor(I)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v11}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setGoalNotReachedColor(I)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v12}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setGoalReachedColor(I)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v13}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setCurrentDayColor(I)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v14}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setWeeklyDesColor(I)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setTotalTodayDesStr(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v3}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setSevenDayAverageDesStr(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Landroidx/viewpager2/widget/MarginPageTransformer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/nothing/cardwidget/pedometer/PedometerContainer$3;

    invoke-direct {v2, v7}, Lcom/nothing/cardwidget/pedometer/PedometerContainer$3;-><init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    sget v1, Lcom/nothing/cardwidget/R$id;->pedometer_page_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.pedometer_page_indicator)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/nothing/cardwidget/NTPageIndicatorDot;

    iput-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerPageIndicator:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-virtual {v1, v9}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->setPageListener(I)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-direct {v1, v7, v0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;-><init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$lambda-16(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.nothing.action.PEDOMETER_WIDGET_CONFIGURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->_init_$lambda-16(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getPedometerAnimIv$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getPedometerViewpager$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$isResumed$p(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    return p0
.end method

.method public static synthetic b(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->updateWalkingData$lambda-21(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V

    return-void
.end method

.method private final getMonthStepsData(Ljava/lang/String;)Lcom/nothing/cardwidget/pedometer/MonthStepsData;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->gson:Ll1/e;

    const-class v1, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    invoke-virtual {v0, p1, v1}, Ll1/e;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    const-string v0, "monthStepsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->lastMonthStepsData:Lcom/nothing/cardwidget/pedometer/MonthStepsData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse Json for MonthStepsData e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->lastMonthStepsData:Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final maybeUpdateWalkingPercent(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getWalkingData()Lcom/nothing/cardwidget/pedometer/WalkingData;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ltz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setWalkingPercent(I)V

    :cond_0
    const/4 p2, 0x1

    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setAnimateValid(Z)V

    invoke-virtual {v0, p2}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setJustWalking(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->updateWalkingData()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/WalkingData;->getWalkingPercent()I

    move-result p3

    const/16 v1, 0x64

    if-lt p3, v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setRefreshProgress(Z)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {p3}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getPedometerDataList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    if-ge p3, v1, :cond_3

    return-void

    :cond_3
    iget-boolean p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    if-eqz p3, :cond_6

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p2}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setRefreshProgress(Z)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->updateWalkingData()V

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic maybeUpdateWalkingPercent$default(Lcom/nothing/cardwidget/pedometer/PedometerContainer;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->maybeUpdateWalkingPercent(IIZ)V

    return-void
.end method

.method private final showAbnormal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->noPermissionDes:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->noDataDes:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showAnim(I)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->reachGoalAnimRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->walkingAnimRes:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->reachGoalAnimRes:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->walkingAnimRes:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v2, "handler.obtainMessage()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    const-wide/16 v1, 0x9f6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private final showNormal(ZIIIILjava/lang/String;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/nothing/cardwidget/pedometer/WalkingData;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, v10

    move v3, p3

    move v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/nothing/cardwidget/pedometer/WalkingData;-><init>(IZZIZILkotlin/jvm/internal/i;)V

    iget-object v2, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v2}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getPedometerDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/nothing/cardwidget/pedometer/PedometerData;

    instance-of v4, v4, Lcom/nothing/cardwidget/pedometer/WalkingData;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/nothing/cardwidget/pedometer/PedometerData;

    if-eqz v3, :cond_3

    check-cast v3, Lcom/nothing/cardwidget/pedometer/WalkingData;

    invoke-virtual {v3}, Lcom/nothing/cardwidget/pedometer/WalkingData;->getCurrentProgress()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/nothing/cardwidget/pedometer/WalkingData;->setCurrentProgress(I)V

    :cond_3
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/nothing/cardwidget/pedometer/DigitalData;

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct {v2, p2, p3, p4, v6}, Lcom/nothing/cardwidget/pedometer/DigitalData;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->getMonthStepsData(Ljava/lang/String;)Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->updateAllData(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v2}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    iget-object v2, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->lastMonthStepsData:Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->updateDataExcludeMonthStepsList(Ljava/util/List;)V

    :goto_3
    iget-object v0, v0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerPageIndicator:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->refreshDotIfItemCountChanged()V

    return-void
.end method

.method private final updateWalkingData()V
    .locals 2

    iget-boolean v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/nothing/cardwidget/pedometer/b;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/pedometer/b;-><init>(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final updateWalkingData$lambda-21(Lcom/nothing/cardwidget/pedometer/PedometerContainer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getWalkingViewHolder()Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;->bindData()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onDataChanged(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_page_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "steps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "today_percent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "seven_day_average"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "seven_day_percent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "month_steps_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "key_just_walking"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataChanged, stepCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", todayPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sevenDayAverage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sevenDayPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pageState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isJustWalking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", monthStepsListJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1, v5, v3}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->maybeUpdateWalkingPercent(IIZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->showAbnormal(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->showAbnormal(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->showAnim(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->showAnim(I)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->showNormal(ZIIIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x432c0000    # 172.0f

    div-float/2addr p1, p2

    iget-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAbnormalTxt:Landroid/widget/TextView;

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float/2addr p1, p4

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3f0ee23c

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3e26b29b

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setWidthRatio(F)V

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewPagerAdapter:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->setHeightRatio(F)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/nothing/cardwidget/RemoteServiceView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    iget-object p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->isResumed:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->TAG:Ljava/lang/String;

    const-string v1, "onVisibilityChanged, animation is interrupted, stop animation..."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerViewpager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->pedometerAnimIv:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerContainer;->handler:Lcom/nothing/cardwidget/pedometer/PedometerContainer$handler$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
