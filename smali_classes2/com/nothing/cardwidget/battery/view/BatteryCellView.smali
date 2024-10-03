.class public final Lcom/nothing/cardwidget/battery/view/BatteryCellView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/view/BatteryCellView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/battery/view/BatteryCellView$Companion;

.field private static final TAG:Ljava/lang/String; = "BatteryCellView"


# instance fields
.field private final animDeviceEnter$delegate:Ln5/e;

.field private final animDeviceExit$delegate:Ln5/e;

.field private final animIndicatorEnter$delegate:Ln5/e;

.field private final animIndicatorExit$delegate:Ln5/e;

.field private animatorJob:Li6/v1;

.field private attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

.field private batteryAodDeviceIv:Landroid/widget/ImageView;

.field private batteryAodIndicatorIv:Landroid/widget/ImageView;

.field private batteryCellAodView:Landroid/widget/RelativeLayout;

.field private batteryCellNormalView:Landroid/widget/RelativeLayout;

.field private batteryDeviceIv:Landroid/widget/ImageView;

.field private batteryIndicatorIv:Landroid/widget/ImageView;

.field private batteryLevelIv:Landroid/widget/ImageView;

.field private batteryView:Landroid/widget/RelativeLayout;

.field private lastBatteryInfo:Lm2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->Companion:Lcom/nothing/cardwidget/battery/view/BatteryCellView$Companion;

    return-void
