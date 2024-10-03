.class public abstract Lcom/android/quickstep/views/RecentsView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
.implements Lcom/android/quickstep/util/TaskVisualsChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;,
        Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;,
        Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ACTIVITY_TYPE:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/launcher3/PagedView;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
        "Lcom/android/quickstep/util/TaskVisualsChangeListener;"
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.05f

.field private static final ADDITION_TASK_DURATION:I = 0xc8

.field public static final ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANIMATION_DISMISS_PROGRESS_MIDPOINT:F = 0.5f

.field private static final COLOR_TINT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIONS_VIEW_ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final DISMISS_TASK_DURATION:I = 0x12c

.field private static final END_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.75f

.field public static final FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.55f

.field public static final LANDSCAPE_TASK_VIEW_OFFSET_TRANSLATION_ENTER_ORIENTATION_CHANGE:F = 200.0f

.field private static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x10e

.field public static final PORTRAIT_TASK_VIEW_OFFSET_TRANSLATION_ENTER_ORIENTATION_CHANGE:F = 100.0f

.field public static final RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE:F = 0.15f

.field private static final SPLIT_SELECTION_TIMEOUT:J = 0x3e8L

.field public static final STAND_PATH_INTER:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "RecentsView"

.field public static final TASK_MODALNESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_VIEW_ICON_ORIENTATION_ALPHA_DURATION:I = 0x50

.field public static final TASK_VIEW_OFFSET_TRANSLATION_EXIT_ORIENTATION_CHANGE:F = 50.0f

.field public static final TASK_VIEW_ORIENTATION_EXIT_ALPHA_DURATION:I = 0x96

.field public static final TASK_VIEW_ORIENTATION_TRANSLATION_DURATION:I = 0x12c

.field public static final UPDATE_SYSUI_FLAGS_THRESHOLD:F = 0.85f


# instance fields
.field private final INVALID_TASK_IDS:[I

.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mActionsViewAlphaAnimatorFinalValue:F

.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TACTIVITY_TYPE;"
        }
    .end annotation
.end field

.field private mAdjacentPageHorizontalOffset:F

.field private mClampedScrollOffsetBound:I

.field private final mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

.field private final mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

.field private mClearAllShortTotalWidthTranslation:I

.field private mColorTint:F

.field protected mContentAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDesktopTaskViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/quickstep/views/DesktopTaskView;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisallowScrollToClearAll:Z

.field private mDownX:I

.field private mDownY:I

.field private final mEmptyIcon:Landroid/graphics/drawable/Drawable;

.field private final mEmptyMessage:Ljava/lang/CharSequence;

.field private final mEmptyMessagePadding:I

.field private final mEmptyMessagePaint:Landroid/text/TextPaint;

.field private mEmptyTextLayout:Landroid/text/Layout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mEnableDrawingLiveTile:Z

.field private final mFastFlingVelocity:F

.field private final mFilterState:Lcom/android/quickstep/RecentsFilterState;

.field private mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mFocusedTaskViewId:I

.field protected mFreezeViewVisibility:Z

.field protected mFullscreenProgress:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mGestureActive:Z

.field private mGridProgress:F

.field private final mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/quickstep/views/GroupedTaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleTaskStackChanges:Z

.field private final mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

.field private final mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIgnoreResetTaskId:I

.field private mIsOrientationChangeEnter:Z

.field private mIsTaskLaunchedAnimOn:Z

.field protected final mLastComputedDesktopTaskSize:Landroid/graphics/Rect;

.field protected final mLastComputedGridSize:Landroid/graphics/Rect;

.field protected final mLastComputedGridTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mLastComputedTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLastMeasureSize:Landroid/graphics/Point;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mLoadPlanEverApplied:Z

.field private final mModel:Lcom/android/quickstep/RecentsModel;

.field private mMovingTaskView:Lcom/android/quickstep/views/TaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

.field private mOverScrollShift:I

.field private mOverlayEnabled:Z

.field private mOverviewFullscreenEnabled:Z

.field private mOverviewGridEnabled:Z

.field private mOverviewSelectEnabled:Z

.field private mOverviewStateEnabled:Z

.field private mOverviewTip:Lcom/android/quickstep/views/WindowModeTipsView;

.field private mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPipCornerRadius:I

.field private mPipShadowRadius:I

.field private mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

.field private mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

.field protected mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRunningTaskShowScreenshot:Z

.field protected mRunningTaskTileHidden:Z

.field protected mRunningTaskViewId:I

.field private final mScrollHapticMinGapMillis:I

.field private final mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSecondSplitHiddenView:Lcom/android/quickstep/views/TaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedTask:Lcom/android/quickstep/views/TaskView;

.field private mShouldClampScrollOffset:Z

.field private mShowAsGridLastOnLayout:Z

.field private mShowEmptyMessage:Z

.field private mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TSTATE_TYPE;TACTIVITY_TYPE;>;"
        }
    .end annotation
.end field

.field private mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSplitHiddenTaskViewIndex:I

.field private mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

.field private final mSplitPlaceholderInset:I

.field private final mSplitPlaceholderSize:I

.field private mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private final mSplitUnsupportedToast:Landroid/widget/Toast;

.field private final mSquaredTouchSlop:F

.field private mSwipeDownShouldLaunchApp:Z

.field protected mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTaskGridVerticalDiff:F

.field protected mTaskHeight:I

.field private mTaskIconScaledDown:Z

.field private mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTaskListChangeId:I

.field protected mTaskModalness:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTaskThumbnailSplashAlpha:F

.field private final mTaskViewDeadZoneRect:Landroid/graphics/Rect;

.field private mTaskViewIdCount:I

.field private final mTaskViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskViewsPrimarySplitTranslation:F

.field protected mTaskViewsSecondarySplitTranslation:F

.field protected mTaskViewsSecondaryTranslation:F

.field protected mTaskWidth:I

