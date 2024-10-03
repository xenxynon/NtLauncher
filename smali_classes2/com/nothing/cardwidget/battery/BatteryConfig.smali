.class public final Lcom/nothing/cardwidget/battery/BatteryConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;
    }
.end annotation


# static fields
.field public static final CARD_DEFAULT_HEIGHT:F = 172.0f

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.nothing.hearthstone"

.field public static final DURATION_CHARGING_ANIMATION:J = 0x190L

.field public static final DURATION_TASK_AWAITING:J = 0x7530L

.field public static final INSTANCE:Lcom/nothing/cardwidget/battery/BatteryConfig;

.field public static final LOW_BATTERY:I = 0x14

.field public static final SIZE_BROADER_AOD:F = 1.0f

.field public static final SIZE_DEVICE_ICON_HEIGHT:I = 0x1e

.field public static final SIZE_DEVICE_ICON_WIDTH:I = 0x32

.field public static final SIZE_INDICATOR:I = 0x10

.field public static final SIZE_ITEM_CONTAINER:I = 0x46

.field public static final SIZE_LEVEL_TEXT:F = 30.0f

.field public static final SIZE_MARGIN_16DP:I = 0x10

.field public static final SIZE_MARGIN_3DP:I = 0x3

.field public static final SIZE_MARGIN_48DP:I = 0x30

.field public static final SIZE_MARGIN_6DP:I = 0x6

.field public static final SIZE_NO_PERMISSION_TEXT:F = 20.0f

.field public static final SIZE_PERMISSION_HEIGHT:I = 0x20

.field public static final SIZE_PERMISSION_WIDTH:I = 0x12

.field public static final SMALL_1x1_HEIGHT:F = 72.0f

.field public static final VALUE_DEVICE_TRANSLATION_Y:F = -22.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/battery/BatteryConfig;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/BatteryConfig;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/BatteryConfig;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceIcon(Lm2/a;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string p0, "com.nothing.hearthstone"

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    const-string v1, "manager.getResourcesForA\u2026ion(DEFAULT_PACKAGE_NAME)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm2/a;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/nothing/cardwidget/battery/BatteryConfig;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryConfig;

    invoke-virtual {v1, p3}, Lcom/nothing/cardwidget/battery/BatteryConfig;->toInt(Z)I

    move-result p3

    invoke-static {p1, p3}, Lo5/j;->K(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "drawable"

    invoke-virtual {p2, p1, p3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p2, p0, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final isLowBattery(Lm2/a;)Z
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/nothing/cardwidget/battery/entity/BatteryStatus;->LOW:Lcom/nothing/cardwidget/battery/entity/BatteryStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/nothing/cardwidget/battery/entity/BatteryStatus;->NORMAL:Lcom/nothing/cardwidget/battery/entity/BatteryStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lm2/a;->l()I

    move-result p0

    const/16 p1, 0x14

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toInt(Z)I
    .locals 0

    return p1
.end method
