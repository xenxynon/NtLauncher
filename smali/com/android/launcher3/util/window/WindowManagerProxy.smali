.class public Lcom/android/launcher3/util/window/WindowManagerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_TABLET_WIDTH:I = 0x258

.field private static final TAG:Ljava/lang/String; = "WindowManagerProxy"


# instance fields
.field protected final mTaskbarDrawnInProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    const v1, 0x7f120296

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/window/WindowManagerProxy;
    .locals 2

    const-class v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    const v1, 0x7f120296

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    return-object p0
.end method


# virtual methods
.method public estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)[Lcom/android/launcher3/util/WindowBounds;

    move-result-object p0

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)[Lcom/android/launcher3/util/WindowBounds;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget-object v4, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v2

    float-to-int v2, v2

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput v2, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x258

    if-lt v2, v9, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    if-nez v2, :cond_2

    sget-boolean v9, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :cond_2
    :goto_1
    const-string v6, "status_bar_height_portrait"

    const-string v9, "status_bar_height"

    invoke-virtual {v0, v5, v6, v9}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v10, "status_bar_height_landscape"

    invoke-virtual {v0, v5, v10, v9}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const v10, 0x7f070553

    if-eqz v2, :cond_4

    iget-boolean v11, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v11, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_2

    :cond_4
    const-string v11, "navigation_bar_height"

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v11

    :goto_2
    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    const-string v2, "navigation_bar_height_landscape"

    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v8

    :goto_4
    if-eqz v7, :cond_8

    move v0, v8

    goto :goto_5

    :cond_8
    const-string v7, "navigation_bar_width"

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    :goto_5
    const/4 v5, 0x4

    new-array v7, v5, [Lcom/android/launcher3/util/WindowBounds;

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    move v12, v8

    :goto_6
    if-ge v12, v5, :cond_c

    invoke-static {v3, v12}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v13

    iget-object v14, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v15, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v15, v14}, Landroid/graphics/Point;->set(II)V

    invoke-static {v10, v13}, Lcom/android/launcher3/util/RotationUtils;->rotateSize(Landroid/graphics/Point;I)V

    new-instance v14, Landroid/graphics/Rect;

    iget v15, v10, Landroid/graphics/Point;->x:I

    iget v5, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v14, v8, v8, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, v10, Landroid/graphics/Point;->y:I

    iget v15, v10, Landroid/graphics/Point;->x:I

    move/from16 p1, v0

    if-le v5, v15, :cond_9

    move v5, v6

    move v15, v11

    goto :goto_7

    :cond_9
    move/from16 v8, p1

    move v15, v2

    move v5, v9

    :goto_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v13}, Lcom/android/launcher3/util/RotationUtils;->rotateRect(Landroid/graphics/Rect;I)V

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x3

    if-eq v12, v5, :cond_b

    const/4 v5, 0x2

    if-ne v12, v5, :cond_a

    goto :goto_8

    :cond_a
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_b
    :goto_8
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    :goto_9
    new-instance v5, Lcom/android/launcher3/util/WindowBounds;

    invoke-direct {v5, v14, v0, v12}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    aput-object v5, v7, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    const/4 v5, 0x4

    const/4 v8, 0x0

    goto :goto_6

    :cond_c
    return-object v7
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p2, p1, p0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p0

    return p0
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p2

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method protected getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 0

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-class p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v0

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/view/WindowMetrics;I)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    new-instance p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-direct {p1, v1, v0, p0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;ILandroid/graphics/Rect;)V

    return-object p1
.end method

.method protected getDisplayInfo(Landroid/view/WindowMetrics;I)Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    new-instance p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;ILandroid/graphics/Rect;)V

    return-object p1
.end method

.method public getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "config_navBarInteractionMode"

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "WindowManagerProxy"

    const-string p1, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/NavigationMode;->values()[Lcom/android/launcher3/util/NavigationMode;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget v3, v2, Lcom/android/launcher3/util/NavigationMode;->resValue:I

    if-ne v3, p0, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    :goto_2
    return-object p0
.end method

.method public getRealBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p0, p2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v4, p0, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    new-instance p0, Lcom/android/launcher3/util/WindowBounds;

    if-le v4, v3, :cond_0

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, p2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    return-object p0

    :cond_0
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    return-object p0

    :cond_1
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    new-instance p0, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-direct {p0, p1, v1, p2}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object p0
.end method

.method public getRotation(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method protected getStatusBarHeight(Landroid/content/Context;ZI)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "status_bar_height_portrait"

    goto :goto_0

    :cond_0
    const-string p2, "status_bar_height_landscape"

    :goto_0
    const-string v0, "status_bar_height"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected isGestureNav(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "config_navBarInteractionMode"

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x258

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v5

    iget v8, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-le v8, v3, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    if-eqz v4, :cond_4

    :cond_3
    move v2, v7

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    const-string v3, "navigation_bar_height"

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_3

    const-string v3, "navigation_bar_height_landscape"

    goto :goto_2

    :goto_3
    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->right:I

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->top:I

    invoke-virtual {p0, p1, v6, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getStatusBarHeight(Landroid/content/Context;ZI)I

    move-result p0

    iget p1, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, p0, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Insets;->left:I

    iget p2, p0, Landroid/graphics/Insets;->top:I

    iget p0, p0, Landroid/graphics/Insets;->right:I

    invoke-static {p1, p2, p0, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    :cond_6
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Insets;->left:I

    iget v0, p1, Landroid/graphics/Insets;->top:I

    iget v1, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0

    :cond_7
    :goto_4
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {p3, p0, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method