.field private final mTempFloat:[F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPointF:Landroid/graphics/PointF;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected final mTempRectF:Landroid/graphics/RectF;

.field private mTintingAnimator:Landroid/animation/ObjectAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTintingColor:I

.field private mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTopBottomRowHeightDiff:F

.field private final mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

.field private mTouchDownToStartHome:Z

.field private splitAnimationTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/quickstep/views/RecentsView$1;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$2;

    const-string v1, "fullscreenProgress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$3;

    const-string v1, "taskModalness"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$4;

    const-string v1, "adjacentPageHorizontalOffset"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$5;

    const-string v1, "colorTint"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->COLOR_TINT:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$6;

    const-string v1, "taskSecondaryTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$7;

    const-string v1, "taskPrimarySplitTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$8;

    const-string v1, "taskSecondarySplitTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$9;

    const-string v1, "recentsScale"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$10;

    const-string v1, "recentsGrid"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$11;

    const-string v1, "taskThumbnailSplashAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->STAND_PATH_INTER:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
    .locals 15
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p4

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mIsOrientationChangeEnter:Z

    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

    iput-object v9, v6, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedDesktopTaskSize:Landroid/graphics/Rect;

    iput-object v9, v6, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    iput-object v9, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    iput-object v9, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x1

    new-array v1, v10, [F

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskThumbnailSplashAlpha:F

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iput v8, v6, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    iput v8, v6, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    new-instance v2, Lcom/android/quickstep/views/RecentsView$12;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/RecentsView$12;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    new-instance v2, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-direct {v2, v9}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;-><init>(Lcom/android/quickstep/views/RecentsView$1;)V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    const/4 v2, -0x1

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v6, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v6, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120278

    invoke-static {v1, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    new-instance v1, Lcom/android/quickstep/views/RecentsView$13;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$13;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    new-instance v11, Lcom/android/quickstep/RecentsFilterState;

    invoke-direct {v11}, Lcom/android/quickstep/RecentsFilterState;-><init>()V

    iput-object v11, v6, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    new-instance v1, Lcom/android/quickstep/views/q;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/q;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->splitAnimationTimeoutRunnable:Ljava/lang/Runnable;

    iput-boolean v8, v6, Lcom/android/quickstep/views/RecentsView;->mIsTaskLaunchedAnimOn:Z

    invoke-virtual {p0, v10}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v12, v6, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    new-instance v13, Lcom/android/quickstep/util/RecentsOrientedState;

    new-instance v1, Lcom/android/quickstep/views/h1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/h1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-direct {v13, v7, v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V

    iput-object v13, v6, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v12}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mScrollHapticMinGapMillis:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/ClearAllButton;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    new-instance v1, Lcom/android/quickstep/views/t0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/t0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/android/launcher3/util/ViewPool;

    const v3, 0x7f0e014d

    const/16 v4, 0x14

    const/16 v5, 0xa

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v14, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    new-instance v14, Lcom/android/launcher3/util/ViewPool;

    const v3, 0x7f0e014f

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v14, v6, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    new-instance v14, Lcom/android/launcher3/util/ViewPool;

    const v3, 0x7f0e014e

    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v14, v6, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    iget-object v0, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSquaredTouchSlop:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07057b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mClampedScrollOffsetBound:I

    const v0, 0x7f0802b3

    invoke-virtual {v7, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v0, 0x7f12022d

    invoke-virtual {v7, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    const v1, 0x7f0405b6

    invoke-static {v7, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/Themes;->getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    invoke-virtual {v13}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const-class v0, Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12025a

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskOverlayFactory;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    const v1, 0x7f0e006f

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    invoke-static/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MULTI_INSTANCE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/quickstep/views/n;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/n;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v11, v0}, Lcom/android/quickstep/RecentsFilterState;->setOnFilterUpdatedListener(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v11, v9}, Lcom/android/quickstep/RecentsFilterState;->setFilterBy(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic A(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$addDismissedTaskAnimations$15(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createSplitSelectInitAnimation$33(Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void
.end method

.method public static synthetic C(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$setTaskViewsResistanceTranslation$32(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$showCurrentTask$14()V

    return-void
.end method

.method public static synthetic E(Lcom/android/quickstep/views/RecentsView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$getEventDispatcher$43(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$updatePageOffsets$31(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic H(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$onAttachedToWindow$2(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic I(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$onLayout$30(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic J(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateRecentsRotationInPlace(I)V

    return-void
.end method

.method public static synthetic K(Lcom/android/quickstep/views/RecentsView;[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->lambda$launchSideTaskInLiveTileMode$4([Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic L(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$updateClearAllFunction$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$25(Landroid/view/View;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic N(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$confirmSplitSelect$34(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic O(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$dispatchScrollChanged$45(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic P(Lcom/android/quickstep/views/RecentsView;FFLandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->lambda$getEventDispatcher$44(FFLandroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic Q(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLaunchAnimation$39(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$24(Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/views/RecentsView;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$applyLoadPlan$5(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/views/RecentsView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$applyLoadPlan$6(II)V

    return-void
.end method

.method public static synthetic U(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->dismissAllTasks(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateToFullscreen(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$animateToFullscreen$20(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic X(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$createInitialSplitSelectAnimation$17()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$reset$11()V

    return-void
.end method

.method public static synthetic Z(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$reset$10(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$confirmSplitSelect$35(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    return p0
.end method

.method static synthetic access$1000(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/quickstep/views/RecentsView;F)F
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->enableLayoutTransitions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/RecentsFilterState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->removeTaskInternal(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$2202(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$2902(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setColorTint(F)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/quickstep/views/RecentsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getHighestVisibleTaskIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return p0
.end method

.method static synthetic access$3700(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getColorTint()F

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/android/quickstep/views/RecentsView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4312(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/quickstep/views/RecentsView;ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/OverviewActionsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskViewsSnapshotRadius()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mPipCornerRadius:I

    return p1
.end method

.method static synthetic access$5202(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mPipShadowRadius:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->invalidateTaskList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    return p0
.end method

.method static synthetic access$800(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskThumbnailSplashAlpha(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskThumbnailSplashAlpha:F

    return p0
.end method

.method private addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V
    .locals 7

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v3, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getSecondaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v3}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Li0/h;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v6, 0x7f070177

    invoke-interface {v3, v6}, Li0/h;->getFloat(I)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v4

    const v6, 0x7f070178

    invoke-interface {v3, v6}, Li0/h;->getFloat(I)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v6, 0x0

    mul-int/2addr v2, v1

    mul-int/2addr v2, v5

    int-to-float v1, v2

    aput v1, v4, v6

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p2, p3, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    iget-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/quickstep/views/w;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/views/w;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p4, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private animateActionsViewAlpha(FJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimatorFinalValue:F

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateActionsViewIn()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isFocusedTaskInExpectedScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x78

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewAlpha(FJ)V

    :cond_1
    return-void
.end method

.method private animateRecentsRotationInPlace(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lb3/t;->h(Lcom/android/quickstep/views/RecentsView;F)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/quickstep/views/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/r;-><init>(Lcom/android/quickstep/views/RecentsView;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateToFullscreen(Landroid/view/View;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/FloatingTaskView;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x1f4

    goto :goto_0

    :cond_0
    const/16 p1, 0x14d

    :goto_0
    new-instance v6, Lcom/android/launcher3/anim/PendingAnimation;

    int-to-long v1, p1

    invoke-direct {v6, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/views/FloatingTaskView;->addConfirmAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    new-instance p1, Lcom/android/quickstep/views/m0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/m0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v6, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic b0(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$new$47()V

    return-void
.end method

.method public static synthetic c0(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$finishRecentsAnimation$42(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkSplitAnimationTimeout(J)V
    .locals 2

    const-string v0, "RecentsView"

    const-string v1, "checkSplitAnimationTimeout -> start check timeout."

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->splitAnimationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Ly2/c;->j(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->splitAnimationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Ly2/c;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 10

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {v1}, Lcom/android/quickstep/util/AnimUtils;->getDeviceOverviewToSplitTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object v7

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/views/l1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/l1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    new-instance v4, Lcom/android/quickstep/views/k1;

    invoke-direct {v4, p0}, Lcom/android/quickstep/views/k1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2, v4}, Lcom/android/quickstep/util/SplitAnimationController;->getFirstAnimInitViews(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getOriginalView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState(Z)V

    const-string v0, "RecentsView"

    const-string v1, " createInitialSplitSelectAnimation mSplitSelectSource originView is null "

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->isAnimateCurrentTaskDismissal()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/quickstep/views/TaskView;->setThumbnailVisibility(II)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getIconView()Landroid/view/View;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getIconFadeStartOffset()F

    move-result v5

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getIconFadeEndOffset()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p1, v2, v8, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getOriginalView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v4, v5, v6, v3}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->getFadeWithThumbnail()Z

    move-result v5

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask()Z

    move-result v6

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingTaskView;->addStagingAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LAUNCH_FROM_STAGED_APP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    new-instance v2, Lcom/android/quickstep/views/e1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/e1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v1}, Lcom/android/quickstep/views/SplitInstructionsView;->getSplitInstructionsView(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsContainerFadeInStartOffset()F

    move-result v3

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsContainerFadeInEndOffset()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p1, v1, v9, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/SplitInstructionsView;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsTextFadeInStartOffset()F

    move-result v3

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsTextFadeInEndOffset()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p1, v1, v9, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    sget-object v3, Lcom/android/quickstep/views/SplitInstructionsView;->UNFOLD:Landroid/util/FloatProperty;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsUnfoldStartOffset()F

    move-result v6

    invoke-interface {v7}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsUnfoldEndOffset()F

    move-result v7

    invoke-static {v1, v6, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    const/16 v1, 0x31

    const-string v2, "First tile selected"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    new-instance v1, Lcom/android/quickstep/views/RecentsView$18;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$18;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/quickstep/views/q0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/q0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d0(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$22(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private dismissAllTasks(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private dismissCurrentTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    :cond_0
    return-void
.end method

.method private dismissTask(I)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    return-void
.end method

.method private dispatchScrollChanged()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/views/j0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/j0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic e0(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createInitialSplitSelectAnimation$19(Ljava/lang/Boolean;)V

    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$17;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$17;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private executeSideTaskLaunchCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    :cond_0
    return-void
.end method

.method public static synthetic f0(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$animateRecentsRotationInPlace$13(I)V

    return-void
.end method

.method public static synthetic g0(Lcom/android/quickstep/views/RecentsView;I[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLaunchAnimation$36(I[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowTaskCountForTablet()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getColorTint()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    return p0
.end method

.method private getFirstViewIndex()I
    .locals 2

    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :cond_2
    return v1
.end method

.method public static getForegroundScrimDimColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f040405

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    const/high16 v0, -0x1000000

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private getHighestVisibleTaskIndex()I
    .locals 8

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_1
    if-ge v5, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v5
.end method

.method private getHorizontalOffsetSize(IIF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p2, v2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/graphics/RectF;)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p2

    neg-float p2, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    sub-float p2, p1, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p2, p0

    mul-float/2addr p2, p3

    return p2
.end method

.method private getLastGridTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method private getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method private getLastTaskEnd()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private getLastTaskScroll(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result v0

    add-int/2addr p2, v0

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private getLastViewIndex()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getOffsetFromScrollPosition(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p0

    return p0
.end method

.method private getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq p1, v3, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p1

    invoke-direct {p0, v0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p2

    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr p3, v0

    sub-int/2addr p1, p2

    mul-int/2addr p3, p1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastTaskEnd()I

    move-result p1

    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    neg-int p3, p3

    :goto_0
    add-int/2addr p1, p3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    if-eqz p2, :cond_5

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int/2addr p1, p0

    return p1
.end method

.method private getPersistentChildPosition(IILandroid/graphics/RectF;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationY()F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    :goto_0
    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    neg-int p2, p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSnapToLastTaskScrollDiff()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->getLastTaskScroll(II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getTaskBounds(Lcom/android/quickstep/views/TaskView;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(I)I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    neg-int v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    float-to-int p0, p0

    invoke-virtual {v3, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v3
.end method

.method private getTaskIdsForTaskViewId(I)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object p0

    return-object p0
.end method

.method private getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->setTaskViewId(I)V

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    return-object p1
.end method

.method private getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getTaskViewIdFromTaskId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getTopRowIdArray()Lcom/android/launcher3/util/IntArray;
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getUnclampedScrollOffset(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getOverScrollShift()I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private getUndampedOverScrollShift()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    check-cast v1, Lcom/android/launcher3/util/TranslateEdgeEffect;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    check-cast v0, Lcom/android/launcher3/util/TranslateEdgeEffect;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    aget v0, v0, v3

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    int-to-float p0, v2

    mul-float/2addr v1, p0

    return v1
.end method

.method private getVerticalOffsetSize(IF)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskBounds(Lcom/android/quickstep/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v5, :cond_3

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    neg-int p0, p0

    :goto_2
    int-to-float v0, p0

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    goto :goto_2

    :cond_4
    :goto_3
    mul-float/2addr v0, p2

    :cond_5
    :goto_4
    return v0
.end method

.method private hasAnyValidTaskIds([I)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasDesktopTask([Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 4

    sget-boolean p0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length p0, p1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static synthetic i(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$animateRecentsRotationInPlace$12()V

    return-void
.end method

.method private initExtraDecor()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b02be

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/WindowModeTipsView;

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewTip:Lcom/android/quickstep/views/WindowModeTipsView;

    return-void
.end method

.method private invalidateTaskList()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    return-void
.end method

.method private isFocusedTaskInExpectedScrollPosition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->isTaskInExpectedScrollPosition(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isModal()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p2

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq p1, v1, :cond_4

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method private isTaskViewFullyWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(Z)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, v0

    if-lt v0, p2, :cond_0

    if-gt p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(Z)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, v0

    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_1

    :cond_0
    if-lt p0, p2, :cond_2

    if-gt p0, p3, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$onDetachedFromWindow$3(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic k(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$removeTaskInternal$27(II)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createAllTasksDismissAnimation$29(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$addDismissedTaskAnimations$15(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p2

    iget-object p2, p2, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p0

    iput p0, p2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private synthetic lambda$addDismissedTaskAnimations$16(Lcom/android/quickstep/views/TaskView;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/views/w0;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/w0;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    return-void
.end method

.method private synthetic lambda$animateRecentsRotationInPlace$12()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsOrientationChangeEnter:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lb3/t;->h(Lcom/android/quickstep/views/RecentsView;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationExitSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private synthetic lambda$animateRecentsRotationInPlace$13(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsOrientationChangeEnter:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/quickstep/views/p1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/p1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentChangeOrientationEnterSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$animateToFullscreen$20(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method private synthetic lambda$animateToFullscreen$21(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    new-instance v0, Lcom/android/quickstep/views/o0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/o0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SplitSelectStateController;->launchInitialAppFullscreen(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$applyLoadPlan$5(Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$applyLoadPlan$6(II)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView#applyLoadPlan() -> previousCurrentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", targetPage: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getScrollForPage(targetPage): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "b/246283207"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private synthetic lambda$confirmSplitSelect$34(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method private synthetic lambda$confirmSplitSelect$35(Ljava/lang/Boolean;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->checkSplitAnimationTimeout(J)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    new-instance v0, Lcom/android/quickstep/views/n0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/n0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SplitSelectStateController;->launchSplitTasks(Ljava/util/function/Consumer;)V

    const/16 p0, 0x31

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    return-void
.end method

.method private synthetic lambda$createAllTasksDismissAnimation$28()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/views/a0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/views/a0;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->removeTasksViewsAndClearAllButton()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    return-void
.end method

.method private synthetic lambda$createAllTasksDismissAnimation$29(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/android/quickstep/views/q1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/q1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method private synthetic lambda$createInitialSplitSelectAnimation$17()Lcom/android/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method private synthetic lambda$createInitialSplitSelectAnimation$18()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    return-object p0
.end method

.method private synthetic lambda$createInitialSplitSelectAnimation$19(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x31

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    return-void
.end method

.method private synthetic lambda$createSplitSelectInitAnimation$33(Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshSplashView()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    return-void
.end method

.method private static synthetic lambda$createTaskDismissAnimation$22(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createTaskDismissAnimation$23(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    invoke-virtual {v0, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private synthetic lambda$createTaskDismissAnimation$24(Lcom/android/quickstep/views/TaskView;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/views/z0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/z0;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    return-void
.end method

.method private synthetic lambda$createTaskDismissAnimation$25(Landroid/view/View;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p2

    iget-object p2, p2, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result p0

    iput p0, p2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private synthetic lambda$createTaskDismissAnimation$26(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/views/u0;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/u0;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    return-void
.end method

.method private synthetic lambda$createTaskLaunchAnimation$36(I[ZLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :goto_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p3

    const/4 p3, 0x1

    if-ltz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    aget-boolean v0, p2, v2

    if-eq p1, v0, :cond_2

    aput-boolean p1, p2, v2

    invoke-virtual {p0, p3, p3}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_2

    xor-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createTaskLaunchAnimation$37(Landroid/view/animation/Interpolator;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {p2, p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->addOverviewToAppAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static synthetic lambda$createTaskLaunchAnimation$38(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method private synthetic lambda$createTaskLaunchAnimation$39(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object p2

    const/4 v2, 0x1

    aget p2, p2, v2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz p2, :cond_0

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p2

    iget-object p2, p2, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    sget-object v3, Lcom/android/quickstep/views/a1;->g:Lcom/android/quickstep/views/a1;

    invoke-static {p2, v2, v3}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/quickstep/views/k0;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/k0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method private synthetic lambda$dispatchScrollChanged$45(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    return-void
.end method

.method private synthetic lambda$finishRecentsAnimation$42(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    return-void
.end method

.method private synthetic lambda$getEventDispatcher$43(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private synthetic lambda$getEventDispatcher$44(FFLandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    invoke-super {p0, p3}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0, p3}, Lcom/android/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    neg-float p2, p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    invoke-super {p0, p3}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    return-void
.end method

.method private synthetic lambda$launchSideTaskInLiveTileMode$4([Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v4

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private static synthetic lambda$loadVisibleTaskData$9(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/views/RecentsView$14;

    invoke-direct {v2, p0, v1}, Lcom/android/quickstep/views/RecentsView$14;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/animation/Animator;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$47()V
    .locals 2

    const-string v0, "RecentsView"

    const-string v1, "splitAnimationTimeoutRunnable -> run(), timeout reset selection state."

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$2(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method private static synthetic lambda$onDetachedFromWindow$3(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method private synthetic lambda$onLayout$30(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    return-void
.end method

.method private static synthetic lambda$redrawLiveTile$40(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$removeTaskInternal$27(II)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$reset$10(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    return-void
.end method

.method private synthetic lambda$reset$11()V
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$resetTaskVisuals$7(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private static synthetic lambda$setInsets$8(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private synthetic lambda$setRecentsAnimationTargets$41(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p0, p1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private static synthetic lambda$setTaskViewsResistanceTranslation$32(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iput p0, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method private synthetic lambda$showCurrentTask$14()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private synthetic lambda$updateClearAllFunction$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setAndApplyFilter(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateLocusId$46(Landroid/content/LocusId;)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$updatePageOffsets$31(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iput p0, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method public static synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLaunchAnimation$38(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$23(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$updateLocusId$46(Landroid/content/LocusId;)V

    return-void
.end method

.method private onOrientationChanged()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(IZ)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRotateInSplitSelectionState()V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$createInitialSplitSelectAnimation$18()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$animateToFullscreen$21(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$createAllTasksDismissAnimation$28()V

    return-void
.end method

.method private removeTaskInternal(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/n1;

    invoke-direct {v1, p1, p0}, Lcom/android/quickstep/views/n1;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeTasksViewsAndClearAllButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$resetTaskVisuals$7(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method private safeRemoveDragLayerView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setColorTint(F)V
    .locals 4

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setGridProgress(F)V
    .locals 3

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->setGridProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/ClearAllButton;->setGridProgress(F)V

    return-void
.end method

.method private setTaskModalness(F)V
    .locals 4

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    return-void
.end method

.method private setTaskThumbnailSplashAlpha(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskThumbnailSplashAlpha:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->setTaskThumbnailSplashAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showAsFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 9

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->hasDesktopTask([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    const-string v5, "Recent"

    const/4 v6, -0x1

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v3, :cond_3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/model/Task;

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object p1, v0

    check-cast p1, Lcom/android/quickstep/views/DesktopTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1, v1, v3}, Lcom/android/quickstep/views/DesktopTaskView;->bind(Ljava/util/List;Lcom/android/quickstep/util/RecentsOrientedState;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    aget-object v7, p1, v2

    aput-object v7, v0, v2

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object p1, v3

    check-cast p1, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    aget-object v7, v0, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p1, v7, v0, v1, v8}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    move-object v0, v3

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-array v1, v1, [Lcom/android/systemui/shared/recents/model/Task;

    aget-object p1, p1, v2

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    aget-object p1, v1, v2

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCurrentTask: create new TaskView, runningTaskId = "

    goto :goto_3

    :cond_6
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_7

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCurrentTask: task has existed, runningTaskId = "

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move p1, v6

    :goto_4
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v6, p1

    :goto_5
    iput v6, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    new-instance p1, Lcom/android/quickstep/views/o;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/o;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    return-void
.end method

.method private snapToPageRelative(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    add-int/2addr v1, p2

    if-nez p3, :cond_2

    if-ltz v1, :cond_1

    if-lt v1, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/2addr v1, p1

    rem-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    return p0
.end method

.method private switchToScreenshotInternal(Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$setInsets$8(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$loadVisibleTaskData$9(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method private unloadVisibleTaskData(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, p1}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method private updateActionsViewFocusedScroll()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isFocusedTaskInExpectedScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimatorFinalValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    :cond_1
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewAlpha(FJ)V

    :cond_2
    return-void
.end method

.method private updateChildTaskOrientations()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v0, 0x800

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->onRotationChanged()V

    :cond_2
    return-void
.end method

.method private updateCurrentTaskActionsVisibility()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v4, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateSplitButtonHiddenFlags(IZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateSplitButtonDisabledFlags(IZ)V

    sget-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/views/DesktopTaskView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/16 v4, 0x40

    invoke-virtual {v3, v4, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-static {}, Lcom/android/quickstep/utils/AppLockedModeHelper;->isWindowAppLockedSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0, v2, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    :cond_2
    return-void
.end method

.method private updateDeadZoneRects()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->inset(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/graphics/Rect;->union(IIII)V

    :cond_1
    return-void
.end method

.method private updateDesktopTaskVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateEmptyStateUi(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private updateEnabledOverlays()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateGridProperties()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    return-void
.end method

.method private updateGridProperties(Z)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    return-void
.end method

.method private updateGridProperties(ZI)V
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    new-instance v4, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v4}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v5, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-array v6, v1, [F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    const/4 v10, 0x0

    if-nez p1, :cond_1

    iget-object v11, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntSet;->clear()V

    :cond_1
    const v11, 0x7fffffff

    move-object/from16 v16, v2

    move/from16 v19, v7

    move v14, v11

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_0
    move/from16 v21, v1

    if-ge v15, v1, :cond_1b

    invoke-virtual {v0, v15}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    move-object/from16 v22, v5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v14

    iget v14, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v14

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v14

    const/high16 v24, 0x40000000    # 2.0f

    if-eqz v14, :cond_4

    add-int/2addr v12, v5

    add-int/2addr v13, v5

    aget v7, v6, v15

    int-to-float v11, v2

    add-float/2addr v7, v11

    aput v7, v6, v15

    aget v7, v6, v15

    iget-boolean v11, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v11, :cond_2

    int-to-float v11, v5

    goto :goto_1

    :cond_2
    neg-int v11, v5

    int-to-float v11, v11

    :goto_1
    add-float/2addr v7, v11

    aput v7, v6, v15

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float v7, v7, v24

    invoke-virtual {v1, v7}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    move/from16 v14, p2

    move/from16 v26, v2

    move/from16 v27, v3

    move v7, v5

    if-ne v1, v8, :cond_3

    move/from16 v20, v7

    :cond_3
    move-object v3, v8

    move v11, v15

    move-object/from16 v2, v22

    move/from16 v22, v23

    move-object/from16 v23, v9

    goto/16 :goto_14

    :cond_4
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isDesktopTask()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v14

    move-object/from16 v25, v8

    const/16 v8, 0x8

    if-ne v14, v8, :cond_5

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-nez v8, :cond_7

    aget v8, v6, v15

    iget-boolean v14, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v14, :cond_6

    goto :goto_2

    :cond_6
    neg-int v5, v5

    :goto_2
    int-to-float v5, v5

    add-float/2addr v8, v5

    aput v8, v6, v15

    :cond_7
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedDesktopTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    div-float v5, v5, v24

    invoke-virtual {v1, v5}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    :goto_3
    move/from16 v14, p2

    move/from16 v26, v2

    move/from16 v27, v3

    move-object/from16 v23, v9

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move/from16 v22, v15

    goto/16 :goto_14

    :cond_8
    move-object/from16 v25, v8

    if-le v15, v11, :cond_a

    aget v8, v6, v15

    iget-boolean v14, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v14, :cond_9

    int-to-float v14, v7

    goto :goto_4

    :cond_9
    neg-int v14, v7

    int-to-float v14, v14

    :goto_4
    add-float/2addr v8, v14

    aput v8, v6, v15

    goto :goto_6

    :cond_a
    iget-boolean v8, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v8, :cond_b

    move v8, v5

    goto :goto_5

    :cond_b
    neg-int v8, v5

    :goto_5
    add-int/2addr v2, v8

    :goto_6
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v8

    move/from16 v14, p2

    move/from16 v26, v2

    if-eqz p1, :cond_e

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    if-le v15, v14, :cond_d

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    if-gt v12, v13, :cond_c

    :goto_7
    const/16 v24, 0x1

    goto :goto_8

    :cond_c
    const/16 v24, 0x0

    goto :goto_8

    :cond_d
    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v24

    goto :goto_8

    :cond_e
    if-gt v12, v13, :cond_c

    goto :goto_7

    :goto_8
    if-eqz v24, :cond_14

    if-eqz v9, :cond_f

    if-nez v10, :cond_f

    move-object v10, v1

    goto :goto_9

    :cond_f
    add-int/2addr v12, v5

    :goto_9
    invoke-virtual {v4, v15}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v2, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v2, v15, -0x1

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v8

    if-nez v8, :cond_12

    if-ltz v2, :cond_12

    if-eq v2, v11, :cond_11

    move/from16 v8, v23

    if-ne v2, v8, :cond_10

    move/from16 v27, v3

    goto :goto_b

    :cond_10
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v23

    move/from16 v27, v3

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v23, v9

    iget v9, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    add-float/2addr v5, v3

    goto :goto_c

    :cond_11
    move/from16 v27, v3

    move/from16 v8, v23

    :goto_b
    move-object/from16 v23, v9

    :goto_c
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v9, v23

    move/from16 v3, v27

    move/from16 v23, v8

    goto :goto_a

    :cond_12
    move/from16 v27, v3

    move/from16 v8, v23

    move-object/from16 v23, v9

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_13

    goto :goto_d

    :cond_13
    neg-float v5, v5

    :goto_d
    aget v2, v6, v15

    add-float v18, v18, v5

    add-float v2, v2, v18

    aput v2, v6, v15

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move/from16 v22, v8

    goto :goto_12

    :cond_14
    move/from16 v27, v3

    move/from16 v8, v23

    move-object/from16 v23, v9

    add-int/2addr v13, v5

    move-object/from16 v2, v22

    invoke-virtual {v2, v15}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    add-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v3, v15, -0x1

    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v9

    if-nez v9, :cond_17

    if-ltz v3, :cond_17

    if-eq v3, v11, :cond_16

    if-ne v3, v8, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v8

    iget v8, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v9, v8

    int-to-float v8, v9

    add-float/2addr v5, v8

    goto :goto_10

    :cond_16
    :goto_f
    move/from16 v22, v8

    :goto_10
    add-int/lit8 v3, v3, -0x1

    move/from16 v8, v22

    goto :goto_e

    :cond_17
    move/from16 v22, v8

    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_18

    goto :goto_11

    :cond_18
    neg-float v5, v5

    :goto_11
    aget v3, v6, v15

    add-float v17, v17, v5

    add-float v3, v3, v17

    aput v3, v6, v15

    move-object/from16 v3, v25

    :goto_12
    if-ne v1, v3, :cond_1a

    if-eqz v24, :cond_19

    move v1, v12

    goto :goto_13

    :cond_19
    move v1, v13

    :goto_13
    move/from16 v20, v1

    :cond_1a
    :goto_14
    add-int/lit8 v15, v15, 0x1

    move-object v5, v2

    move-object v8, v3

    move/from16 v1, v21

    move/from16 v14, v22

    move-object/from16 v9, v23

    move/from16 v2, v26

    move/from16 v3, v27

    goto/16 :goto_0

    :cond_1b
    move-object v2, v5

    move-object v3, v8

    if-eqz v3, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(Z)F

    move-result v5

    aget v1, v6, v19

    goto :goto_15

    :cond_1c
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_15
    add-int/lit8 v8, v21, -0x1

    invoke-virtual {v4, v8}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_1d

    move/from16 v17, v18

    :cond_1d
    if-gt v12, v13, :cond_1e

    invoke-virtual {v4, v8}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    sub-int v2, v13, v12

    goto :goto_16

    :cond_1e
    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    sub-int v2, v12, v13

    :goto_16
    int-to-float v2, v2

    goto :goto_17

    :cond_1f
    const/4 v2, 0x0

    :goto_17
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_20

    neg-float v2, v2

    :cond_20
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v4, v8, :cond_24

    iget-boolean v8, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v8, :cond_21

    iget-object v9, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move v10, v9

    move-object/from16 v9, v16

    goto :goto_18

    :cond_21
    move-object/from16 v9, v16

    iget v10, v9, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v12

    :goto_18
    sub-int/2addr v10, v4

    iget v12, v9, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    sub-int/2addr v10, v12

    iput v10, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    if-eqz v8, :cond_22

    neg-int v8, v10

    int-to-float v8, v8

    goto :goto_19

    :cond_22
    int-to-float v8, v10

    :goto_19
    move v12, v8

    move/from16 v13, v20

    if-ne v13, v4, :cond_23

    add-int v20, v13, v10

    goto :goto_1a

    :cond_23
    move/from16 v20, v13

    :goto_1a
    add-int/2addr v4, v10

    const/4 v8, 0x0

    goto :goto_1b

    :cond_24
    move-object/from16 v9, v16

    move/from16 v13, v20

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    const/4 v12, 0x0

    :goto_1b
    add-float v17, v17, v2

    add-float v17, v17, v12

    add-float v17, v17, v5

    move/from16 v2, v21

    if-ge v11, v2, :cond_26

    iget-boolean v10, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v10, :cond_25

    goto :goto_1c

    :cond_25
    neg-int v7, v7

    :goto_1c
    int-to-float v7, v7

    add-float v17, v17, v7

    :cond_26
    if-eqz v3, :cond_29

    sub-int v4, v4, v20

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    goto :goto_1d

    :cond_27
    iget v7, v9, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v10, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v10

    :goto_1d
    iget v9, v9, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    sub-int/2addr v7, v9

    iget v9, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v7, v9

    iget v9, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    sub-int/2addr v7, v3

    if-ge v4, v7, :cond_29

    sub-int/2addr v7, v4

    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_28

    int-to-float v3, v7

    goto :goto_1e

    :cond_28
    neg-int v3, v7

    int-to-float v3, v3

    :goto_1e
    add-float/2addr v1, v3

    :cond_29
    move v13, v8

    :goto_1f
    if-ge v13, v2, :cond_2a

    invoke-virtual {v0, v13}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    aget v4, v6, v13

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationX(F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :cond_2a
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    sub-float v1, v17, v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/ClearAllButton;->setGridTranslationPrimary(F)V

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_20

    :cond_2b
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_20
    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/ClearAllButton;->setGridScrollOffset(F)V

    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    return-void
.end method

.method private updateOrientationHandler()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    return-void
.end method

.method private updateOrientationHandler(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setRotation(F)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->onOrientationChanged()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {v1, v3, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewTip:Lcom/android/quickstep/views/WindowModeTipsView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/quickstep/views/WindowModeTipsView;->relayoutExtraDecoration(Lcom/android/launcher3/touch/PagedOrientationHandler;ZLandroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private updatePageOffsets()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v4

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-boolean v5, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    sget-object v11, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v11}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, v0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    cmpl-float v11, v11, v10

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v8

    :goto_3
    if-eqz v11, :cond_4

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    :cond_4
    add-int/lit8 v12, v5, -0x1

    if-ltz v12, :cond_5

    invoke-direct {v0, v12, v5, v1}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v12

    goto :goto_4

    :cond_5
    move v12, v10

    :goto_4
    add-int/lit8 v13, v5, 0x1

    if-ge v13, v3, :cond_6

    invoke-direct {v0, v13, v5, v1}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v10

    :goto_5
    if-eqz v4, :cond_9

    if-nez v7, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    move v13, v8

    :goto_6
    if-ge v13, v3, :cond_8

    invoke-direct {v0, v13, v7, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v13

    goto :goto_7

    :cond_8
    move v13, v10

    :goto_7
    move v15, v10

    move v14, v13

    move v13, v15

    goto :goto_a

    :cond_9
    add-int/lit8 v13, v7, -0x1

    if-ltz v13, :cond_a

    invoke-direct {v0, v13, v7, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v13

    goto :goto_8

    :cond_a
    move v13, v10

    :goto_8
    add-int/lit8 v14, v7, 0x1

    if-ge v14, v3, :cond_b

    invoke-direct {v0, v14, v7, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v14

    goto :goto_9

    :cond_b
    move v14, v10

    :goto_9
    move v15, v14

    move v14, v10

    :goto_a
    if-ge v8, v3, :cond_16

    if-ne v8, v5, :cond_c

    move/from16 v16, v10

    goto :goto_b

    :cond_c
    if-ge v8, v5, :cond_d

    move/from16 v16, v12

    goto :goto_b

    :cond_d
    move/from16 v16, v1

    :goto_b
    if-eqz v11, :cond_f

    invoke-direct {v0, v8, v7, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    if-gt v8, v7, :cond_e

    const/4 v6, 0x1

    :cond_e
    int-to-float v6, v6

    mul-float/2addr v14, v6

    :cond_f
    if-ne v8, v7, :cond_10

    move v6, v10

    goto :goto_c

    :cond_10
    if-eqz v4, :cond_11

    move v6, v14

    goto :goto_c

    :cond_11
    if-ge v8, v7, :cond_12

    move v6, v13

    goto :goto_c

    :cond_12
    move v6, v15

    :goto_c
    add-float v6, v16, v6

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/quickstep/views/TaskView;

    if-eqz v10, :cond_13

    move-object/from16 v17, v9

    check-cast v17, Lcom/android/quickstep/views/TaskView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v17

    move/from16 v18, v3

    move-object/from16 v19, v17

    move/from16 v17, v1

    move-object/from16 v1, v19

    goto :goto_d

    :cond_13
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v1

    move/from16 v18, v3

    :goto_d
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-boolean v1, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    if-ne v8, v1, :cond_14

    new-instance v1, Lcom/android/quickstep/views/c0;

    invoke-direct {v1, v6}, Lcom/android/quickstep/views/c0;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_14
    if-eqz v4, :cond_15

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v10, :cond_15

    invoke-direct {v0, v8, v2}, Lcom/android/quickstep/views/RecentsView;->getVerticalOffsetSize(IF)F

    move-result v1

    move-object v3, v9

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getSecondaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_15
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v17

    move/from16 v3, v18

    const/4 v6, -0x1

    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    return-void
.end method

.method private updatePivots()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getModalTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSelectedTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->getPivotsForScalingRectToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method private updateSizeAndPadding()V
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {p0, v3, v2, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    sget-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedDesktopTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->calculateDesktopTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    return-void
.end method

.method private updateTaskSize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize(Z)V

    return-void
.end method

.method private updateTaskSize(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->updateTaskSize()V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v5, v6

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    neg-float v5, v5

    :goto_1
    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/ClearAllButton;->setFullscreenTranslationPrimary(F)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    return-void
.end method

.method private updateTaskStackListenerState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    :cond_1
    return-void
.end method

.method private updateTaskViewsSnapshotRadius()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$setRecentsAnimationTargets$41(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/quickstep/views/RecentsView;Landroid/view/animation/Interpolator;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLaunchAnimation$37(Landroid/view/animation/Interpolator;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$addDismissedTaskAnimations$16(Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic z(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->lambda$redrawLiveTile$40(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/j;

    invoke-direct {v0, p1}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateUpTaskIconScale()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setIconScaleAnimStartProgress(F)V

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected applyLoadPlan(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyLoadPlan start: mRunningTaskViewId,mFocusedTaskViewId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Recent"

    const-string v5, "RecentsView"

    invoke-static {v4, v5, v2}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/quickstep/views/y0;

    invoke-direct {v3, v0, v1}, Lcom/android/quickstep/views/y0;-><init>(Lcom/android/quickstep/views/RecentsView;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanEverApplied:Z

    if-eqz v1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    iget v7, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v6

    :cond_2
    const/4 v7, 0x3

    invoke-direct {v0, v7}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData(I)V

    iget v8, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    move-object v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    :goto_0
    iget v11, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {v0, v11}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v11

    iget v12, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-direct {v0, v12}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v12

    iget v13, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v14, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    if-eqz v14, :cond_4

    iget v14, v14, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    goto :goto_1

    :cond_4
    move v14, v10

    :goto_1
    iget-object v15, v0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    invoke-virtual {v15, v1}, Lcom/android/quickstep/RecentsFilterState;->updateInstanceCountMap(Ljava/util/List;)V

    iput-object v9, v0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v2

    :goto_2
    if-ltz v15, :cond_11

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/quickstep/util/GroupTask;

    if-eq v14, v10, :cond_5

    invoke-virtual {v7, v14}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v2

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    instance-of v10, v7, Lcom/android/quickstep/util/DesktopTask;

    if-eqz v10, :cond_6

    move-object v9, v7

    check-cast v9, Lcom/android/quickstep/util/DesktopTask;

    move-object/from16 v19, v4

    move/from16 v16, v14

    goto/16 :goto_b

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual {v7}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {v0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    goto :goto_4

    :cond_7
    iget v10, v7, Lcom/android/quickstep/util/GroupTask;->taskViewType:I

    invoke-direct {v0, v10}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    :goto_4
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v16, :cond_9

    invoke-virtual {v7}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v18

    if-eqz v18, :cond_9

    iget-object v2, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v14, :cond_8

    iget-object v1, v7, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v10, v1, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v10, v2, v1}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_a

    iget-object v1, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v10, v1, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_5
    move-object/from16 v19, v4

    move/from16 v16, v14

    goto :goto_a

    :cond_a
    instance-of v1, v10, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz v1, :cond_c

    iget v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    move/from16 v16, v14

    iget-object v14, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v14, v14, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v14, :cond_b

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    goto :goto_7

    :cond_c
    move/from16 v16, v14

    :goto_6
    const/16 v17, 0x1

    :goto_7
    if-eqz v17, :cond_d

    iget-object v2, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_8

    :cond_d
    iget-object v2, v7, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    :goto_8
    if-eqz v17, :cond_e

    iget-object v7, v7, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_9

    :cond_e
    iget-object v7, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_9
    move-object v14, v10

    check-cast v14, Lcom/android/quickstep/views/GroupedTaskView;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v14, v2, v7, v4, v1}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    goto :goto_a

    :cond_f
    move-object/from16 v19, v4

    move/from16 v16, v14

    iget-object v1, v7, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v10, v1, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :goto_a
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MULTI_INSTANCE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v10}, Lcom/android/quickstep/views/TaskView;->setUpShowAllInstancesListener()V

    :cond_10
    :goto_b
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v1, p1

    move/from16 v14, v16

    move-object/from16 v4, v19

    const/4 v2, 0x1

    const/4 v10, -0x1

    goto/16 :goto_2

    :cond_11
    move-object/from16 v19, v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-boolean v1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v1, :cond_12

    if-eqz v9, :cond_12

    iget-object v1, v9, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/DesktopTaskView;

    iput-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    iget-object v2, v9, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2, v4}, Lcom/android/quickstep/views/DesktopTaskView;->bind(Ljava/util/List;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_12
    invoke-virtual {v0, v12}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskIds([I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isDesktopTask()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_13

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :cond_13
    if-eqz v1, :cond_14

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    goto :goto_c

    :cond_14
    const/4 v1, -0x1

    :goto_c
    iput v1, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    invoke-direct {v0, v11}, Lcom/android/quickstep/views/RecentsView;->hasAnyValidTaskIds([I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v11}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskIds([I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    iput v1, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v1, -0x1

    goto :goto_d

    :cond_15
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    goto :goto_d

    :cond_16
    const/4 v1, -0x1

    const/4 v9, 0x0

    :goto_d
    iget v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v2, v1, :cond_18

    iput v13, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {v0, v6}, Lcom/android/quickstep/views/RecentsView;->hasAnyValidTaskIds([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskIds([I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1a

    :cond_17
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_f

    :cond_18
    invoke-direct {v0, v11}, Lcom/android/quickstep/views/RecentsView;->hasAnyValidTaskIds([I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_f

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->isDesktopTask()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_17

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    goto :goto_e

    :cond_1a
    const/4 v1, -0x1

    :goto_f
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    iget v4, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v4, v1, :cond_1b

    new-instance v4, Lcom/android/quickstep/views/s;

    invoke-direct {v4, v0, v13, v1}, Lcom/android/quickstep/views/s;-><init>(Lcom/android/quickstep/views/RecentsView;II)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :cond_1b
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    if-eq v1, v2, :cond_1c

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eq v1, v8, :cond_1c

    iput v2, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isPageScrollsInitialized()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLoadPlan end: mRunningTaskViewId,mFocusedTaskViewId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v5, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->removeTasksViewsAndClearAllButton()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isPageScrollsInitialized()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    :cond_1f
    return-void
.end method

.method protected canLaunchFullscreenTask()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cleanupRemoteTargets()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method

.method public clearIgnoreResetTask(I)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    :cond_0
    return-void
.end method

.method protected computeMaxScroll()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastViewIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method protected computeMinScroll()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeMinScroll()I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastViewIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method protected computeScrollHelper()Z
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setFlingingFast(Z)V

    return v0
.end method

.method public confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 16
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->canLaunchFullscreenTask()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectStateController;->isBothSplitAppsConfirmed()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/quickstep/utils/SplitScreenModeHelper;->supportSplitScreenMode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_4
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-virtual {v2, v3, v5}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {v5}, Lcom/android/quickstep/util/AnimUtils;->getDeviceSplitToConfirmTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object v13

    new-instance v14, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-interface {v13}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v14, v5, v6}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070418

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v15, 0x2

    div-int/lit8 v6, v5, 0x2

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v7

    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v8}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v8

    move-object v9, v12

    move-object v10, v3

    invoke-interface/range {v5 .. v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v14

    move-object v8, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/quickstep/views/FloatingTaskView;->addConfirmAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-direct {v0, v5}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static {v5, v7, v8, v6, v2}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v5

    iput-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 p2, v5

    move-object/from16 p3, v14

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-virtual/range {p2 .. p7}, Lcom/android/quickstep/views/FloatingTaskView;->addConfirmAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    const/4 v3, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v13}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsFadeStartOffset()F

    move-result v6

    invoke-interface {v13}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsFadeEndOffset()F

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v14, v2, v3, v5}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    new-instance v2, Lcom/android/quickstep/views/p0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/views/p0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v14, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    iput-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectStateController;->getSecondTaskId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/TaskView;->setThumbnailVisibility(II)V

    :cond_5
    const/16 v1, 0x31

    const-string v2, "Second tile selected"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v2, v15, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {v14}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v4

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    :goto_0
    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_2

    sget-object p1, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v1, v5, [F

    aput v3, v1, v6

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-array v1, v5, [F

    aput v9, v1, v6

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    :cond_2
    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v3, v9

    mul-float/2addr p1, v3

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    neg-float p1, p1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v4

    new-array v7, v5, [F

    aput p1, v7, v6

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_3
    if-ge v7, v4, :cond_4

    aget-object v10, v3, v7

    invoke-virtual {v10}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v10

    iget-object v10, v10, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v11, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    new-array v12, v5, [F

    aput p1, v12, v6

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    sub-int v1, v2, v1

    add-int/2addr v2, v1

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v3

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v6

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    aput v9, v3, v6

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v5

    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput v9, v3, v6

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto/16 :goto_2

    :cond_5
    :goto_4
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_0

    const-string v0, "RecentsView"

    const-string v1, "createAllTasksDismissAnimation Another pending animation is still running"

    invoke-static {v0, v1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2, v0}, Lcom/android/quickstep/views/RecentsView;->addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance p1, Lcom/android/quickstep/views/l0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/l0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public createSplitSelectInitAnimation(Lcom/android/launcher3/anim/PendingAnimation;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isAnimateCurrentTaskDismissal()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->isDismissingFromSplitPair()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v7, v0

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p2

    aget-object v2, p2, v7

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitAnimationController()Lcom/android/quickstep/util/SplitAnimationController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/util/SplitAnimationController;->addInitialSplitFromPair(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/launcher3/DeviceProfile;IIZ)V

    new-instance v0, Lcom/android/quickstep/views/v;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/views/v;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    int-to-long v6, p2

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/TaskView;ZZJZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    :goto_0
    return-void
.end method

.method public createTaskDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/TaskView;ZZJZ)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    new-array v3, v0, [I

    new-array v6, v0, [I

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v15, v9

    int-to-float v9, v15

    iget v15, v1, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v4, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v17

    if-eqz v17, :cond_3

    move v10, v9

    move/from16 v20, v15

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v10, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v10

    int-to-float v10, v10

    add-int/lit8 v13, v8, -0x1

    int-to-float v13, v13

    div-float/2addr v13, v7

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_8

    invoke-virtual {v1, v13}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    if-ne v7, v2, :cond_5

    move/from16 v20, v9

    goto :goto_3

    :cond_5
    iget-object v12, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    move/from16 v20, v9

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v9

    if-eqz v10, :cond_6

    if-nez v9, :cond_9

    :cond_6
    if-nez v10, :cond_7

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_2

    :cond_8
    move/from16 v20, v9

    const/4 v7, 0x0

    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v12, v1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    move v13, v9

    move/from16 v19, v10

    move/from16 v10, v20

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    move/from16 v19, v10

    move/from16 v10, v20

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    move/from16 v20, v15

    move-object v15, v7

    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    move/from16 v20, v9

    move/from16 v10, v20

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    move/from16 v20, v15

    goto :goto_7

    :cond_c
    sget-object v7, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9, v7}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    new-instance v7, Lcom/android/quickstep/views/m1;

    invoke-direct {v7, v2}, Lcom/android/quickstep/views/m1;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, v6, v9, v7}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    const/4 v7, 0x1

    if-le v0, v7, :cond_d

    aget v10, v3, v7

    aget v7, v3, v9

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move v12, v7

    move v7, v9

    move/from16 v19, v7

    goto :goto_6

    :cond_d
    move v7, v9

    move v12, v7

    move/from16 v19, v12

    :goto_6
    move/from16 v20, v19

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_7
    const/4 v15, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v21

    iget-object v9, v1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v9}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    if-eqz v5, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v16

    move/from16 v22, v13

    move-object/from16 v13, v16

    move/from16 v16, v10

    goto :goto_a

    :cond_f
    move/from16 v16, v10

    move/from16 v22, v13

    const/4 v13, 0x0

    :goto_a
    iget v10, v1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v10}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v10

    move-object/from16 v23, v3

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-ne v10, v3, :cond_10

    const/16 v24, 0x1

    goto :goto_b

    :cond_10
    const/16 v24, 0x0

    :goto_b
    if-eqz v13, :cond_2e

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v10

    iget-object v13, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v13}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v13

    sub-int v13, v8, v13

    sget-object v25, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v26

    const/16 v18, 0x1

    xor-int/lit8 v26, v26, 0x1

    sub-int v13, v13, v26

    if-le v10, v13, :cond_11

    move/from16 v26, v18

    goto :goto_c

    :cond_11
    const/16 v26, 0x0

    :goto_c
    if-le v13, v10, :cond_12

    move/from16 v27, v18

    goto :goto_d

    :cond_12
    const/16 v27, 0x0

    :goto_d
    iget-object v3, v1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_13

    if-nez v20, :cond_13

    move/from16 v29, v18

    goto :goto_e

    :cond_13
    const/16 v29, 0x0

    :goto_e
    if-nez v3, :cond_14

    if-eqz v20, :cond_15

    if-eqz v19, :cond_15

    :cond_14
    add-int/lit8 v10, v10, -0x1

    :cond_15
    if-nez v29, :cond_16

    if-eqz v20, :cond_17

    if-nez v19, :cond_17

    :cond_16
    add-int/lit8 v13, v13, -0x1

    :cond_17
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v13, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    move/from16 v30, v4

    iget v4, v1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v13, v4

    mul-int/2addr v10, v13

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-nez v4, :cond_18

    if-nez v7, :cond_18

    iget-object v4, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v13, v1, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v13

    add-int/2addr v10, v4

    :cond_18
    if-eqz v26, :cond_19

    if-nez v3, :cond_1a

    :cond_19
    if-eqz v27, :cond_1b

    if-eqz v29, :cond_1b

    :cond_1a
    move/from16 v3, v16

    goto :goto_f

    :cond_1b
    if-eqz v15, :cond_1e

    if-eqz v26, :cond_1c

    if-nez v19, :cond_1d

    :cond_1c
    if-eqz v27, :cond_1e

    if-nez v19, :cond_1e

    :cond_1d
    move/from16 v3, v22

    goto :goto_f

    :cond_1e
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x0

    cmpl-float v13, v3, v4

    if-lez v13, :cond_24

    iget v4, v1, Lcom/android/quickstep/views/RecentsView;->mClearAllShortTotalWidthTranslation:I

    if-nez v4, :cond_22

    iget-object v4, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v10, v4, :cond_20

    iget-object v4, v1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget-boolean v13, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v13, :cond_1f

    iget-object v13, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v25, v15

    goto :goto_10

    :cond_1f
    iget v13, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    move-object/from16 v25, v15

    iget-object v15, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    :goto_10
    sub-int/2addr v13, v10

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    sub-int/2addr v13, v4

    goto :goto_11

    :cond_20
    move-object/from16 v25, v15

    const/4 v13, 0x0

    :goto_11
    int-to-float v4, v13

    sub-float/2addr v3, v4

    iget-boolean v4, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_21

    neg-float v3, v3

    :cond_21
    const/4 v4, 0x0

    add-float/2addr v3, v4

    goto :goto_12

    :cond_22
    move-object/from16 v25, v15

    const/4 v3, 0x0

    :goto_12
    move v4, v3

    if-eqz v21, :cond_23

    move/from16 v3, v18

    goto :goto_13

    :cond_23
    const/4 v3, 0x0

    goto :goto_13

    :cond_24
    move-object/from16 v25, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-eqz v9, :cond_27

    if-nez v7, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    if-eqz v10, :cond_27

    iget-object v13, v1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v13, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v10

    iget-boolean v15, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v15, :cond_25

    if-lt v13, v10, :cond_26

    :cond_25
    if-nez v15, :cond_27

    if-le v13, v10, :cond_27

    :cond_26
    move/from16 v3, v18

    :cond_27
    if-eqz v3, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getSnapToLastTaskScrollDiff()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    goto :goto_14

    :cond_28
    if-eqz v9, :cond_29

    if-eqz v24, :cond_29

    move/from16 v3, v18

    :cond_29
    :goto_14
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    if-eqz v10, :cond_2d

    const v9, 0x3ccccccd    # 0.025f

    add-int/lit8 v10, v8, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v9

    const/high16 v13, 0x3f400000    # 0.75f

    add-float/2addr v10, v13

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v10, v13, v15}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v10

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v8, :cond_2b

    invoke-virtual {v1, v13}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    move/from16 v29, v3

    sget-object v3, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    move/from16 v31, v7

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v7, v10, v15}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v14, v9, v3, v4, v7}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    const v3, 0x3ccccccd    # 0.025f

    sub-float/2addr v10, v3

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-static {v10, v7, v15}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v10

    iget-boolean v15, v1, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v15, :cond_2a

    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v15

    if-eqz v15, :cond_2a

    new-instance v15, Lcom/android/quickstep/views/y;

    invoke-direct {v15, v1, v9}, Lcom/android/quickstep/views/y;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v14, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_2a
    add-int/lit8 v13, v13, 0x1

    move v9, v3

    move/from16 v3, v29

    move/from16 v7, v31

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_2b
    move/from16 v29, v3

    move/from16 v31, v7

    if-eqz v21, :cond_2c

    iget-object v3, v1, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    sget-object v4, Lcom/android/quickstep/views/ClearAllButton;->DISMISS_ALPHA:Landroid/util/FloatProperty;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    invoke-virtual {v14, v3, v4, v9, v7}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    new-instance v3, Lcom/android/quickstep/views/RecentsView$19;

    invoke-direct {v3, v1}, Lcom/android/quickstep/views/RecentsView$19;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v14, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2c
    move v15, v10

    move/from16 v7, v18

    goto :goto_16

    :cond_2d
    move/from16 v29, v3

    move/from16 v31, v7

    const/4 v7, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_2e
    move/from16 v30, v4

    move/from16 v31, v7

    move-object/from16 v25, v15

    const/16 v18, 0x1

    const/4 v7, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    :goto_16
    iget-object v3, v1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {v3}, Lcom/android/quickstep/util/AnimUtils;->getDeviceOverviewToSplitTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_17
    if-ge v9, v0, :cond_4b

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-ne v13, v2, :cond_32

    if-eqz p3, :cond_30

    if-eqz p7, :cond_2f

    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    move/from16 v34, v0

    move-object/from16 v26, v3

    move/from16 v27, v4

    goto :goto_19

    :cond_2f
    move-object/from16 v26, v3

    move/from16 v27, v4

    move-wide/from16 v3, p5

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/android/quickstep/views/RecentsView;->addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V

    goto :goto_18

    :cond_30
    move-object/from16 v26, v3

    move/from16 v27, v4

    move-wide/from16 v3, p5

    :goto_18
    move/from16 v34, v0

    :goto_19
    move-object/from16 v35, v6

    move/from16 v37, v7

    move/from16 v28, v8

    move/from16 v36, v12

    :cond_31
    move/from16 v17, v16

    move-object/from16 v8, v25

    goto/16 :goto_2b

    :cond_32
    move-object/from16 v26, v3

    move/from16 v27, v4

    move-wide/from16 v3, p5

    const v32, 0x3d4ccccd    # 0.05f

    const v33, 0x3f0ccccd    # 0.55f

    move/from16 v34, v0

    if-nez v5, :cond_3c

    iget-boolean v0, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_33

    move/from16 v35, v12

    goto :goto_1a

    :cond_33
    const/16 v35, 0x0

    :goto_1a
    iget v3, v1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v3, v11, :cond_34

    add-int/lit8 v4, v8, -0x1

    if-ne v3, v4, :cond_36

    if-eqz v0, :cond_35

    goto :goto_1b

    :cond_34
    add-int/lit8 v3, v3, -0x1

    if-ne v11, v3, :cond_36

    if-eqz v0, :cond_35

    :goto_1b
    neg-int v0, v12

    goto :goto_1c

    :cond_35
    move v0, v12

    :goto_1c
    add-int v35, v35, v0

    :cond_36
    aget v0, v6, v9

    aget v3, v23, v9

    sub-int/2addr v0, v3

    add-int v0, v0, v35

    if-eqz v0, :cond_3b

    instance-of v3, v13, Lcom/android/quickstep/views/TaskView;

    if-eqz v3, :cond_37

    move-object v4, v13

    check-cast v4, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v4

    goto :goto_1d

    :cond_37
    iget-object v4, v1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v4

    :goto_1d
    sub-int v27, v9, v11

    move-object/from16 v35, v6

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v27

    if-eqz v27, :cond_38

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStartOffset()F

    move-result v6

    move/from16 v28, v8

    move/from16 v36, v12

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_38
    move/from16 v28, v8

    move/from16 v36, v12

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    add-float v6, v6, v33

    :goto_1e
    invoke-static {v6, v8, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v17

    if-eqz v17, :cond_39

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStartOffset()F

    move-result v17

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideDurationOffset()F

    move-result v27

    move/from16 v37, v7

    add-float v7, v17, v27

    invoke-static {v7, v8, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v7

    goto :goto_1f

    :cond_39
    move/from16 v37, v7

    move v7, v12

    :goto_1f
    int-to-float v0, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlidePrimaryInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v14, v13, v4, v0, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-boolean v0, v1, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_3a

    if-eqz v3, :cond_3a

    move-object v0, v13

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/android/quickstep/views/u;

    invoke-direct {v0, v1, v13}, Lcom/android/quickstep/views/u;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    invoke-virtual {v14, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_3a
    move/from16 v7, v18

    goto :goto_20

    :cond_3b
    move-object/from16 v35, v6

    move/from16 v37, v7

    move/from16 v28, v8

    move/from16 v36, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v7, v27

    :goto_20
    move v4, v7

    move/from16 v17, v16

    move-object/from16 v8, v25

    goto/16 :goto_2c

    :cond_3c
    move-object/from16 v35, v6

    move/from16 v37, v7

    move/from16 v28, v8

    move/from16 v36, v12

    const/high16 v12, 0x3f800000    # 1.0f

    instance-of v0, v13, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_31

    check-cast v13, Lcom/android/quickstep/views/TaskView;

    move-object/from16 v8, v25

    if-eqz v20, :cond_3d

    if-eqz v25, :cond_3e

    invoke-direct {v1, v13, v8}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_2a

    :cond_3d
    if-lt v9, v11, :cond_4a

    invoke-direct {v1, v13, v2}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_2a

    :cond_3e
    add-int/lit8 v10, v10, 0x1

    if-eqz v31, :cond_3f

    int-to-float v0, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_21

    :cond_3f
    const/high16 v3, 0x40000000    # 2.0f

    move v0, v10

    :goto_21
    if-eqz v31, :cond_40

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStartOffset()F

    move-result v4

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStaggerOffset()F

    move-result v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x0

    goto :goto_22

    :cond_40
    const/4 v6, 0x0

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v4, v4, v33

    :goto_22
    invoke-static {v4, v6, v15}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    if-eqz v31, :cond_41

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStartOffset()F

    move-result v7

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideStaggerOffset()F

    move-result v17

    int-to-float v0, v0

    mul-float v17, v17, v0

    add-float v7, v7, v17

    invoke-interface/range {v26 .. v26}, Lcom/android/quickstep/util/SplitAnimationTimings;->getGridSlideDurationOffset()F

    move-result v0

    add-float/2addr v7, v0

    invoke-static {v7, v6, v15}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    goto :goto_23

    :cond_41
    move v0, v15

    :goto_23
    if-eqz v31, :cond_42

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_0_75:Landroid/view/animation/Interpolator;

    goto :goto_24

    :cond_42
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_24
    if-ne v13, v8, :cond_45

    iget v0, v1, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v0, v0

    iget-object v6, v1, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    sget-object v6, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v7, v4, v15}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v14, v13, v6, v0, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_43

    move/from16 v3, v16

    move v6, v3

    goto :goto_25

    :cond_43
    move/from16 v3, v16

    neg-float v6, v3

    :goto_25
    invoke-static {v7, v4, v15}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v14, v13, v0, v6, v12}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget v0, v1, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    neg-float v0, v0

    if-nez v19, :cond_44

    iget v6, v1, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    sub-float/2addr v0, v6

    :cond_44
    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getSecondaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v6

    invoke-static {v7, v4, v15}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v14, v13, v6, v0, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    sget-object v0, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    invoke-static {v7, v12, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v14, v13, v0, v12, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move/from16 v17, v3

    goto :goto_2b

    :cond_45
    move/from16 v3, v16

    const/4 v12, 0x0

    if-eqz v8, :cond_46

    move/from16 v7, v22

    goto :goto_26

    :cond_46
    move v7, v3

    :goto_26
    if-eqz v31, :cond_48

    invoke-virtual {v1, v11}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v17

    iget-object v12, v1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v12, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v12

    sub-int v12, v12, v17

    move/from16 v17, v3

    iget-boolean v3, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_47

    int-to-float v3, v12

    goto :goto_27

    :cond_47
    neg-int v3, v12

    int-to-float v3, v3

    :goto_27
    add-float/2addr v7, v3

    goto :goto_28

    :cond_48
    move/from16 v17, v3

    :goto_28
    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    iget-boolean v12, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v12, :cond_49

    goto :goto_29

    :cond_49
    neg-float v7, v7

    :goto_29
    invoke-static {v6, v4, v0}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v14, v13, v3, v7, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_2b

    :cond_4a
    :goto_2a
    move/from16 v17, v16

    :goto_2b
    move/from16 v4, v27

    :goto_2c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v25, v8

    move/from16 v16, v17

    move-object/from16 v3, v26

    move/from16 v8, v28

    move/from16 v0, v34

    move-object/from16 v6, v35

    move/from16 v12, v36

    move/from16 v7, v37

    goto/16 :goto_17

    :cond_4b
    move/from16 v27, v4

    move/from16 v37, v7

    move/from16 v28, v8

    move-object/from16 v8, v25

    if-eqz v27, :cond_4c

    new-instance v0, Lcom/android/quickstep/views/o1;

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/o1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v14, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_4c
    if-eqz p3, :cond_4d

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_4d
    iput-object v14, v1, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance v15, Lcom/android/quickstep/views/RecentsView$20;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, v30

    move/from16 v6, v37

    move/from16 v7, v29

    move-object/from16 v16, v8

    move/from16 v8, v28

    move/from16 v9, v21

    move-object/from16 v10, v16

    move/from16 v12, v20

    move/from16 v13, v24

    invoke-direct/range {v0 .. v13}, Lcom/android/quickstep/views/RecentsView$20;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZIZZZIZLcom/android/quickstep/views/TaskView;IZZ)V

    invoke-virtual {v14, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 9

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_0

    const-string v0, "RecentsView"

    const-string v1, "createTaskLaunchAnimation Another pending animation is still running"

    invoke-static {v0, v1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/views/m;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/quickstep/views/m;-><init>(Lcom/android/quickstep/views/RecentsView;I[Z)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    sget-object v6, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    sget-object v7, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v7

    aput v7, v1, v3

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    new-instance p2, Lcom/android/quickstep/views/v0;

    invoke-direct {p2, p0, p4}, Lcom/android/quickstep/views/v0;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance p3, Lcom/android/launcher3/uioverrides/touchcontrollers/e;

    invoke-direct {p3, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/e;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance p3, Lcom/android/quickstep/views/x0;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/views/x0;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    :cond_0
    return-void
.end method

.method public dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V
    .locals 9

    new-instance v8, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v0, 0x12c

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/TaskView;ZZJZ)V

    invoke-direct {p0, v8}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v2

    invoke-static {v2, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    int-to-float v4, v1

    invoke-interface {v2, p1, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x16

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dismissCurrentTask()V

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dismissCurrentTask()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    invoke-direct {p0, v0, v3, p1}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v3, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    invoke-direct {p0, p1, v3, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public finishRecentsAnimation(ZLjava/lang/Runnable;)V
    .locals 3
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishRecentsAnimation toRecents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    const-string v2, "RecentsView"

    invoke-static {v1, v2, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public finishRecentsAnimation(ZZLjava/lang/Runnable;)V
    .locals 7
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishRecentsAnimation toRecents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldPip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    const-string v2, "RecentsView"

    invoke-static {v1, v2, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationTypeToAlpha()V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/window/PictureInPictureSurfaceTransaction;->setShouldDisableCanAffectSystemUiFlags(Z)V

    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v0, v6}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    new-instance v1, Lcom/android/quickstep/views/z;

    invoke-direct {v1, p0, p3}, Lcom/android/quickstep/views/z;-><init>(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBottomRowTaskCountForTablet()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p0

    sub-int/2addr v0, p0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    return v0
.end method

.method protected getChildGap(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result p0

    :goto_1
    return p0
.end method

.method protected getChildOffset(I)I
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(Z)F

    move-result p0

    :goto_0
    add-float/2addr v0, p0

    float-to-int v0, v0

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/android/quickstep/views/ClearAllButton;

    if-eqz v1, :cond_1

    int-to-float v0, v0

    check-cast p1, Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/android/quickstep/views/ClearAllButton;->getOffsetAdjustment(ZZ)F

    move-result p0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method protected getChildVisibleSize(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getClearAllButton()Lcom/android/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method protected getClearAllExtraPageSpacing()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getClearAllScroll()I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public getContentAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    return p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method protected getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDestinationPage(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isPageScrollsInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "RecentsView"

    const-string v0, "Cannot get destination page: RecentsView not properly initialized"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    const v0, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v3, v3, v2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_2

    move v1, v2

    move v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getEnableDrawingLiveTile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    return p0
.end method

.method public getEventDispatcher(F)Ljava/util/function/Consumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    goto :goto_0

    :cond_0
    neg-float v1, p1

    :goto_0
    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/android/quickstep/views/e0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/e0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/quickstep/views/s0;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/views/s0;-><init>(Lcom/android/quickstep/views/RecentsView;FF)V

    return-object v0
.end method

.method public getFilterState()Lcom/android/quickstep/RecentsFilterState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    return-object p0
.end method

.method public getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    return-object p0
.end method

.method public getFocusedTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getGroupedTaskViewCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getHomeTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastComputedDesktopTaskSize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedDesktopTaskSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLastComputedGridTaskSize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLastComputedTaskSize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMaxScaleForFullScreen()F
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public getModalTaskSize(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/quickstep/BaseActivityInterface;->calculateModalTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    return-void
.end method

.method public getNextPageTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getNextTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getOverScrollShift()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    return p0
.end method

.method protected getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .locals 7

    array-length v0, p1

    new-array v0, v0, [I

    invoke-super {p0, v0, p2, p3}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    invoke-interface {p2, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    int-to-float p2, p2

    invoke-virtual {v2, p2}, Lcom/android/quickstep/views/ClearAllButton;->setScrollOffsetPrimary(F)V

    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_3

    array-length v3, p1

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v3, p3, v1}, Lcom/android/quickstep/views/ClearAllButton;->getScrollAdjustment(ZZ)F

    move-result p3

    aget v3, v0, p2

    float-to-int p3, p3

    add-int/2addr v3, p3

    aget p3, p1, p2

    if-eq p3, v3, :cond_2

    aput v3, p1, p2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v5

    goto :goto_1

    :cond_3
    move p2, v5

    move v3, p2

    :goto_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p3

    invoke-direct {p0, v3, v2}, Lcom/android/quickstep/views/RecentsView;->getLastTaskScroll(II)I

    move-result v2

    :goto_2
    if-ge v5, p3, :cond_8

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(Z)F

    move-result v3

    aget v6, v0, v5

    float-to-int v3, v3

    add-int/2addr v6, v3

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_4

    if-lt v6, v2, :cond_5

    :cond_4
    if-nez v3, :cond_6

    if-le v6, v2, :cond_6

    :cond_5
    move v6, v2

    :cond_6
    aget v3, p1, v5

    if-eq v3, v6, :cond_7

    aput v6, p1, v5

    move p2, v4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    return p2
.end method

.method public getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method public getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-object p0
.end method

.method public getPipCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mPipCornerRadius:I

    return p0
.end method

.method public getPipShadowRadius()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mPipShadowRadius:I

    return p0
.end method

.method public getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getRunningTaskIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRunningTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTaskViewId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    return p0
.end method

.method public getScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result p0

    return p0
.end method

.method public getScrollOffset(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getUnclampedScrollOffset(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShouldClampScrollOffset:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mClampedScrollOffsetBound:I

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mClampedScrollOffsetBound:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public getSelectedTaskBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskBounds(Lcom/android/quickstep/views/TaskView;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    instance-of v3, v2, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->containsTaskId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getSplitInstructionsView()Lcom/android/quickstep/views/SplitInstructionsView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    return-object p0
.end method

.method public getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public getSplitSelectTranslation()F
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I

    move-result v1

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v3, p0

    sub-int/2addr v3, v0

    int-to-float p0, v3

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    return v0

    :cond_1
    mul-int/2addr v3, v1

    int-to-float p0, v3

    return p0
.end method

.method protected getTaskIdsForRunningTaskView()[I
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getTaskIndexForId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTaskOverlayFactory()Lcom/android/quickstep/TaskOverlayFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    return-object p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->containsTaskId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTaskViewByTaskIds([I)Lcom/android/quickstep/views/TaskView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->hasAnyValidTaskIds([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getTaskViewCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getTaskViewNearestToCenterOfScreen()Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getTopRowTaskCountForTablet()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p0

    return p0
.end method

.method public init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-void
.end method

.method protected initEdgeEffect()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    new-instance v0, Lcom/android/launcher3/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    return-void
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 9

    const-string v0, "Main"

    const-string v1, "enterSplitSelect"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget v0, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-boolean v1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->animateCurrentTaskDismissal:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setAnimateCurrentTaskDismissal(Z)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setDismissingFromSplitPair(Z)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v4, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v5, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    iget-object v6, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v7, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget v8, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    sget-boolean p1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->updateDesktopTaskVisibility(Z)V

    :cond_1
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_ACTIONS_SPLIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;ILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;ILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 6

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    iget-object v1, p1, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, 0x0

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->setAnimateCurrentTaskDismissal(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    sget-boolean p1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateDesktopTaskVisibility(Z)V

    :cond_0
    return-void
.end method

.method public isClearAllHidden()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExistRecentsAnimationAndLiveTileDisable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Ignore create dissmiss animation. mRecentsAnimationController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mEnableDrawingLiveTile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecentsView"

    invoke-static {v1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public isGestureActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    return p0
.end method

.method public isLoadingTasks()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->isLoadingTasksInBackground()Z

    move-result p0

    return p0
.end method

.method public isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPageOrderFlipped()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isPageScrollsInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->isPageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanEverApplied:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    return p0
.end method

.method protected isSignificantMove(FI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

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

.method public isSplitSelectionActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result p0

    return p0
.end method

.method public isTaskInExpectedScrollPosition(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaskLaunchedAnimOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mIsTaskLaunchedAnimOn:Z

    return p0
.end method

.method public isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public launchSideTaskInLiveTileMode(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 10

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v8

    move-object v0, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p0

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {p3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x150

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/android/quickstep/views/x;

    invoke-direct {p4, p0, p2, p1}, Lcom/android/quickstep/views/x;-><init>(Lcom/android/quickstep/views/RecentsView;[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/android/quickstep/views/RecentsView$15;

    invoke-direct {p4, p0, p2, p1}, Lcom/android/quickstep/views/RecentsView$15;-><init>(Lcom/android/quickstep/views/RecentsView;[Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/animation/Animator;

    invoke-virtual {p1, v9, p2}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/quickstep/views/RecentsView$16;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/RecentsView$16;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public launchSideTaskInLiveTileModeForRestartedApp(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewIdFromTaskId(I)I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, v0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileMode(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadVisibleTaskData(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_f

    iget v2, v0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v6, v5, 0x2

    sub-int v7, v2, v6

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    move v5, v2

    move v2, v4

    move v6, v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v2, -0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v4

    move v7, v5

    :goto_1
    move v8, v4

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v9

    if-ge v8, v9, :cond_f

    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v10

    aget-object v11, v10, v4

    if-nez v11, :cond_3

    aget-object v11, v10, v3

    if-nez v11, :cond_3

    move v13, v4

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {v0, v9, v7, v5}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v11

    goto :goto_3

    :cond_4
    if-gt v6, v11, :cond_5

    if-gt v11, v2, :cond_5

    move v11, v3

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_3
    if-eqz v11, :cond_a

    invoke-static {v10}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v12, Lcom/android/quickstep/views/j1;->a:Lcom/android/quickstep/views/j1;

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v12, Lcom/android/quickstep/views/g1;->a:Lcom/android/quickstep/views/g1;

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v12, Lcom/android/launcher3/allapps/v;->a:Lcom/android/launcher3/allapps/v;

    invoke-static {v12}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v12, :cond_6

    array-length v13, v12

    move v14, v4

    :goto_4
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    new-instance v4, Lcom/android/quickstep/views/i1;

    invoke-direct {v4, v15}, Lcom/android/quickstep/views/i1;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-interface {v10, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v13, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v12, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    if-ne v9, v12, :cond_8

    iget-boolean v12, v0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v12, :cond_8

    and-int/lit8 v12, v1, -0x3

    goto :goto_6

    :cond_8
    move v12, v1

    :goto_6
    invoke-virtual {v9, v3, v12}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    iget-boolean v12, v10, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    if-ne v9, v12, :cond_9

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    :cond_9
    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_a
    array-length v4, v10

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v4, :cond_e

    aget-object v12, v10, v11

    if-nez v12, :cond_b

    const/4 v13, 0x0

    goto :goto_9

    :cond_b
    iget-object v13, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-boolean v13, v0, Lcom/android/quickstep/views/RecentsView;->mIsOrientationChangeEnter:Z

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v13

    if-eq v9, v13, :cond_d

    :cond_c
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v1}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    iget-object v14, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v14, v12}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    :goto_a
    const/4 v13, 0x0

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move v4, v13

    goto/16 :goto_2

    :cond_f
    :goto_c
    return-void
.end method

.method protected maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public moveRunningTaskToFront()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->resetPersistentViewTransforms()V

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskView:Lcom/android/quickstep/views/DesktopTaskView;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isDesktopTask()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->addCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    new-instance v0, Lcom/android/quickstep/views/g0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/g0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsModel;->addThumbnailChangeListener(Lcom/android/quickstep/util/TaskVisualsChangeListener;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationListener(Lcom/android/wm/shell/pip/b;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->initListeners()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory;->initListeners()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->initExtraDecor()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateRecentsRotation()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->onOrientationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->removeCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    sget-object v1, Lcom/android/quickstep/views/b1;->g:Lcom/android/quickstep/views/b1;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->executeSideTaskLaunchCallback()V

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsModel;->removeThumbnailChangeListener(Lcom/android/quickstep/util/TaskVisualsChangeListener;)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationListener(Lcom/android/wm/shell/pip/b;)V

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyListeners()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory;->removeListeners()V

    return-void
.end method

.method protected onDismissAnimationEnds()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendDismissAnimationEndsEventToTest(Landroid/content/Context;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const/16 p3, 0x11

    if-eq p2, p3, :cond_1

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onGestureAnimationEnd()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewIn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-void
.end method

.method public onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    return-void
.end method

.method public onHighResLoadingStateChanged(Z)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisibleChildrenRange()[I

    move-result-object p0

    aget v1, p0, v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    aget p0, p0, v2

    sub-int p0, v0, p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePivots()V

    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    new-instance p1, Lcom/android/quickstep/views/h0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/h0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-le v0, v1, :cond_8

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-ge v0, v1, :cond_8

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    :goto_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v1, v4, :cond_6

    move v2, v3

    :cond_6
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v5}, Landroid/widget/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    rsub-int v0, v0, 0x10e

    if-lez v0, :cond_8

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->extendDuration(I)V

    :cond_8
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x41

    invoke-static {p0, v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_1
    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lb3/a;->b(IJ)V

    :cond_2
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    const-string v2, "onPageEndTransition: current page index updated"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    :cond_1
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lb3/a;->b(IJ)V

    :cond_2
    return-void
.end method

.method public onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V
    .locals 9
    .param p1    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationX()F

    move-result v4

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v3

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v3, v0

    :cond_2
    array-length v0, p3

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_4

    aget-object v5, p3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p1, :cond_3

    invoke-direct {p0, v6}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    iget-object v5, v5, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v3, v5, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v6, v8, v2

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, v5, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lcom/android/launcher3/statemanager/BaseState;->showTaskThumbnailSplash()Z

    move-result p2

    if-nez p1, :cond_5

    int-to-float p1, p2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskThumbnailSplashAlpha(F)V

    goto :goto_3

    :cond_5
    sget-object p3, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    new-array v0, v1, [F

    int-to-float p2, p2

    aput p2, v0, v2

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_3
    return-void
.end method

.method public onRecentsAnimationComplete()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "RecentsView"

    const-string v2, "onRecentsAnimationComplete."

    invoke-static {v0, v1, v2}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setRecentsAnimationRunning(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->executeSideTaskLaunchCallback()V

    return-void
.end method

.method protected onRotateInSplitSelectionState()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingTaskView;->updateOrientationHandler(Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/FloatingTaskView;->update(Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectTranslation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/SplitInstructionsView;->ensureProperRotation()V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    return-void
.end method

.method protected onScrollerAnimationAborted()V
    .locals 2

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "scroller animation aborted"

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    return-void
.end method

.method public onTaskIconChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->refreshTaskThumbnailSplash()V

    :cond_0
    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTaskLaunchAnimationEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_0
    return-void
.end method

.method public onTaskLaunchedInLiveTileMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;->onTaskLaunched()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    :cond_0
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v3, v2, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    const/4 p1, 0x2

    if-eq v4, p1, :cond_4

    const/4 p1, 0x3

    if-eq v4, p1, :cond_3

    goto/16 :goto_4

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto/16 :goto_4

    :cond_4
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSquaredTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v4, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateDeadZoneRects()V

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    if-nez v4, :cond_b

    if-nez v1, :cond_b

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_7

    const-string p1, "RecentsView"

    const-string v1, "No need return to home when recentsView is going to OverView state "

    invoke-static {p1, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    iput v3, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    if-eq p1, v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/GroupedTaskView;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    instance-of p1, p1, Lcom/android/quickstep/views/DesktopTaskView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mDesktopTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/DesktopTaskView;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    :goto_2
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskViewId(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p1, v0, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    :cond_4
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    return-void
.end method

.method public redrawLiveTile()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/views/d1;->g:Lcom/android/quickstep/views/d1;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reloadIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/quickstep/views/r0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/r0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsFilterState;->getPackageNameToFilter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/quickstep/RecentsFilterState;->getFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    :cond_0
    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method public reset()V
    .locals 3

    const-string v0, "Recent"

    const-string v1, "RecentView:reset all state."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    sget-object v0, Lcom/android/quickstep/views/f1;->g:Lcom/android/quickstep/views/f1;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    new-instance v0, Lcom/android/quickstep/views/p;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/p;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lb3/a;->b(IJ)V

    return-void
.end method

.method protected resetFromSplitSelectionState()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->splitAnimationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Ly2/c;->j(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->safeRemoveDragLayerView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitInstructionsView:Lcom/android/quickstep/views/SplitInstructionsView;

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Lcom/android/quickstep/views/TaskView;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v1}, Lcom/android/quickstep/views/TaskView;->setThumbnailVisibility(II)V

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Lcom/android/quickstep/views/TaskView;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskViewsPrimarySplitTranslation(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskViewsSecondarySplitTranslation(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v4, 0x1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-gt v5, v0, :cond_4

    add-int/lit8 v5, v0, 0x1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v11

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3, v1}, Lcom/android/quickstep/views/TaskView;->setThumbnailVisibility(II)V

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    :cond_6
    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v4}, Lcom/android/quickstep/views/RecentsView;->updateDesktopTaskVisibility(Z)V

    :cond_7
    return-void
.end method

.method public resetModalVisuals()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->resetModalVisuals()V

    :cond_0
    return-void
.end method

.method public resetTaskVisuals()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskThumbnailSplashAlpha:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setTaskThumbnailSplashAlpha(F)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/quickstep/views/c1;->g:Lcom/android/quickstep/views/c1;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setColorTint(F)V

    return-void
.end method

.method public runActionOnRemoteHandles(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollLeft()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-ltz v0, :cond_6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastTaskEnd()I

    move-result v1

    sub-int/2addr v2, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_5

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    if-eqz v3, :cond_4

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_4
    if-le v1, v2, :cond_5

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public scrollRight()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public setAndApplyFilter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsFilterState;->setFilterBy(Ljava/lang/String;)V

    return-void
.end method

.method public setClampScrollOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mShouldClampScrollOffset:Z

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 8

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v7, :cond_1

    aget v7, v6, v2

    if-eq v7, v0, :cond_2

    aget v6, v6, v4

    if-eq v6, v0, :cond_2

    :cond_1
    invoke-virtual {v5, p1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/ClearAllButton;->setContentAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getContentAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-nez p1, :cond_5

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentTask(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentTask mRunningTaskViewId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", runningTaskViewId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_1
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    return-void
.end method

.method public setDisallowScrollToClearAll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateMinAndMaxScrollX()V

    :cond_0
    return-void
.end method

.method public setEnableDrawingLiveTile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    return-void
.end method

.method public setFreezeViewVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 6

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/ClearAllButton;->setFullscreenProgress(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getFullscreenAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method

.method public setIgnoreResetTask(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/16 v1, 0x20

    iget-boolean v2, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    :cond_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    new-instance v0, Lcom/android/quickstep/views/d0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/d0;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayoutRotation(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler()V

    :cond_0
    return-void
.end method

.method public abstract setModalStateEnabled(IZ)V
.end method

.method public setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    :cond_0
    return-void
.end method

.method public setOverviewFullscreenEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOverviewGridEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOverviewSelectEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePivots()V

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setSelectedTask(I)V

    :cond_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateLocusId()V

    return-void
.end method

.method public setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 3

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SplitSelectStateController;->setRecentsAnimationRunning(Z)V

    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean p1, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationTargets;->hasDesktopTasks()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {p1, v1, v2, p2, v0}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;Z)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForDesktop(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    :goto_0
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer;->getSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    new-instance p1, Lcom/android/quickstep/views/f0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/f0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    instance-of p2, p1, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;
    .locals 8

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_0

    invoke-static {p0, v1, v0, p1}, Lb3/t;->o(Lcom/android/quickstep/views/RecentsView;Landroid/animation/AnimatorSet;IZ)V

    goto :goto_2

    :cond_0
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    aput v5, v7, v2

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz p1, :cond_2

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_2
    invoke-static {p0, v4, v5}, Lb3/t;->l(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public setRunningTaskHidden(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    if-nez p1, :cond_1

    const/16 p0, 0x8

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setRunningTaskViewShowScreenshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedTask(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSelectedTask:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method public setSwipeDownShouldLaunchApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    return-void
.end method

.method public setTaskIconScaledDown(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    return-void
.end method

.method protected setTaskViewsPrimarySplitTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setTaskViewsResistanceTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskResistanceTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/quickstep/views/b0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/b0;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected setTaskViewsSecondarySplitTranslation(F)V
    .locals 4

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-ne v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getSecondarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0, v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_1
    return-void
.end method

.method protected shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    const/4 p1, -0x1

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v0

    :goto_0
    if-nez p0, :cond_1

    move p0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p0

    :goto_1
    if-ne v0, p0, :cond_2

    if-ne v0, p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    aget-object p1, p1, v1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getSingleTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public shouldSwipeDownLaunchApp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    return p0
.end method

.method public showAsGrid()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

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

.method public showForegroundScrim(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->COLOR_TINT:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->startHome(Z)V

    return-void
.end method

.method public abstract startHome(Z)V
.end method

.method public switchToScreenshot(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshotInternal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->refreshThumbnails(Ljava/util/HashMap;)V

    invoke-static {p0, p2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public updateClearAllFunction()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFilterState:Lcom/android/quickstep/RecentsFilterState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsFilterState;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    const v1, 0x7f12022b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    new-instance v1, Lcom/android/quickstep/views/i0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/i0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    const v1, 0x7f12022c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    new-instance v1, Lcom/android/quickstep/views/t0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/t0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateCurveProperties()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/ClearAllButton;->onRecentsViewScroll(IZ)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getIndexScrollAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getScrollAlpha()F

    move-result p0

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateEmptyMessage()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    invoke-interface {v0, p0}, Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;->onEmptyMessageUpdated(Z)V

    :cond_5
    return-void
.end method

.method public updateLocusId()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    const-string v1, "Overview"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|ENABLED"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|DISABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/views/t;

    invoke-direct {v2, p0, v1}, Lcom/android/quickstep/views/t;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    return-void
.end method

.method public updateRecentsRotation()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    return-void
.end method

.method public updateScrollSynchronously()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v7

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateMinAndMaxScrollX()V

    return-void
.end method

.method public updateTaskLaunchedAnimState(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mIsTaskLaunchedAnimOn:Z

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    :cond_0
    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
