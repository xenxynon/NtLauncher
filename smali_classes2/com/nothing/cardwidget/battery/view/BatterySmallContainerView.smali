.class public final Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;
.super Lcom/nothing/cardwidget/RemoteServiceView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$Companion;

.field private static final TAG:Ljava/lang/String; = "SmallContainerView"


# instance fields
.field private final animEnter$delegate:Ln5/e;

.field private aodPermissionContainer:Landroid/widget/RelativeLayout;

.field private final attributeHelper$delegate:Ln5/e;

.field private batteryContainer:Landroid/widget/RelativeLayout;

.field private batteryPermissionIv:Landroid/widget/ImageView;

.field private batteryPermissionTv:Landroid/widget/TextView;

.field private batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

.field private iconClickConsumer:Ljava/util/function/Consumer;
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

.field private lastInfo:Lm2/a;

.field private permissionClickListener:Landroid/view/View$OnClickListener;

.field private permissionContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->Companion:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$Companion;

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;

    invoke-direct {p3, p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$animEnter$2;-><init>(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)V

    invoke-static {p3}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p3

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->animEnter$delegate:Ln5/e;

    sget-object p3, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$attributeHelper$2;->INSTANCE:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$attributeHelper$2;

    invoke-static {p3}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p3

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->attributeHelper$delegate:Ln5/e;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getRemoteResource(Landroid/util/AttributeSet;Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/nothing/cardwidget/R$layout;->battery_small_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p2, "this"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->initView(Landroid/view/View;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->initView$lambda-2$lambda-1(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAttributeHelper(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)Lcom/nothing/cardwidget/battery/AttributeHelper;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBatteryView$p(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)Lcom/nothing/cardwidget/battery/view/BatteryCellView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    return-object p0
.end method

.method public static synthetic b(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->setBatteryClickListener$lambda-14(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;Lm2/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAnimEnter()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setBatteryInfo(Lm2/a;)V

    :cond_4
    :goto_1
    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->lastInfo:Lm2/a;

    return-void
.end method

.method private final getAnimEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->animEnter$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    return-object p0
.end method

.method private final getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->attributeHelper$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/battery/AttributeHelper;

    return-object p0
.end method

.method private final initView(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nothing/cardwidget/R$id;->battery_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryContainer:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->layout_battery_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/nothing/cardwidget/battery/view/e;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/battery/view/e;-><init>(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionContainer:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->layout_battery_aod_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->aodPermissionContainer:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_battery_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPermissionBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryPermissionIv:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->iv_battery_aod_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getAodPermissionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Lcom/nothing/cardwidget/R$id;->battery_small_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->setAttributeHelper(Lcom/nothing/cardwidget/battery/AttributeHelper;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    sget v0, Lcom/nothing/cardwidget/R$id;->tv_battery_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPermissionStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->getPermissionTvColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    return-void
.end method

.method private static final initView$lambda-2$lambda-1(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setBatteryClickListener(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/nothing/cardwidget/battery/view/f;

    invoke-direct {v1, p0, p1}, Lcom/nothing/cardwidget/battery/view/f;-><init>(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setBatteryClickListener$lambda-14(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->iconClickConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    new-instance v0, Ln5/k;

    invoke-direct {v0, p2, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final showBatteryUI()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->aodPermissionContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final showPermissionUI()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->getAttributeHelper()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->aodPermissionContainer:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->aodPermissionContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionContainer:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
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

    const/high16 p2, 0x42900000    # 72.0f

    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryPermissionTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    const/high16 p3, 0x41a00000    # 20.0f

    mul-float/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Lo5/j;->Y(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {v2, v1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->earProductsOnCombine(Lm2/a;)Lm2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo5/j;->I(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lo5/j;->I(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lm2/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBatteryInfo batteryInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->lastInfo:Lm2/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->crossFadeAnimation(Lcom/nothing/cardwidget/battery/view/BatteryCellView;Lm2/a;Lm2/a;)V

    :cond_2
    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->setBatteryClickListener(Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->iconClickConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->permissionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setPermission(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->showBatteryUI()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->showPermissionUI()V

    :goto_0
    return-void
.end method

.method public final setSmallBatteryDisplayRatio(F)V
    .locals 5

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryPermissionIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "this.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v4}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v4, v3}, Lcom/nothing/cardwidget/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    sget-object v3, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->batteryView:Lcom/nothing/cardwidget/battery/view/BatteryCellView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryCellView;->updateRatio(F)V

    :cond_0
    return-void
.end method
