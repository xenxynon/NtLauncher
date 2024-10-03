.class public final Lcom/android/quickstep/utils/WindowModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper;

.field private static final OPTIONS_DEFAULT_VALUE:I = -0x1

.field private static final POPUP_WINDOW_MODE_VALUE:I = 0x65

.field private static final WINDOWING_MODE_PINNED_WINDOW:Ljava/lang/String; = "WINDOWING_MODE_PINNED_WINDOW"

.field private static final isGestureEnterWindowModeSupport$delegate:Ln5/e;

.field private static final isSupportGetActiveTaskId$delegate:Ln5/e;

.field private static final isWindowModeSupport$delegate:Ln5/e;

.field private static final launchWindowingModeValue$delegate:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/utils/WindowModeHelper;

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper;

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$launchWindowingModeValue$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->launchWindowingModeValue$delegate:Ln5/e;

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isWindowModeSupport$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isWindowModeSupport$delegate:Ln5/e;

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isGestureEnterWindowModeSupport$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isGestureEnterWindowModeSupport$delegate:Ln5/e;

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper$isSupportGetActiveTaskId$2;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper$isSupportGetActiveTaskId$2;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isSupportGetActiveTaskId$delegate:Ln5/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLaunchWindowingModeValue(Lcom/android/quickstep/utils/WindowModeHelper;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/utils/WindowModeHelper;->getLaunchWindowingModeValue()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSupportGetLiveTileTaskId()Z
    .locals 1

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isSupportGetLiveTileTaskId()Z

    move-result v0

    return v0
.end method

.method public static final constructWindowModeActivityOption()Landroid/app/ActivityOptions;
    .locals 3

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->INSTANCE:Lcom/android/quickstep/utils/WindowModeHelper;

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper;->getLaunchWindowingModeValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0}, Lcom/android/quickstep/utils/WindowModeHelper;->getLaunchWindowingModeValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final getLaunchWindowingModeValue()I
    .locals 0

    sget-object p0, Lcom/android/quickstep/utils/WindowModeHelper;->launchWindowingModeValue$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final isAppSupportWindowMode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lh6/l;->t(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    sget-object v2, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-virtual {v2}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->getWindowModeBlockList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, p0}, Lo5/j;->B(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0
.end method

.method public static final isGestureEnterWindowModeSupport()Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isGestureEnterWindowModeSupport$delegate:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic isGestureEnterWindowModeSupport$annotations()V
    .locals 0

    return-void
.end method

.method public static final isSupportGetActiveTaskId()Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isSupportGetActiveTaskId$delegate:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic isSupportGetActiveTaskId$annotations()V
    .locals 0

    return-void
.end method

.method private static final isSupportGetLiveTileTaskId()Z
    .locals 5

    const-string v0, "android.view.NtWindowManager"

    invoke-static {v0}, Ly2/g;->c(Ljava/lang/String;)Ly2/g$f;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-interface {v0, v3, v2}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "getActiveRecentsLayerTaskId"

    invoke-interface {v2, v4, v3}, Ly2/g$f;->a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Ly2/g$h;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final isWindowModeSupport()Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/WindowModeHelper;->isWindowModeSupport$delegate:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic isWindowModeSupport$annotations()V
    .locals 0

    return-void
.end method
