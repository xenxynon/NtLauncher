.class public Lcom/android/launcher3/Workspace;
.super Lq2/f;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.implements Ll0/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher3/Workspace$StateTransitionListener;,
        Lcom/android/launcher3/Workspace$ReorderAlarmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lq2/f<",
        "TT;>;",
        "Lcom/android/launcher3/DropTarget;",
        "Lcom/android/launcher3/DragSource;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/WorkspaceLayoutManager;",
        "Lcom/android/launcher3/util/LauncherBindableItemsContainer;",
        "Ll0/b$b;"
    }
.end annotation


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field private final mAllAppsIconSize:I

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field protected mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field protected mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field protected mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFirstPagePinnedItem:Landroid/view/View;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mForceDrawAdjacentPages:Z

.field private mIsEventOverFirstPagePinnedItem:Z

.field private mIsSwitchingState:Z

.field mLastReorderX:I

.field mLastReorderY:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMoveToView:Landroid/view/View;

.field private final mOverlayCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll0/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

.field private mOverlayProgress:F

.field private mOverlayShown:Z

.field protected final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Lcom/android/launcher3/util/IntArray;

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field final mScreenOrder:Lcom/android/launcher3/util/IntArray;

.field private mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempFXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mTempXY:[I

.field private mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

.field private mTransitionProgress:F

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field public final mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F

.field private removingAnimatingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lq2/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance p2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    new-array v2, p3, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    new-instance v2, Lcom/android/launcher3/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mMoveToView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->removingAnimatingView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iput v1, p0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    new-instance p2, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-direct {p2, v0, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static synthetic A(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$3(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getWidgetResizeFrameRunnable$10(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$14(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/Workspace;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method private addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/nothing/launcher/widget/a;

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ne v0, v2, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v1, p1

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/android/launcher3/j4;

    invoke-direct {p1, p0}, Lcom/android/launcher3/j4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private canInterceptTouchEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isDropAnimEnd()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    aput v6, v4, v5

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    add-int/2addr v3, v2

    aput v3, v4, v6

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_3

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_4

    :cond_3
    if-le v4, v2, :cond_5

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_5

    :cond_4
    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_1

    :cond_5
    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_1
    invoke-direct {p0, v4, v5, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_6
    return-object v1
.end method

.method private checkTargetCellValidity(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cleanupAddToFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDragExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    :cond_0
    return-void
.end method

.method private commitExtraEmptyScreen(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitExtraEmptyScreen remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Workspace"

    invoke-static {v2, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "generate_new_screen_id"

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return p1
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    sub-int v0, v2, v0

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertFinalScreenToEmptyScreenIfNecessary remove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Launcher.Workspace"

    invoke-static {v5, v4}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v4, -0xc9

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v4, -0xc8

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    aget v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v3, 0x1

    aget v4, p0, v3

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    aget v1, p0, v0

    aget v2, p0, v3

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    aget v0, p0, v0

    aget p0, p0, v3

    new-instance v1, Lcom/android/launcher3/e4;

    invoke-direct {v1, p2}, Lcom/android/launcher3/e4;-><init>(Landroid/view/View;)V

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisibleChildrenRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-boolean v5, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    :cond_0
    if-ne v3, v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_0
    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    if-gt v3, v5, :cond_3

    if-gt v5, v1, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, -0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, -0xc8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x0

    aget v2, p6, v9

    const/4 v10, 0x1

    aget v3, p6, v10

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v1, 0x64

    invoke-static {v8, v1}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    :cond_1
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v1, v10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2, v10}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {v2, v7}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p7, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    aget v2, v7, v9

    int-to-double v11, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    sub-float/2addr v2, v8

    div-float/2addr v2, v4

    float-to-double v13, v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v13, v2

    sub-double/2addr v11, v13

    double-to-int v2, v11

    aput v2, v7, v9

    aget v2, v7, v10

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    aput v0, v7, v10

    mul-float/2addr v5, v1

    aput v5, p2, v9

    mul-float/2addr v6, v1

    aput v6, p2, v10

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v0

    mul-float/2addr v0, v1

    aget v3, v7, v9

    int-to-float v3, v3

    sub-float v2, v0, v2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v7, v9

    aget v3, v7, v10

    int-to-float v3, v3

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v7, v10

    aput v0, p2, v10

    aput v0, p2, v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    aget v2, v7, v9

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v7, v9

    aget v2, v7, v10

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    aput v0, v7, v10

    :cond_3
    :goto_0
    return-void
.end method

.method private getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private getWallpaperOffsetForPage(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result p0

    return p0
.end method

.method private getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/launcher3/s4;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/launcher3/s4;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/android/launcher3/CellLayout;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private isAnimatingForRemovingView()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->removingAnimatingView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/nothing/launcher/card/s;

    if-nez p1, :cond_1

    instance-of p0, p0, Lcom/nothing/launcher/card/v;

    if-eqz p0, :cond_0

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

.method private isTwoPanelEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addExtraEmptyScreenOnDrag$1(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addExtraEmptyScreens$2(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitExtraEmptyScreens$5(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method private static synthetic lambda$createUserFolderIfNecessary$6(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 1

    sget-object v0, Ly4/c;->a:Ly4/c;

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->info:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p0}, Ly4/c;->a(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method private static synthetic lambda$getHomescreenIconByItemId$12(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getWidgetForAppWidgetId$13(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getWidgetResizeFrameRunnable$10(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDrop$7(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->m(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onDrop$8(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onDrop$9(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$3(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$4(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeExtraEmptyScreenDelayed remove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    return-void
.end method

.method private synthetic lambda$removeWidget$11(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 p1, 0x1

    const-string v0, "widget is removed in response to widget remove broadcast"

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static synthetic lambda$updateNotificationDots$14(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private synthetic lambda$updateNotificationDots$15(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    const/4 p0, 0x1

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_2

    instance-of v1, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {p1}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_0

    :cond_1
    check-cast p3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    instance-of p0, p3, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz p0, :cond_3

    check-cast p3, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/launcher3/n4;

    invoke-direct {p0, p1}, Lcom/android/launcher3/n4;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/folder/BigFolderIcon;->updateDot(Ly5/l;)V

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v3, v2

    aget v3, v3, v1

    invoke-virtual {p1, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-object v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    new-instance v6, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v6}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    move-object v7, v8

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-boolean v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v5, v2

    aget v6, v5, v1

    iget v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;IIII)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v6, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v6, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/BaseFolderIcon;

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne p1, v0, :cond_8

    if-nez v5, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_8
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne p1, v1, :cond_9

    if-nez v4, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_9
    return-void
.end method

.method private mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :goto_0
    return-void
.end method

.method private mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 2

    const/4 p0, 0x0

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, p0

    const/4 p0, 0x1

    aget v0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, p2, p0

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$commitExtraEmptyScreens$5(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V

    return-void
.end method

.method private notSupportTouch()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private notifyTouchComplete(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;->onTouchComplete()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    :cond_2
    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/Workspace;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$onDrop$7(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    iget-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_0
    iget-object v14, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    iget v0, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v1, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :cond_1
    move v3, v0

    move v4, v1

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x65

    goto :goto_0

    :cond_2
    const/16 v0, -0x64

    :goto_0
    move/from16 v21, v0

    invoke-virtual {v8, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v13

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v13, v0, :cond_3

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_3
    instance-of v0, v14, Lcom/android/launcher3/PendingAddItemInfo;

    const/4 v9, 0x2

    const/16 v22, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_14

    move-object v11, v14

    check-cast v11, Lcom/android/launcher3/PendingAddItemInfo;

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v0, v12, :cond_6

    aget v1, p1, v22

    aget v2, p1, v12

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v22

    aget v1, v1, v12

    invoke-virtual {v7, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    iget-object v1, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v8, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v7, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v8, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_6

    :cond_5
    move/from16 v0, v22

    goto :goto_1

    :cond_6
    move v0, v12

    :goto_1
    iget-object v6, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_a

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_7

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_7

    move v0, v2

    move v1, v3

    :cond_7
    new-array v2, v9, [I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v3, v22

    float-to-int v10, v4

    aget v3, v3, v12

    float-to-int v3, v3

    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v16, 0x0

    iget-object v9, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x3

    move-object/from16 v17, v9

    move-object/from16 v9, p2

    move-object/from16 p1, v11

    move v11, v3

    move v3, v12

    move v12, v0

    move/from16 v23, v13

    move v13, v1

    move-object v1, v14

    move v14, v4

    move-object v4, v15

    move v15, v5

    move-object/from16 v18, v2

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v2, v22

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v0, v5, :cond_9

    aget v0, v2, v3

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v0, v5, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v12, v22

    goto :goto_3

    :cond_9
    :goto_2
    move v12, v3

    :goto_3
    aget v0, v2, v22

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v0, v2, v3

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_4

    :cond_a
    move-object/from16 p1, v11

    move v3, v12

    move/from16 v23, v13

    move-object v1, v14

    move-object v4, v15

    move/from16 v12, v22

    :goto_4
    new-instance v9, Lcom/android/launcher3/Workspace$4;

    move-object v0, v9

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v15, v3

    move/from16 v3, v21

    move-object v14, v4

    move/from16 v4, v23

    move-object v5, v6

    move-object v11, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v1, v22

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v15

    :goto_6
    if-eqz v1, :cond_d

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_f

    if-eqz v12, :cond_f

    instance-of v3, v2, Lcom/nothing/launcher/widget/h;

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Lcom/nothing/launcher/widget/h;

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {v3, v4, v5}, Lcom/nothing/launcher/widget/h;->applyDisplaySpan(II)V

    :cond_e
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_f
    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v3, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v22, v15

    :cond_10
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-eqz v1, :cond_13

    check-cast v0, Lcom/nothing/launcher/card/v;

    invoke-virtual {v0}, Lcom/nothing/launcher/card/v;->i()Lcom/nothing/cardhost/e;

    move-result-object v1

    if-eqz v12, :cond_11

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v1, v2, v3, v4}, Lu2/b;->h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V

    :cond_11
    invoke-virtual {v0}, Lcom/nothing/launcher/card/v;->k()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v15

    goto :goto_8

    :cond_12
    move/from16 v12, v22

    :goto_8
    move-object v6, v1

    move v5, v12

    goto :goto_9

    :cond_13
    move-object v6, v2

    move/from16 v5, v22

    :goto_9
    iget-object v3, v14, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v4, v9

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_10

    :cond_14
    move/from16 v23, v13

    move-object v10, v14

    move-object v14, v15

    move v15, v12

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_17

    if-eq v0, v15, :cond_17

    if-eq v0, v9, :cond_16

    const/4 v1, 0x6

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    goto :goto_a

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dragSource is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0, v7, v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v0

    move-object v13, v0

    move-object v12, v10

    goto :goto_c

    :cond_17
    :goto_a
    instance-of v0, v10, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v0, :cond_18

    move-object v0, v10

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_b

    :cond_18
    move-object v0, v10

    :goto_b
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_19

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_19

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iput-object v1, v14, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v0, v1

    :cond_19
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v7, v2}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    move-object v12, v0

    move-object v13, v1

    :goto_c
    if-eqz p1, :cond_1b

    aget v1, p1, v22

    aget v2, p1, v15

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v22

    aget v1, v1, v15

    invoke-virtual {v7, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v9

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v21

    move-object/from16 v3, p2

    move v5, v9

    move-object v11, v7

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move v4, v9

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1b
    move-object v11, v7

    :cond_1c
    if-eqz p1, :cond_1d

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v22

    float-to-int v10, v1

    aget v0, v0, v15

    float-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v16, 0x0

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object/from16 v9, p2

    move-object v7, v11

    move v11, v0

    move-object v0, v12

    move v12, v1

    move-object v6, v13

    move v13, v2

    move-object v2, v14

    move v14, v3

    move v1, v15

    move v15, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v3

    iput-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    goto :goto_d

    :cond_1d
    move-object v7, v11

    move-object v0, v12

    move-object v6, v13

    move-object v2, v14

    move v1, v15

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v3, v1, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    :goto_d
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v3, v22

    aget v3, v3, v1

    invoke-direct {v8, v4, v3}, Lcom/android/launcher3/Workspace;->checkTargetCellValidity(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v15

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v19, v3, v22

    aget v20, v3, v1

    move-object/from16 v16, v0

    move/from16 v17, v21

    move/from16 v18, v23

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v3, v22

    aget v5, v3, v1

    iget v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v12, v2

    move/from16 v2, v21

    move/from16 v3, v23

    move-object v13, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {v10, v13}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    goto :goto_e

    :cond_1e
    move-object v12, v2

    move-object v13, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found invalid target position for the view drop action. Point:  cellX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cellY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    if-eqz v9, :cond_1f

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v13, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    goto :goto_f

    :cond_1f
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->removeDragViewDirectly(Lcom/android/launcher3/dragndrop/DragView;)V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    :cond_20
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :goto_10
    return-void
.end method

.method private onEndStateTransition()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    return-void
.end method

.method private onStartStateTransition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method public static synthetic p(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreens$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$removeWidget$11(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->lambda$createUserFolderIfNecessary$6(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    return-void
.end method

.method private setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    :cond_2
    move-object p1, p2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p2

    if-nez p1, :cond_4

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p3

    if-ge p2, p3, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq p1, p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private setPageIndicatorInset()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 6

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private shouldConsumeTouch(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method private shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private showPopupView(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer;->j:Lcom/nothing/launcher/popup/NTPopupContainer$a;

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->h(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->isDisplaySearchResult()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    int-to-float p0, p0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    iput p0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    :cond_1
    instance-of p0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_2

    iget-boolean p0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez p0, :cond_2

    sget-object p0, Lcom/nothing/launcher/popup/NTPopupContainer;->j:Lcom/nothing/launcher/popup/NTPopupContainer$a;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->g(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_2
    instance-of p0, p1, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz p0, :cond_4

    iget-boolean p0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez p0, :cond_4

    sget-object p0, Lcom/nothing/launcher/popup/NTPopupContainer;->j:Lcom/nothing/launcher/popup/NTPopupContainer$a;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->f(Lcom/android/launcher3/folder/BigFolderIcon;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->setRealLongClickItem(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private skipStripEmptyScreens()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$onDrop$9(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    return-void
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic u(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$4(Ljava/lang/Integer;)V

    return-void
.end method

.method private updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V
    .locals 0

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private updateCellLayoutPadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v1, Lcom/android/launcher3/g4;

    invoke-direct {v1, v0}, Lcom/android/launcher3/g4;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private updatePageAlphaValues()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updatePageScrollValues()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setScrollProgress(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateWorkspaceWidgetsSizes()V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/nothing/launcher/widget/h;

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v8, v6

    check-cast v8, Lcom/nothing/launcher/widget/h;

    iget v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {v8, v9, v7}, Lcom/nothing/launcher/widget/h;->applyDisplaySpan(II)V

    :cond_0
    instance-of v7, v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object v8, v6

    check-cast v8, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v8, v9, v10, v7}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_1
    instance-of v7, v6, Lcom/nothing/launcher/card/r;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/nothing/launcher/card/s;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nothing/launcher/card/s;

    check-cast v6, Lcom/nothing/launcher/card/r;

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v6, v8, v9, v7}, Lu2/b;->h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic v(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getWidgetForAppWidgetId$13(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic w(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$onDrop$8(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    return-void
.end method

.method private workspaceInModalState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private workspaceInScrollableState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public static synthetic x(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$15(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreenOnDrag$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic z(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getHomescreenIconByItemId$12(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_9

    const/16 v21, 0x0

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v21

    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_0

    :cond_2
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_0
    move/from16 v16, v0

    move v14, v1

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    :goto_1
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move v13, v0

    move v12, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/nothing/launcher/card/v;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/nothing/launcher/card/v;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    check-cast v0, Lcom/nothing/launcher/card/v;

    goto :goto_1

    :cond_4
    move v12, v14

    move/from16 v13, v16

    :goto_2
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v21

    float-to-int v1, v1

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v3, v12

    move v4, v13

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    aget v1, v1, v20

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_5

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v20

    :cond_5
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    return v20

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    float-to-int v10, v2

    aget v1, v1, v20

    float-to-int v11, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x4

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v21

    if-ltz v1, :cond_7

    aget v0, v0, v20

    if-ltz v0, :cond_7

    move/from16 v0, v20

    goto :goto_3

    :cond_7
    move/from16 v0, v21

    :goto_3
    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v7, v3, v0, v1}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    :cond_8
    :goto_4
    return v21

    :cond_9
    move-object v3, v15

    :cond_a
    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_b
    return v20
.end method

.method public addExtraEmptyScreens()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/h4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/h4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addOverlayCallback(Ll0/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {p1, p0}, Ll0/b$b;->onOverlayScrollChanged(F)V

    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 1

    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result p1

    cmpl-float p1, p4, p1

    const/4 p4, 0x0

    if-lez p1, :cond_0

    return p4

    :cond_0
    aget p1, p3, p4

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1

    return p4

    :cond_1
    iput-boolean p4, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    instance-of p2, p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    iget-object p2, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    iget-object p3, p1, Lcom/android/launcher3/folder/BaseFolderIcon;->info:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    iget-object p3, p5, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {p1, p5, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    if-nez p6, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    return v0

    :cond_3
    return p4
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v13, 0x2

    new-array v14, v13, [I

    new-array v15, v13, [F

    instance-of v0, v9, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v8, 0x1

    xor-int/lit8 v7, v0, 0x1

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v8, v0, -0xc8

    iget v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v0, 0x64

    invoke-static {v9, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eq v11, v13, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eq v3, v12, :cond_3

    invoke-direct {v10, v9, v12}, Lcom/android/launcher3/Workspace;->createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    int-to-float v3, v8

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->crossFadeContent(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    if-eqz v0, :cond_4

    if-eqz p7, :cond_4

    aget v0, v15, v2

    const/4 v3, 0x1

    aget v5, v15, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v3

    aput v0, v15, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    if-ne v11, v1, :cond_5

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const/4 v3, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object v2, v14

    move v4, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_5

    :cond_5
    if-ne v11, v3, :cond_6

    goto :goto_4

    :cond_6
    move v13, v2

    :goto_4
    new-instance v7, Lcom/android/launcher3/Workspace$5;

    move-object/from16 v1, p4

    invoke-direct {v7, v10, v12, v1}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    aget v5, v14, v2

    aget v6, v14, v3

    const/high16 v9, 0x3f800000    # 1.0f

    aget v11, v15, v2

    aget v12, v15, v3

    move-object/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v9

    move v5, v11

    move v6, v12

    move v9, v8

    move v8, v13

    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :goto_5
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v10, p6

    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    instance-of v5, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    :cond_1
    if-nez p2, :cond_2

    instance-of v5, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_1

    :cond_2
    move-object v5, p2

    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v7, v8}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v6, v8}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v2

    :goto_2
    move v9, v2

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v4, v2, v4

    const/4 v8, 0x1

    aget v2, v2, v8

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    if-eqz v5, :cond_4

    invoke-interface {v5, v8}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v11, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v11, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v11, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    :cond_5
    invoke-direct {p0, p1, v10}, Lcom/android/launcher3/Workspace;->showPopupView(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object v1, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v11, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v11}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    add-int/2addr v4, v1

    add-int/2addr v2, v11

    :cond_7
    move v11, v2

    instance-of v1, v6, Landroid/view/View;

    if-eqz v1, :cond_a

    instance-of v1, v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v7}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_8
    instance-of v1, v6, Lcom/nothing/launcher/card/r;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lt2/a;

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v7}, Lt2/a;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_9
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v12, v9, v3

    move-object v1, v6

    move-object v2, v5

    move v3, v4

    move v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move v8, v12

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    goto :goto_3

    :cond_a
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v12, v9, v3

    move-object v1, v7

    move-object v2, v5

    move v3, v4

    move v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move v8, v12

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v7, Lg3/a;

    invoke-direct {v7, p1}, Lg3/a;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindAndInitFirstWorkspaceScreen()V
    .locals 0

    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected cleanupFolderCreation()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    :cond_0
    return-void
.end method

.method protected cleanupReorder(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    return-void
.end method

.method clearDropTargets()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/Workspace$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v1, Lcom/android/launcher3/k4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/k4;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public computeScroll()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v1

    cmpl-float v1, p5, v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    return v3

    :cond_0
    aget v1, p4, v3

    const/4 v8, 0x1

    aget v4, p4, v8

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v6, p4, v3

    if-ne v5, v6, :cond_1

    iget v4, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v5, p4, v8

    if-ne v4, v5, :cond_1

    if-ne v1, v2, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v9, :cond_4

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iput-boolean v3, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez p6, :cond_3

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    invoke-virtual {v1, v9, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    invoke-virtual {v2, v9}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    move-object/from16 v14, p7

    iget-object v5, v14, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v1, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, p4, v3

    aget v6, p4, v8

    invoke-static {v11}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIIIZ)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v11}, Lb3/m;->k(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v10}, Lb3/m;->k(Lcom/android/launcher3/model/data/ItemInfo;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/v4;

    invoke-direct {v3, v1}, Lcom/android/launcher3/v4;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/BaseFolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    new-instance v2, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v2}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    move-object p0, v1

    move-object/from16 p1, v11

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    move-object/from16 p4, p7

    move-object/from16 p5, v12

    move/from16 p6, v13

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/folder/BaseFolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    return v8

    :cond_4
    :goto_1
    return v3
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    return-void

    :cond_4
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_5

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method enableLayoutTransitions()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object p0
.end method

.method public estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/CellLayout;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v1, 0x64

    invoke-static {p1, v1}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v4, p0}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v4

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    aput p0, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    aput p0, v0, v2

    if-eqz v1, :cond_3

    aget p0, v0, v3

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v3

    aget p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-int p0, p0

    aput p0, v0, v2

    :cond_3
    return-object v0

    :cond_4
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object p0

    return-object p0
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object p0
.end method

.method public getExpectedHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_1
    return p0
.end method

.method public getExpectedWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_1
    return p0
.end method

.method public getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/Workspace$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getHomescreenIconByItemId(I)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/android/launcher3/p4;

    invoke-direct {v0, p1}, Lcom/android/launcher3/p4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p0

    return-object p0
.end method

.method public getIdForScreen(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getNumPagesForWallpaperParallax()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result p0

    return p0
.end method

.method public getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    move v3, v1

    :goto_0
    add-int v4, v1, v2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPageDescription(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1202a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120124

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    div-int v3, v0, v1

    rem-int/2addr v0, v1

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1202a4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndexForScreenId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPanelCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenIdForPageIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getScreenOrder()Lcom/android/launcher3/util/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    return-object p0
.end method

.method public getScreenPair(I)I
    .locals 1

    const/16 p0, -0xc8

    const/16 v0, -0xc9

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    rem-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object p0
.end method

.method public getWallpaperOffsetForCenterPage()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForPage(I)F

    move-result p0

    return p0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 1

    new-instance v0, Lcom/android/launcher3/o4;

    invoke-direct {v0, p1}, Lcom/android/launcher3/o4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object p0
.end method

.method public bridge synthetic getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    return-object p0
.end method

.method public hasExtraEmptyScreens()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v0, -0xc8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initWorkspace()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e018c

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e018b

    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertNewWorkspaceScreen(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public isDropEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFinishedSwitchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

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

.method public isOverlayShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    return p0
.end method

.method protected isSignificantMove(FI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result p0

    return p0

    :cond_0
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float p0, p0

    const p2, 0x3e19999a    # 0.15f

    mul-float/2addr p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchingState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return p0
.end method

.method public lockWallpaperToDefaultPage()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    return-void
.end method

.method protected manageReorderOnDragOver(Lcom/android/launcher3/DropTarget$DragObject;FZIIII)V
    .locals 21

    move-object/from16 v9, p0

    move/from16 v0, p6

    move-object/from16 v7, p1

    move/from16 v1, p7

    iget-object v2, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object v8, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    new-array v0, v3, [I

    const/4 v1, -0x1

    iput v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v1, v5

    float-to-int v11, v3

    aget v1, v1, v4

    float-to-int v12, v1

    iget v15, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v16, v1

    move-object/from16 v17, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v3, v5

    aget v3, v3, v4

    aget v10, v0, v5

    aget v0, v0, v4

    move-object/from16 p2, v1

    move/from16 p3, v6

    move/from16 p4, v3

    move/from16 p5, v10

    move/from16 p6, v0

    move-object/from16 p7, p1

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v1, v5

    float-to-int v3, v3

    aget v1, v1, v4

    float-to-int v1, v1

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 p0, v0

    move/from16 p1, v3

    move/from16 p2, v1

    move/from16 p3, v4

    move/from16 p4, v2

    move-object/from16 p5, v8

    move-object/from16 p6, v5

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    goto :goto_1

    :cond_1
    iget v6, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v6, :cond_2

    const/4 v10, 0x3

    if-ne v6, v10, :cond_4

    :cond_2
    iget v6, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v6, v0, :cond_3

    iget v6, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v6, v1, :cond_4

    :cond_3
    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v6}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iput v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    iput v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v5

    float-to-int v11, v1

    aget v0, v0, v4

    float-to-int v12, v0

    iget v15, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    new-array v3, v3, [I

    const/16 v20, 0x0

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    new-instance v10, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p2, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public moveToDefaultScreen()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mMoveToView:Landroid/view/View;

    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    return-void
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v9, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v9, :cond_1

    return-void

    :cond_1
    iget v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v0, :cond_a

    iget v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_a

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object v15, v1

    const/4 v10, 0x0

    aget v1, v0, v10

    const/4 v14, 0x1

    aget v0, v0, v14

    invoke-direct {v8, v7, v1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_4

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    :cond_5
    :goto_2
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_9

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v0, :cond_6

    iget v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v1, :cond_6

    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_3

    :cond_6
    move/from16 v17, v3

    move/from16 v18, v4

    :goto_3
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v10

    float-to-int v1, v1

    aget v0, v0, v14

    float-to-int v2, v0

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v10

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    aget v1, v0, v14

    if-ne v1, v2, :cond_7

    return-void

    :cond_7
    aget v6, v0, v10

    aget v19, v0, v14

    const/4 v5, 0x2

    new-array v1, v5, [I

    aput v6, v1, v10

    aput v19, v1, v14

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    aget v3, v0, v10

    aget v0, v0, v14

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lb3/m;->b(Landroid/view/View;[I)V

    aget v0, v1, v10

    aget v1, v1, v14

    invoke-virtual {v8, v0, v1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v10

    aget v1, v1, v14

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v2

    invoke-direct {v8, v2, v7}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v1, v10

    float-to-int v11, v3

    aget v1, v1, v14

    float-to-int v12, v1

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v10, v0

    move v9, v14

    move v14, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v10

    move/from16 v4, v17

    move v11, v5

    move/from16 v5, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->manageReorderOnDragOver(Lcom/android/launcher3/DropTarget$DragObject;FZIIII)V

    iget v0, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v9, :cond_8

    if-eq v0, v11, :cond_8

    if-nez v10, :cond_9

    :cond_8
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nothing/launcher/widget/a;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-boolean p2, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne p2, p0, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p2

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->FOLDER_STATE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/launcher3/LauncherState;->FOLDER_SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    :goto_5
    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 42

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget-object v15, v8, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v15, :cond_0

    invoke-direct {v8, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-ne v0, v8, :cond_3c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_1

    goto/16 :goto_22

    :cond_1
    iget-object v11, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v22, -0x1

    const/16 v23, 0x0

    if-eqz v15, :cond_29

    iget-boolean v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_29

    invoke-virtual {v8, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v15, :cond_2

    move/from16 v24, v13

    goto :goto_0

    :cond_2
    move/from16 v24, v12

    :goto_0
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v4, -0x65

    goto :goto_1

    :cond_3
    const/16 v0, -0x64

    move v4, v0

    :goto_1
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v12

    if-gez v0, :cond_4

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v15}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    :goto_2
    move v3, v0

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v13

    :goto_4
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v0, v12

    float-to-int v5, v5

    aget v0, v0, v13

    float-to-int v0, v0

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v7, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move v1, v5

    move v5, v2

    move v2, v7

    move v7, v3

    move v3, v5

    move/from16 v28, v4

    move/from16 v4, v19

    move v14, v5

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v12

    aget v1, v1, v13

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v16

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v28

    move-object v3, v15

    move/from16 v5, v16

    move v13, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_17

    :cond_7
    iget-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_8

    move v0, v2

    move v1, v3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    if-ne v3, v13, :cond_9

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    move/from16 v6, v28

    if-ne v3, v6, :cond_a

    iget v3, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v4, v12

    if-ne v3, v5, :cond_a

    iget v2, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    const/4 v3, 0x1

    aget v4, v4, v3

    if-ne v2, v4, :cond_a

    const/16 v34, 0x1

    goto :goto_5

    :cond_9
    move/from16 v6, v28

    :cond_a
    move/from16 v34, v12

    :goto_5
    if-eqz v34, :cond_b

    iget-boolean v2, v8, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v2, :cond_b

    const/16 v35, 0x1

    goto :goto_6

    :cond_b
    move/from16 v35, v12

    :goto_6
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v12

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v4, v19

    invoke-virtual {v15, v3, v2, v14, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragController;->getMotionDown()Landroid/graphics/Point;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lb3/j;->c(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v12

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v35, :cond_d

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    move v2, v12

    :goto_8
    const/4 v5, 0x2

    new-array v12, v5, [I

    if-eqz v3, :cond_e

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/16 v16, 0x1

    aput v1, v0, v16

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v0, v12, v3

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v0, v12, v16

    :goto_9
    move v10, v3

    move-object/from16 v36, v11

    move-object/from16 v26, v12

    move/from16 v38, v13

    move-object v0, v15

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    const/16 v16, 0x1

    if-eqz v2, :cond_f

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aput v22, v0, v16

    aput v22, v0, v3

    goto :goto_9

    :cond_f
    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v17, v11

    aget v11, v5, v3

    float-to-int v11, v11

    aget v5, v5, v16

    float-to-int v5, v5

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v21, 0x2

    move-object/from16 v36, v17

    move/from16 v17, v11

    move-object v11, v15

    move-object/from16 v26, v12

    const/4 v10, 0x0

    move/from16 v12, v17

    move/from16 v38, v13

    move v13, v5

    move v5, v14

    move v14, v0

    move-object v0, v15

    move v15, v1

    move/from16 v16, v5

    move/from16 v17, v4

    move-object/from16 v18, v36

    move-object/from16 v19, v3

    move-object/from16 v20, v26

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    :goto_a
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v1, v10

    const/4 v11, 0x1

    if-ltz v3, :cond_10

    aget v1, v1, v11

    if-ltz v1, :cond_10

    move v13, v11

    goto :goto_b

    :cond_10
    move v13, v10

    :goto_b
    move-object/from16 v1, v26

    if-eqz v13, :cond_12

    aget v3, v1, v10

    if-lez v3, :cond_11

    aget v3, v1, v11

    if-lez v3, :cond_11

    move v3, v11

    goto :goto_c

    :cond_11
    move v3, v10

    :goto_c
    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Match illegal resultSpan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NT-"

    invoke-static {v4, v3}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v3, v1, v10

    iget v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v3, v1, v11

    :cond_12
    move-object/from16 v12, v36

    if-eqz v13, :cond_14

    instance-of v3, v12, Lcom/nothing/launcher/widget/h;

    if-eqz v3, :cond_14

    aget v3, v1, v10

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v3, v4, :cond_13

    aget v3, v1, v11

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v3, v4, :cond_14

    :cond_13
    aget v3, v1, v10

    aget v4, v1, v11

    move-object v5, v12

    check-cast v5, Lcom/nothing/launcher/widget/h;

    invoke-interface {v5, v3, v4}, Lcom/nothing/launcher/widget/h;->applyDisplaySpan(II)V

    :cond_14
    if-eqz v13, :cond_16

    instance-of v3, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_16

    aget v3, v1, v10

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v3, v4, :cond_15

    aget v3, v1, v11

    iget v4, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v3, v4, :cond_16

    :cond_15
    aget v3, v1, v10

    iput v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v3, v1, v11

    iput v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, v12

    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, v1, v10

    aget v14, v1, v11

    invoke-static {v3, v4, v5, v14}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    move v3, v11

    goto :goto_d

    :cond_16
    move v3, v10

    :goto_d
    if-eqz v13, :cond_18

    instance-of v4, v12, Lcom/nothing/launcher/card/r;

    if-eqz v4, :cond_18

    aget v4, v1, v10

    iget v5, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v4, v5, :cond_17

    aget v4, v1, v11

    iget v5, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v4, v5, :cond_18

    :cond_17
    aget v3, v1, v10

    iput v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aget v3, v1, v11

    iput v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, v12

    check-cast v3, Lcom/nothing/launcher/card/r;

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, v1, v10

    aget v1, v1, v11

    invoke-static {v3, v4, v5, v1}, Lu2/b;->h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V

    move v14, v11

    goto :goto_e

    :cond_18
    move v14, v3

    :goto_e
    if-eqz v13, :cond_21

    move/from16 v13, v38

    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v1

    iget v2, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_19

    if-nez v25, :cond_19

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    move v15, v11

    goto :goto_f

    :cond_19
    move v15, v10

    :goto_f
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v24, :cond_1c

    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_10

    :cond_1a
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/nothing/launcher/widget/a;

    if-eqz v1, :cond_1b

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_1b
    :goto_10
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v10

    aget v16, v1, v11

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v39, v1

    move-object v1, v12

    move/from16 v17, v2

    move v2, v6

    move/from16 v18, v3

    move v3, v13

    move-object v11, v5

    move/from16 v5, v16

    move/from16 v40, v6

    move/from16 v6, v18

    move-object/from16 v41, v7

    move/from16 v7, v17

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    goto :goto_11

    :cond_1c
    move-object/from16 v39, v0

    move-object v11, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    :goto_11
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v10

    if-ne v0, v2, :cond_1d

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v0, v1, :cond_1e

    :cond_1d
    iput-boolean v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    :cond_1e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    move-object/from16 v1, v41

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iput-boolean v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    move/from16 v5, v40

    const/16 v2, -0x65

    if-eq v5, v2, :cond_1f

    instance-of v3, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1f

    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-object/from16 v4, p2

    move v7, v10

    move-object/from16 v6, v39

    invoke-direct {v8, v4, v3, v6}, Lcom/android/launcher3/Workspace;->getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;

    move-result-object v3

    goto :goto_12

    :cond_1f
    move-object/from16 v4, p2

    move v7, v10

    move-object/from16 v6, v39

    move-object/from16 v3, v23

    :goto_12
    if-eq v5, v2, :cond_20

    instance-of v2, v12, Lcom/nothing/launcher/card/r;

    if-eqz v2, :cond_20

    move-object v2, v12

    check-cast v2, Lcom/nothing/launcher/card/r;

    invoke-virtual {v2}, Lcom/nothing/launcher/card/r;->getCardWidgetInfo()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v10

    if-eqz v10, :cond_20

    invoke-virtual {v10}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->a0()Z

    move-result v10

    if-eqz v10, :cond_20

    iget-boolean v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v4, :cond_20

    new-instance v3, Lcom/android/launcher3/t4;

    invoke-direct {v3, v8, v2, v6}, Lcom/android/launcher3/t4;-><init>(Lcom/android/launcher3/Workspace;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    :cond_20
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v26

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v30

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v31

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v27, v11

    move/from16 v28, v5

    move/from16 v29, v13

    move/from16 v32, v0

    move/from16 v33, v1

    invoke-virtual/range {v26 .. v33}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_16

    :cond_21
    move-object v6, v0

    move v7, v10

    if-nez v2, :cond_22

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    :cond_22
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/nothing/launcher/widget/a;

    if-eqz v0, :cond_23

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    goto :goto_13

    :cond_23
    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    aput v3, v2, v7

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    aput v0, v2, v1

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_14

    :cond_24
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_15

    :cond_25
    :goto_14
    move-object/from16 v0, v23

    :goto_15
    if-eqz v0, :cond_26

    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_26
    move v15, v7

    move-object/from16 v3, v23

    :goto_16
    move-object v13, v3

    const-wide/16 v10, 0x1f4

    goto :goto_18

    :cond_27
    :goto_17
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    :cond_28
    return-void

    :cond_29
    move-object v4, v10

    move v7, v12

    move-object v6, v15

    move-object v12, v11

    const-wide/16 v10, 0x1f4

    instance-of v0, v12, Lcom/nothing/launcher/widget/a;

    if-eqz v0, :cond_2a

    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v1, v12

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v8, v4, v1, v0}, Lcom/android/launcher3/Workspace;->getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;

    move-result-object v3

    move-object v13, v3

    move v14, v7

    move v15, v14

    move/from16 v34, v15

    move/from16 v35, v34

    goto :goto_18

    :cond_2a
    move v14, v7

    move v15, v14

    move/from16 v34, v15

    move/from16 v35, v34

    move-object/from16 v13, v23

    :goto_18
    if-eqz v12, :cond_2c

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_19

    :cond_2b
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    move-object v5, v0

    goto :goto_1a

    :cond_2c
    :goto_19
    move-object/from16 v5, v23

    :goto_1a
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz v35, :cond_31

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/j;

    invoke-direct {v3, v0}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x1

    invoke-interface {v1, v4, v6}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v2, v3, v12, v1}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v3, 0x0

    if-nez v13, :cond_2d

    goto :goto_1b

    :cond_2d
    new-instance v6, Lcom/android/launcher3/f4;

    invoke-direct {v6, v0, v13}, Lcom/android/launcher3/f4;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    invoke-static {v6}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v23

    :goto_1b
    move-object/from16 v0, v23

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1c

    :cond_2e
    if-eqz v13, :cond_2f

    new-instance v1, Lcom/android/launcher3/w4;

    invoke-direct {v1, v0, v13}, Lcom/android/launcher3/w4;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    :cond_2f
    :goto_1c
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    if-eqz v5, :cond_30

    invoke-virtual {v5, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_30
    return-void

    :cond_31
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    const/4 v2, 0x5

    if-eq v0, v2, :cond_33

    const/16 v0, 0x64

    invoke-static {v1, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_1d

    :cond_32
    move/from16 v37, v7

    goto :goto_1e

    :cond_33
    :goto_1d
    const/16 v37, 0x1

    :goto_1e
    if-eqz v37, :cond_35

    if-eqz v6, :cond_35

    if-eqz v5, :cond_35

    if-eqz v14, :cond_34

    const/4 v7, 0x2

    :cond_34
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move-object v15, v5

    move v5, v7

    move-object v6, v12

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    move-object v0, v15

    goto :goto_1f

    :cond_35
    move-object v0, v5

    if-eqz v15, :cond_36

    const/16 v22, 0x12c

    :cond_36
    move/from16 v1, v22

    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v2

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2, v3, v12, v1, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    goto :goto_1f

    :cond_37
    move-object v0, v5

    iput-boolean v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1f
    if-eqz v0, :cond_38

    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_38
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-nez v13, :cond_39

    goto :goto_20

    :cond_39
    invoke-static {v13}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v23

    :goto_20
    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_21

    :cond_3a
    if-eqz v13, :cond_3b

    invoke-static {v13}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    :cond_3b
    :goto_21
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    move/from16 v12, v34

    goto :goto_23

    :cond_3c
    :goto_22
    move v7, v12

    move-object v6, v15

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    float-to-int v2, v2

    aput v2, v0, v7

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    aput v1, v0, v2

    invoke-direct {v8, v0, v6, v9}, Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    move v12, v7

    :goto_23
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3d

    if-nez v12, :cond_3d

    const v1, 0x7f12013c

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_3d
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 2

    if-eqz p3, :cond_0

    if-eq p1, p0, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/nothing/launcher/widget/a;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v0, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->canInterceptTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->notSupportTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p0, "Launcher.Workspace"

    const-string p1, "notSupportTouch"

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->notifyTouchComplete(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    return-void
.end method

.method public onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 2
    .param p3    # Lcom/android/launcher3/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12012e

    goto :goto_0

    :cond_0
    const p1, 0x7f1201ef

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-interface {p0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/b$b;

    iget v2, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {v0, v2}, Ll0/b$b;->onOverlayScrollChanged(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onPageEndTransition()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mMoveToView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mMoveToView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object p4, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-eq p1, p4, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldConsumeTouch(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->canInterceptTouchEvent()Z

    move-result v0

    const-string v1, "Launcher.Workspace"

    if-eqz v0, :cond_0

    const-string p0, "Consume current touch event for drop anim running case."

    invoke-static {v1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->notSupportTouch()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p0, "notSupportTouch"

    invoke-static {v1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->notifyTouchComplete(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string p0, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, p0

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    return-void
.end method

.method public removeExtraEmptyScreen(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    new-instance v0, Lcom/android/launcher3/u4;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/u4;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/launcher3/i4;

    invoke-direct {p1, p0}, Lcom/android/launcher3/i4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public removeFolderListeners()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/Workspace$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object v7, p0, Lcom/android/launcher3/Workspace;->removingAnimatingView:Landroid/view/View;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    instance-of v8, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v7, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    :cond_0
    instance-of v9, v7, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v9, v8, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8, v9, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    check-cast v7, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isAnimatingForRemovingView()Z

    move-result p1

    const-string v0, "Launcher.Workspace"

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->skipStripEmptyScreens()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "removeItemsByMatcher: In spring drag mode ,skip current empty remove action. "

    invoke-static {v0, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    goto :goto_3

    :cond_5
    const-string p0, "removeItemsByMatcher: wait stripEmptyScreens until animation on view is done"

    invoke-static {v0, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public removeWidget(I)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/q4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/q4;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_1
    return-void
.end method

.method public resetTransitionTransform()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public scrollLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1
    return v0
.end method

.method public scrollRight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1
    return v0
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :cond_1
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    goto :goto_0

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    :cond_4
    return-void
.end method

.method public setFinalTransitionTransform()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_0

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateWorkspaceWidgetsSizes()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setPageIndicatorInset()V

    return-void
.end method

.method public setLauncherOverlay(Ll0/b$a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Ll0/b$a;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-interface {p1, p0}, Ll0/b$a;->h(Ll0/b$b;)V

    move-object p1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setPivotToScaleWithSelf(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/LauncherState;->onLeavingState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setState(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$1;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/LauncherState;->onLeavingState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    sget p2, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mTouchCompleteListener:Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;

    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-static {v0}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showPageIndicatorAtCurrentScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    :goto_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/Workspace$3;

    sget-object v2, Lcom/android/launcher3/l4;->a:Lcom/android/launcher3/l4;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    invoke-virtual {p0, v0, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method public stripEmptyScreens()V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    move v5, v4

    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stripEmptyScreens remove:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Launcher.Workspace"

    invoke-static {v9, v8}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-le v8, v3, :cond_7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v1, :cond_8

    const/16 v6, -0xc8

    goto :goto_3

    :cond_8
    const/16 v6, -0xc9

    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-lez v5, :cond_a

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_a
    return-void
.end method

.method public stripEmptyScreensAfterAnimationEnd(Landroid/view/View;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stripEmptyScreensAfterAnimationEnd: state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dragInfo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.Workspace"

    invoke-static {v0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->skipStripEmptyScreens()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->removingAnimatingView:Landroid/view/View;

    const-string p0, "stripEmptyScreensAfterAnimationEnd: In spring drag mode ,skip current empty remove action. "

    invoke-static {v0, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->removingAnimatingView:Landroid/view/View;

    return-void
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateAccessibilityFlags()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    aput v3, v2, v1

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, p0, v2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    aget v0, v2, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher3/m4;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/m4;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    new-instance p1, Lcom/android/launcher3/r4;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/r4;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherWidgetHolder;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/launcher3/Workspace$9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_2
    :goto_1
    return-void
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    return p0

    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 1

    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v3, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    return v1

    :cond_1
    iget v2, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v2, v0, :cond_2

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz p2, :cond_9

    if-nez v2, :cond_9

    if-eqz p3, :cond_4

    iget-boolean p0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p2, -0x67

    if-eq p0, p2, :cond_5

    move p0, v0

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_1
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_7

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move p1, v1

    goto :goto_3

    :cond_7
    :goto_2
    move p1, v0

    :goto_3
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    return v0

    :cond_9
    :goto_5
    return v1
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 1

    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public workspaceIconsCanBeDragged()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherState;

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p0

    return p0
.end method
