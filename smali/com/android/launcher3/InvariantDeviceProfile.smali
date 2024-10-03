.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$GridOption;,
        Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allAppsBorderSpaces:[Landroid/graphics/PointF;

.field public allAppsCellSize:[Landroid/graphics/PointF;

.field public allAppsIconSize:[F

.field public allAppsIconTextSize:[F

.field public allAppsStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public bigCellHeightRatio:I

.field public bigCellWidthRatio:I

.field public bigFolderItemSize:I

.field public bigIconBorderSpacing:I

.field public bigIconSmallBorderSpacing:I

.field public borderSpaces:[Landroid/graphics/PointF;

.field public cellStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public dbFile:Ljava/lang/String;

.field public defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public demoModeLayoutId:I

.field public devicePaddingId:I
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation
.end field

.field public deviceType:I

.field public fillResIconDpi:I

.field public folderSpace:F

.field public folderStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public hasGesture:Z

.field public horizontalMargin:[F

.field public hotseatBarBottomSpace:[F

.field public hotseatColumnSpan:[I

.field public hotseatHeightPercent:F

.field public hotseatQsbSpace:[F

.field public iconBitmapSize:I

.field public iconSize:[F

.field public iconTextSize:[F

.field public inlineNavButtonsEndSpacing:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field public inlineQsb:[Z

.field protected isScalable:Z

.field private final mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public minCellSize:[Landroid/graphics/PointF;

.field public numAllAppsColumns:I

.field public numColumns:I

.field public numDatabaseAllAppsColumns:I

.field public numDatabaseHotseatIcons:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numRows:I

.field public numSearchContainerColumns:I

.field public numShownHotseatIcons:I

.field public recentActivitySupportedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field public startAlignTaskbar:[Z

.field public supportShowSearchBar:Z

.field public supportShowWorkspaceLabel:Z

.field public supportedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field public transientTaskbarIconSize:[F

.field public workspaceHeightPercent:F

.field public workspaceSpecsId:I
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/g0;->a:Lcom/android/launcher3/g0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/h0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/h0;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    new-instance v0, Lcom/android/launcher3/c0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/c0;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/DisplayController;->setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    const/4 v0, 0x4

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p2

    new-instance v7, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {v7, p2}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v9

    invoke-static {p1, v1, v9, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v7, p2, v9}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p2

    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v3, v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-direct {v1, v3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    invoke-static {v1, p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v1

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v3

    aget v3, v3, v4

    aput v3, v1, v4

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v3

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v5

    aget v5, v5, v1

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {p2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {p2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, v7, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-boolean v10, p2, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown grid name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/android/launcher3/DeviceProfile;)I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$initGrid$6(Lcom/android/launcher3/DeviceProfile;)I

    move-result p0

    return p0
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/util/Partner;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "grid_num_rows"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "grid_num_columns"

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "grid_icon_size_dp"

    invoke-virtual {p1, v3, v1}, Lcom/android/launcher3/util/Partner;->getDimenValue(Ljava/lang/String;I)F

    move-result p1

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v0, 0x0

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p1

    aput p1, p0, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IDP"

    const-string p2, "Invalid Partner grid resource!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$getDeviceType$2(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$initGrid$5(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$parseAllGridOptions$10(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result p0

    return p0
.end method

.method private static dist(FFFF)F
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static synthetic e(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$new$1(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$initGrid$4(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method public static getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/e0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/e0;-><init>(Lcom/android/launcher3/util/DisplayController$Info;II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/l0;->a:Lcom/android/launcher3/l0;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWO_PANEL_HOME:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    if-ne p0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private getLauncherIconDensity(I)I
    .locals 4

    const/4 p0, 0x7

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const/16 v0, 0x280

    const/4 v1, 0x6

    :goto_0
    if-ltz v1, :cond_1

    const/high16 v2, 0x42400000    # 48.0f

    aget v3, p0, v1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v3, v2

    int-to-float v2, p1

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    aget v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private static getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f15000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_5

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const-string v3, "grid-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v3, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    :cond_3
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v4, :cond_4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_0

    :cond_4
    if-eq v8, v5, :cond_0

    if-ne v8, v6, :cond_3

    const-string v8, "display-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-direct {v8, v3, p0, v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lt4/f;->b()Z

    move-result v1

    invoke-static {}, Lt4/f;->c()Z

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v5, v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v5, v5, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-virtual {v5, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz p3, :cond_6

    :cond_7
    invoke-static {v4, v1, v2}, Lk3/a;->a(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPredefinedDeviceProfiles: using default option "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object p2, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "IDP"

    invoke-static {p3, p2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No display option with canBeDefault=true"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_c

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic h(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$initGrid$7(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$invDistWeightedInterpolate$11(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I

    move-result p0

    return p0
.end method

.method private initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v5

    invoke-static {p1}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, p2, v5, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v3, p2, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p2

    iget-object v0, v3, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-boolean v6, v0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;IZ)V

    iget-object p0, p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    return-object p0
.end method

.method private initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;IZ)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$500(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$600(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$800(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1000(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->cellStyle:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1100(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1200(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    iput p4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    iput-boolean p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hasGesture:Z

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineNavButtonsEndSpacing:I

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v2, 0x0

    aget p5, p5, v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget v5, v5, v4

    invoke-static {p5, v5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p5, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {p0, p5}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$1500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$1600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ne p4, v3, :cond_1

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1800(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1700(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    :goto_1
    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$1900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBarBottomSpace:[F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatQsbSpace:[F

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$2200(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsStyle:I

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$2300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    if-ne p4, v3, :cond_2

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$2400(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$2300(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result p5

    :goto_2
    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$2800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->access$2900(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->transientTaskbarIconSize:[F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->startAlignTaskbar:[Z

    const/4 p5, 0x4

    iget-object v1, p3, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    if-ne p5, v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0701b9

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpace:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0700a8

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigIconSmallBorderSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0700a4

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0701ba

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpace:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0700a9

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigIconSmallBorderSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0700a5

    :goto_3
    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigFolderItemSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f0700a3

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigIconBorderSpacing:I

    const/4 p5, 0x2

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellWidthRatio:I

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellHeightRatio:I

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatHeightPercent:F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p5

    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceHeightPercent:F

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3400(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportShowSearchBar:Z

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportShowWorkspaceLabel:Z

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Landroid/graphics/Point;

    iget-object v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-direct {p5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/WindowBounds;

    new-instance v4, Lcom/android/launcher3/DeviceProfile$Builder;

    invoke-direct {v4, p1, p0, p2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    if-ne p4, v3, :cond_4

    move v5, v3

    goto :goto_5

    :cond_4
    move v5, v2

    :goto_5
    invoke-virtual {v4, v5}, Lcom/android/launcher3/DeviceProfile$Builder;->setIsMultiDisplay(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/android/launcher3/DeviceProfile$Builder;->setDotRendererCache(Landroid/util/SparseArray;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, v1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v5

    const/high16 v6, 0x44340000    # 720.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_6

    :cond_5
    invoke-static {v4, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v1

    :goto_6
    iget-object v5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_6
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/o0;->a:Lcom/android/launcher3/o0;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    iget-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/n0;->a:Lcom/android/launcher3/n0;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/f0;->a:Lcom/android/launcher3/f0;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/d0;->a:Lcom/android/launcher3/d0;

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/launcher3/k0;

    invoke-direct {p2, p1}, Lcom/android/launcher3/k0;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;",
            ">;I)",
            "Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    :goto_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_2
    int-to-float p2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p2

    int-to-float v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    new-instance v0, Lcom/android/launcher3/j0;

    invoke-direct {v0, p2, p0}, Lcom/android/launcher3/j0;-><init>(FF)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v2, v1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v3

    invoke-static {p2, p0, v2, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v2, v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V

    move v4, v0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    int-to-float v5, v4

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v6

    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p2, p0, v6, v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v6

    add-float/2addr v3, v6

    new-instance v7, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>()V

    invoke-static {v7, v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3900(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v3

    invoke-static {v2, p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3900(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    :goto_4
    const/4 p0, 0x4

    if-ge v0, p0, :cond_5

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p0

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p2

    aget p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-object v2
.end method

.method public static synthetic j(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic k(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$getDeviceType$3(II)I

    move-result p0

    return p0
.end method

.method public static synthetic l(ILcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$initGrid$8(ILcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private static synthetic lambda$getDeviceType$2(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private static synthetic lambda$getDeviceType$3(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$initGrid$4(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initGrid$5(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return p0
.end method

.method private static synthetic lambda$initGrid$6(Lcom/android/launcher3/DeviceProfile;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    return p0
.end method

.method private static synthetic lambda$initGrid$7(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return p0
.end method

.method private static synthetic lambda$initGrid$8(ILcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iput p0, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->recalculateHotseatWidthAndBorderSpace()V

    return-void
.end method

.method private static synthetic lambda$invDistWeightedInterpolate$11(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I
    .locals 1

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result p2

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->access$3800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p3

    invoke-static {p0, p1, v0, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x1c

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$parseAllGridOptions$10(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setCurrentGrid$9(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lb3/i;->e(Landroid/content/ContentResolver;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$setCurrentGrid$9(Landroid/content/Context;Z)V

    return-void
.end method

.method private onConfigChanged(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    invoke-interface {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;->onIdpChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parseAllDefinedGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f15000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "grid-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "IDP"

    const-string v1, "Error parsing device profile"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private toModelState()[Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hasGesture:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3e9d89d7

    mul-float/2addr p0, p1

    const p1, 0x3f80fc10

    add-float/2addr p0, p1

    return p0
.end method

.method private static weight(FFFFF)F
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    :cond_0
    const-wide p1, 0x40f86a0000000000L    # 100000.0

    float-to-double v0, p0

    float-to-double p3, p4

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    div-double/2addr p1, p3

    double-to-float p0, p1

    return p0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFILjava/util/List;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(FFILjava/util/List;)Lcom/android/launcher3/DeviceProfile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;)",
            "Lcom/android/launcher3/DeviceProfile;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/DeviceProfile;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DeviceProfile;

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_2

    move-object p0, v1

    move v0, v2

    goto :goto_0

    :cond_2
    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    if-ne v2, p3, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lj3/a;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;Ljava/util/List;)Lj3/a;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceProfile(Landroid/content/Context;Ljava/util/List;)Lj3/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;)",
            "Lj3/a;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFILjava/util/List;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    check-cast p0, Lj3/a;

    return-object p0
.end method

.method public getRecentActivityDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->recentActivitySupportedProfiles:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;Ljava/util/List;)Lj3/a;

    move-result-object p0

    return-object p0
.end method

.method public parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/InvariantDeviceProfile$GridOption;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->parseAllDefinedGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/m0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/m0;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public reinitializeAfterRestore(Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored grid is disabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", migrating to: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing all other grid db files"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IDP"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed old grid db file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->setCurrentGrid(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/i0;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Ly4/a;->h:Ly4/a;

    invoke-virtual {p0, p2}, Ly4/a;->c(Ljava/lang/String;)V

    return-void
.end method