.end method

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animIndicatorEnter$2;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animIndicatorEnter$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animIndicatorEnter$delegate:Ln5/e;

    new-instance p2, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animDeviceEnter$2;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animDeviceEnter$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animDeviceEnter$delegate:Ln5/e;

    new-instance p2, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animIndicatorExit$2;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animIndicatorExit$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animIndicatorExit$delegate:Ln5/e;

    new-instance p2, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animDeviceExit$2;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$animDeviceExit$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animDeviceExit$delegate:Ln5/e;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/nothing/cardwidget/R$layout;->battery_cell:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p2, "this"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->initView(Landroid/view/View;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryIndicator$lambda-17$lambda-16$lambda-15(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    return-void
.end method

.method public static final synthetic access$getAttrsHelper$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Lcom/nothing/cardwidget/battery/AttributeHelper;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    return-object p0
.end method

.method public static final synthetic access$getBatteryDeviceIv$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getBatteryIndicatorIv$p(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryIndicatorIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$setBatteryIndicator(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/widget/ImageView;Lm2/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryIndicator(Landroid/widget/ImageView;Lm2/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryIndicator$lambda-17$lambda-14$lambda-13(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final cancelAnimator(Landroid/animation/Animator;)V
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private final getAnimDeviceEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animDeviceEnter$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    return-object p0
.end method

.method private final getAnimDeviceExit()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animDeviceExit$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    return-object p0
.end method

.method private final getAnimIndicatorEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animIndicatorEnter$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    return-object p0
.end method

.method private final getAnimIndicatorExit()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animIndicatorExit$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    return-object p0
.end method

.method private final hideView()V
    .locals 1

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryView:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->rv_battery_cell:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellNormalView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_battery_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryLevelIv:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_battery_device:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_battery_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryIndicatorIv:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->rv_aod_battery_cell:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellAodView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_aod_battery_device:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryAodDeviceIv:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_aod_battery_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryAodIndicatorIv:Landroid/widget/ImageView;

    return-void
.end method

.method private final parseIndicator(Lm2/a;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/nothing/cardwidget/battery/entity/BatteryStatus;->CHARGING:Lcom/nothing/cardwidget/battery/entity/BatteryStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getChargingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nothing/cardwidget/battery/entity/BatteryStatus;->POWER_SAVE:Lcom/nothing/cardwidget/battery/entity/BatteryStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPowerSaveDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final parseProgressbarColor(Lm2/a;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryConfig;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryConfig;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/battery/BatteryConfig;->isLowBattery(Lm2/a;)Z

    move-result p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getLowBatteryLevelColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getNormalLevelColor()Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final setAodBatteryIndicator(Landroid/widget/ImageView;Lm2/a;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseIndicator(Lm2/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final setBatteryDeviceIcon(Landroid/widget/ImageView;Lm2/a;)V
    .locals 3

    sget-object v0, Lcom/nothing/cardwidget/battery/BatteryConfig;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryConfig;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1, p0}, Lcom/nothing/cardwidget/battery/BatteryConfig;->getDeviceIcon(Lm2/a;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setBatteryIndicator(Landroid/widget/ImageView;Lm2/a;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseIndicator(Lm2/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const/high16 p1, -0x3e500000    # -22.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorEnter()Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorEnter()Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v1, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$1$1;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance p2, Lcom/nothing/cardwidget/battery/view/b;

    invoke-direct {p2, p0, v0}, Lcom/nothing/cardwidget/battery/view/b;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->lastBatteryInfo:Lm2/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lm2/a;->i()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Lm2/a;->i()Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorExit()Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_6
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorExit()Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$2$1;

    invoke-direct {v0, p1, p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$setBatteryIndicator$1$2$1;-><init>(Landroid/widget/ImageView;Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    new-instance p2, Lcom/nothing/cardwidget/battery/view/a;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/battery/view/a;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V

    goto :goto_1

    :cond_8
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    goto :goto_0

    :goto_3
    return-void
.end method

.method private static final setBatteryIndicator$lambda-17$lambda-14$lambda-13(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorExit()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimDeviceExit()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorEnter()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimDeviceEnter()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryIndicatorIv:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private static final setBatteryIndicator$lambda-17$lambda-16$lambda-15(Lcom/nothing/cardwidget/battery/view/BatteryCellView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorEnter()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimDeviceEnter()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimIndicatorExit()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->getAnimDeviceExit()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private final setBatteryLevel(Landroid/widget/ImageView;Lm2/a;)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;

    :cond_1
    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseProgressbarColor(Lm2/a;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;->setColor(I)V

    :cond_2
    invoke-virtual {p2}, Lm2/a;->l()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;->setBatteryLevel(I)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;-><init>()V

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseProgressbarColor(Lm2/a;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;->setColor(I)V

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;->setBorderWidth(FLandroid/util/DisplayMetrics;)V

    invoke-virtual {p2}, Lm2/a;->l()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/nothing/cardwidget/battery/view/BatteryAODLevelDrawable;->setBatteryLevel(I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;

    if-eqz v1, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;

    :cond_6
    if-eqz v2, :cond_8

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseProgressbarColor(Lm2/a;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->setColor(I)V

    :cond_7
    invoke-virtual {p2}, Lm2/a;->l()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->setBatteryLevel(I)V

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;-><init>()V

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->parseProgressbarColor(Lm2/a;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->setColor(I)V

    :cond_9
    invoke-virtual {p2}, Lm2/a;->l()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/nothing/cardwidget/battery/view/BatteryLevelDrawable;->setBatteryLevel(I)V

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method

.method private final showView()V
    .locals 1

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryView:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateIndicator(Lm2/a;)V
    .locals 9

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animatorJob:Li6/v1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/cardwidget/battery/view/BatteryCellView$updateIndicator$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView$updateIndicator$1;-><init>(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->animatorJob:Li6/v1;

    return-void
.end method

.method private final updateUI(Lm2/a;)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellAodView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellNormalView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellAodView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryCellNormalView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryLevelIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryLevel(Landroid/widget/ImageView;Lm2/a;)V

    :cond_6
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_7
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryAodDeviceIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryDeviceIcon(Landroid/widget/ImageView;Lm2/a;)V

    :cond_8
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryAodIndicatorIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAodBatteryIndicator(Landroid/widget/ImageView;Lm2/a;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-direct {p0, v0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryDeviceIcon(Landroid/widget/ImageView;Lm2/a;)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateIndicator(Lm2/a;)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public final setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V
    .locals 1

    const-string v0, "attributeHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->attrsHelper:Lcom/nothing/cardwidget/battery/AttributeHelper;

    return-void
.end method

.method public final setBatteryInfo(Lm2/a;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->hideView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->showView()V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateUI(Lm2/a;)V

    :goto_0
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->lastBatteryInfo:Lm2/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/nothing/cardwidget/R$string;->battery_content_desc:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->lastBatteryInfo:Lm2/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->lastBatteryInfo:Lm2/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lm2/a;->l()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateRatio(F)V
    .locals 6

    sget-object v0, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v3}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, La6/a;->b(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, La6/a;->b(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x30

    invoke-virtual {v0, v5, v2}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, La6/a;->b(F)I

    move-result p1

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryDeviceIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    sget-object v2, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->batteryIndicatorIv:Landroid/widget/ImageView;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string v0, "layout_marginTop"

    invoke-virtual {v2, p0, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method
