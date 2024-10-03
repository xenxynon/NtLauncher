.class public final Lcom/nothing/cardwidget/battery/view/BatteryContainerView;
.super Lcom/nothing/cardwidget/RemoteServiceView;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/battery/timer/ITimerListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/view/BatteryContainerView$WhenMappings;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animEnterBottomLeft:Landroid/animation/Animator;

.field private animEnterBottomRight:Landroid/animation/Animator;

.field private animEnterTopRight:Landroid/animation/Animator;

.field private animExitBottomLeft:Landroid/animation/Animator;

.field private animExitBottomRight:Landroid/animation/Animator;

.field private animExitTopRight:Landroid/animation/Animator;

.field private final attributeHelper$delegate:Ln5/e;

.field private batteryContainer:Landroid/widget/LinearLayout;

.field private batteryLevelTv:Landroid/widget/TextView;

.field private batteryPermissionTv:Landroid/widget/TextView;

.field private batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field private batteryViewBottomLeftInfo:Lm2/a;

.field private batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field private batteryViewBottomRightInfo:Lm2/a;

.field private batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field private batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field private batteryViewTopRightInfo:Lm2/a;

.field private clickListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ln5/k<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private permissionClickListener:Landroid/view/View$OnClickListener;

.field private tempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private widgetId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, "BatteryContainerView"

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    sget-object p3, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;->INSTANCE:Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;

    invoke-static {p3}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p3

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->attributeHelper$delegate:Ln5/e;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getRemoteResource(Landroid/util/AttributeSet;Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/nothing/cardwidget/R$layout;->battery_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p2, "this"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->initView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->initView$lambda-10$lambda-9(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener$lambda-52$lambda-51(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final clearOutDatedData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getBatteryStateInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "BatteryStateManager.batteryStateInfo.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/a;

    invoke-direct {p0, v4}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lo5/j;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getWidgetIdFromUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->widgetId:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v4, v3}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->clearBatteryState(Ljava/lang/String;)V

    sget-object v4, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-virtual {v4, v3}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->stopTimer(Ljava/lang/String;)V

    :cond_1
    sget-object v3, Ln5/t;->a:Ln5/t;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->clearOldCachedBatteryInfo(Ljava/util/Set;)V

    return-void
.end method

.method private final crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p5}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    if-eqz p3, :cond_3

    new-instance p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;

    invoke-direct {p0, p1, p5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$1;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;)V

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    if-eqz p2, :cond_4

    new-instance p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$2;

    invoke-direct {p0, p1, p5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$crossFadeAnimation$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;)V

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    if-nez p4, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual {p1, p5}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    if-nez p5, :cond_6

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, p5}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private final deviceOnReceived(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    invoke-virtual {v0}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->NOTHINGX_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerViewKt;->isSingleBattery(Lm2/a;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->nothingDeviceOnReceived(Lm2/a;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->FASTPAIR_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerViewKt;->isSingleBattery(Lm2/a;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lm2/a;

    invoke-virtual {v5}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v2, v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->earProductsOnCombine(Lm2/a;)Lm2/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->updateUI()V

    return-void
.end method

.method private final deviceStateOnHandle(Lm2/a;)Ljava/util/ArrayList;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm2/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lm2/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCurrentHandleBatteryInfo()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->queryBatteryState(Lm2/a;Ljava/lang/String;)Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    move-result-object v3

    sget-object v4, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_4

    const/4 v8, -0x1

    const-wide/16 v9, 0x7530

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_0

    new-array v0, v7, [Lm2/a;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->earProductsOnCombine(Lm2/a;)Lm2/a;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    sget-object v3, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-direct/range {p0 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10, v0}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->startHandleTimer(Ljava/lang/String;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V

    new-array v0, v6, [Lm2/a;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->earProductsOnCombine(Lm2/a;)Lm2/a;

    move-result-object v3

    aput-object v3, v0, v5

    new-instance v3, Lm2/a;

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCaseBatteryInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->e()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x3800

    const/16 v27, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v27}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object v3, v0, v7

    invoke-static {v0}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->OUT_OF_CASE_COUNTING:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    invoke-virtual {v2, v3, v4}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V

    sget-object v3, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-direct/range {p0 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10, v0}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->startHandleTimer(Ljava/lang/String;JLcom/nothing/cardwidget/battery/timer/ITimerListener;)V

    new-array v0, v6, [Lm2/a;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->earProductsOnCombine(Lm2/a;)Lm2/a;

    move-result-object v3

    aput-object v3, v0, v5

    new-instance v3, Lm2/a;

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCaseBatteryInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->e()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x3800

    const/16 v27, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v27}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object v3, v0, v7

    invoke-static {v0}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nothing/cardwidget/battery/entity/BatteryStatus;->CHARGING:Lcom/nothing/cardwidget/battery/entity/BatteryStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Lm2/a;

    new-instance v3, Lm2/a;

    move-object v8, v3

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->k()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x3800

    const/16 v26, 0x0

    move-object v13, v0

    invoke-direct/range {v8 .. v26}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object v3, v2, v5

    new-instance v3, Lm2/a;

    move-object v8, v3

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Lm2/a;->n()Ljava/util/List;

    move-result-object v24

    invoke-direct/range {v8 .. v26}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object v3, v2, v7

    new-instance v0, Lm2/a;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v31

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v34

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v35

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v36

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v38

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->e()Ljava/util/List;

    move-result-object v43

    const/16 v44, 0x3800

    const/16 v45, 0x0

    invoke-direct/range {v27 .. v45}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object v0, v2, v6

    invoke-static {v2}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final getAddressFromUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "+"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh6/l;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo5/j;->I(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->attributeHelper$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/battery/AttributeHelper;

    return-object p0
.end method

.method private final getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;+TE;>;TE;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private final getUniqueId(Lm2/a;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->widgetId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getWidgetIdFromUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "+"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh6/l;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo5/j;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final initView(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_view_top_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_view_top_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_view_bottom_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_view_bottom_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    sget v0, Lcom/nothing/cardwidget/R$id;->tv_battery_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getBatteryLevelTvColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    sget v0, Lcom/nothing/cardwidget/R$id;->tv_battery_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPermissionStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPermissionTvColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    new-instance v0, Lcom/nothing/cardwidget/battery/view/c;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/battery/view/c;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryEnter()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move-object p1, v1

    :goto_4
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterTopRight:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryExit()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move-object p1, v1

    :goto_5
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitTopRight:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryEnter()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    move-object p1, v1

    :goto_6
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomLeft:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryExit()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    move-object p1, v1

    :goto_7
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomLeft:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryEnter()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    move-object p1, v1

    :goto_8
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomRight:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAnimBatteryExit()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object v1, p1

    :cond_c
    iput-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomRight:Landroid/animation/Animator;

    return-void
.end method

.method private static final initView$lambda-10$lambda-9(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->permissionClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final nothingDeviceOnReceived(Lm2/a;)V
    .locals 6

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCurrentHandleBatteryInfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lm2/a;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCaseBatteryInfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lm2/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->INIT_IN_CASE:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    invoke-virtual {v0, v1, v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V

    sget-object v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->stopTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->queryBatteryState(Lm2/a;Ljava/lang/String;)Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    move-result-object v1

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->INIT_IN_CASE:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getUniqueId(Lm2/a;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->OUT_OF_CASE:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    invoke-virtual {v0, v1, v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lm2/a;

    invoke-virtual {v4}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->deviceStateOnHandle(Lm2/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final setAllBatteryClickListener(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo5/j;->K(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lo5/j;->K(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm2/a;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lo5/j;->K(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const/4 v6, 0x3

    invoke-static {p1, v6}, Lo5/j;->K(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm2/a;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    iget-object v8, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    invoke-direct {p0, v8, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v2, :cond_10

    if-eq p1, v4, :cond_c

    if-eq p1, v6, :cond_8

    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_7

    invoke-direct {p0, p1, v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_14

    invoke-direct {p0, p1, v7}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_a

    invoke-direct {p0, p1, v3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_b

    invoke-direct {p0, p1, v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_14

    invoke-direct {p0, p1, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_d

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_e

    invoke-direct {p0, p1, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_f

    invoke-direct {p0, p1, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_14

    invoke-direct {p0, p1, v3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_11

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_11
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_12

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_13

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_13
    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p1, :cond_14

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V

    :cond_14
    :goto_4
    return-void
.end method

.method private final setBatteryClickListener(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/nothing/cardwidget/battery/view/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/nothing/cardwidget/battery/view/d;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final setBatteryClickListener$lambda-52$lambda-51(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$batteryView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->clickListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    new-instance p3, Ln5/k;

    invoke-direct {p3, p1, p2}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final showBatteryUI()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private final showPermissionUI()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private final updateUI()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    new-instance v2, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$compareByDescending$1;

    invoke-direct {v2}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$compareByDescending$1;-><init>()V

    new-instance v3, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$thenByDescending$1;

    invoke-direct {v3, v2}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$thenByDescending$2;

    invoke-direct {v2, v3}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$updateUI$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, v2}, Lo5/j;->Y(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUI, tempList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_11

    const-string v9, ""

    const/4 v10, 0x2

    if-eq v0, v10, :cond_b

    const/4 v11, 0x3

    if-eq v0, v11, :cond_5

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_0
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterTopRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitTopRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_1
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomLeft:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomLeft:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_2
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_3
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_6
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterTopRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitTopRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_7
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomLeft:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomLeft:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_8
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_9
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/a;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_c
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterTopRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitTopRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_d
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomLeft:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomLeft:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_e
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lm2/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_f
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iput-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iput-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Lm2/a;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_12
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterTopRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitTopRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_13
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomLeft:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomLeft:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_14
    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animEnterBottomRight:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->animExitBottomRight:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/animation/Animator;Landroid/animation/Animator;Lm2/a;Lm2/a;)V

    :cond_15
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/a;

    invoke-virtual {v2}, Lm2/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iput-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRightInfo:Lm2/a;

    iput-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeftInfo:Lm2/a;

    :goto_5
    iput-object v7, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRightInfo:Lm2/a;

    :goto_6
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->setAllBatteryClickListener(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onDataChanged(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public onTicker(Ljava/lang/String;)V
    .locals 6

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTicker uniqueId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getBatteryStateInfo()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->OUT_OF_CASE_COUNTING:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    invoke-direct {p0, v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getKeysByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->getCurrentHandleBatteryInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->getAddressFromUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->NORMAL:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    invoke-virtual {v0, p1, v2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V

    sget-object v0, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->INSTANCE:Lcom/nothing/cardwidget/battery/timer/TimerFactory;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/battery/timer/TimerFactory;->stopTimer(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lm2/a;

    invoke-virtual {v4}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const-string p1, ""

    invoke-static {v1, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->deviceStateOnHandle(Lm2/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->updateUI()V

    return-void
.end method

.method public final setBatteryDisplayRatio(F)V
    .locals 12

    sget-object v0, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, La6/a;->b(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, La6/a;->b(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v5, v2}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    const-string v5, "layout_marginStart"

    const-string v6, "layout_marginTop"

    const-string v7, "layout_marginBottom"

    const-string v8, "layout_marginEnd"

    if-eqz v2, :cond_0

    sget-object v9, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v2, v10, v11}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v9, v2, v6, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v5, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v8, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v7, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateRatio(F)V

    :cond_0
    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewTopRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v2, :cond_1

    sget-object v9, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v2, v10, v11}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v9, v2, v6, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v5, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v8, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v7, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateRatio(F)V

    :cond_1
    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomLeft:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v2, :cond_2

    sget-object v9, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v2, v10, v11}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v9, v2, v6, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v5, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v8, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v7, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateRatio(F)V

    :cond_2
    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryViewBottomRight:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v2, :cond_3

    sget-object v9, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v2, v10, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v9, v2, v6, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v5, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v8, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v9, v2, v7, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateRatio(F)V

    :cond_3
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->batteryLevelTv:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-virtual {p1, p0, v8, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {p1, p0, v7, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public final setBatteryInfo(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "batteryInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->clearOutDatedData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    iget-object v2, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->deviceOnReceived(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setBatteryWidgetId(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->widgetId:Ljava/lang/Integer;

    return-void
.end method

.method public final setClickEventConsumer(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ln5/k<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->clickListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->permissionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setPermission(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatteryViewState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->showBatteryUI()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->showPermissionUI()V

    :goto_0
    return-void
.end method
