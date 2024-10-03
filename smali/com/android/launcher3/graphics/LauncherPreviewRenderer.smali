.class public Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewLayout;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mContext:Landroid/content/Context;

.field private final mDp:Lcom/android/launcher3/DeviceProfile;

.field private final mDpChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpOrig:Lcom/android/launcher3/DeviceProfile;

.field protected final mHomeElementInflater:Landroid/view/LayoutInflater;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field protected final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mLauncherWidgetSpanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRootView:Lcom/android/launcher3/InsettableFrameLayout;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWallpaperColorResources:Landroid/util/SparseIntArray;

.field private final mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private final mWorkspaceScreens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V
    .locals 10
    .param p4    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Landroid/app/WallpaperColors;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/DeviceProfile;->DEFAULT_PROVIDER:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v2, p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    :goto_0
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    iget-boolean v7, v1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    :goto_1
    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    new-instance v2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;

    iget v4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v2, p0, p1, v4, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;II)V

    new-instance p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p2, v4, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    new-instance v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const p2, 0x7f120140

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p2, v2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    new-instance p2, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f130142

    invoke-direct {p2, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0e00a6

    goto :goto_2

    :cond_2
    const v2, 0x7f0e00a5

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p2, v3}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    const v2, 0x7f0b01dc

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Hotseat;

    iput-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    if-nez p4, :cond_3

    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    :cond_3
    iput-object p4, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

    const p4, 0x7f0b044f

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/CellLayout;

    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-boolean v7, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_4
    iget v7, v2, Landroid/graphics/Rect;->right:I

    :goto_3
    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v9

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {p4, v3, v6, v7, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p4, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v2, 0x1

    if-eqz p4, :cond_5

    const p4, 0x7f0b0451

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/CellLayout;

    iget-object p4, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    div-int/lit8 p4, p4, 0x2

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v5

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    invoke-virtual {p2, p4, v5, v6, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p2, :cond_8

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p3

    :goto_4
    if-eqz p3, :cond_7

    invoke-static {p1}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/launcher3/widget/LocalColorExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p2

    goto :goto_5

    :cond_7
    move-object p2, v4

    :goto_5
    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    goto :goto_6

    :cond_8
    iput-object v4, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    :goto_6
    new-instance p2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;

    invoke-direct {p2, p0, p1, v4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;)V

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->lambda$hideBottomRow$0(Z)V

    return-void
.end method

.method private synthetic lambda$hideBottomRow$0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Hotseat;->setQsbAlpha(F)V

    :cond_3
    return-void
.end method

.method protected static measureView(Landroid/view/View;II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchVisibilityAggregated(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onVisibilityAggregated(Z)V

    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_2
    if-ge v2, p2, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    sget-object p0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-object p0
.end method

.method public getDeviceProfile()Lj3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    check-cast p0, Lj3/a;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object p0
.end method

.method public getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getWorkSpace()Lcom/android/launcher3/CellLayout;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public hideBottomRow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/graphics/h;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    :goto_0
    const v1, 0x7f0e0085

    invoke-static {v1, p0, v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method protected inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    return-void
.end method

.method protected inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    sget-object v1, Lb3/f;->a:Lb3/f;

    invoke-virtual {v1, p2}, Lb3/f;->a(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    instance-of p2, v0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz p2, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->applyDisplaySpan(II)V

    :cond_1
    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string v0, "TextClock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_0
    const-string p0, "fragment"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    sget-object p0, Lcom/android/launcher3/R$styleable;->PreviewFragment:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/graphics/FragmentWithPreview;

    invoke-virtual {p4, p3}, Lcom/android/launcher3/graphics/FragmentWithPreview;->enterPreviewMode(Landroid/content/Context;)V

    invoke-virtual {p4, p2}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onInit(Landroid/os/Bundle;)V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p4, p3, p1, p2}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
