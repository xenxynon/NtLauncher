.class public Lcom/android/launcher3/folder/Folder;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;,
        Lcom/android/launcher3/folder/Folder$OnScrollHintListener;,
        Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;,
        Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;
    }
.end annotation


# static fields
.field private static final FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mBackground:Lc3/c;

.field private mButtonType:I

.field private mClipPath:Landroid/graphics/Path;

.field mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContentLayout:Landroid/view/View;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

.field private mFolderMarginTop:I

.field public mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

.field protected mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field private mFromTitle:Ljava/lang/CharSequence;

.field protected mHeader:Landroid/view/View;

.field private mHeaderHeight:I

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mIsAnimatingClosed:Z

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field private mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

.field private final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field private mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field private mShowKeyboardAfterOpen:Z

.field private mState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_CLOSED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mSuppressFolderDeletion:Z

.field mTargetRank:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "~"

    sput-object v0, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/folder/Folder$9;

    invoke-direct {v0}, Lcom/android/launcher3/folder/Folder$9;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/folder/Folder;->mButtonType:I

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    iput p2, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    iput p2, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    new-instance p2, Lcom/android/launcher3/folder/Folder$6;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/Folder$6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    new-instance p2, Lcom/android/launcher3/folder/Folder$7;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/Folder$7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getViewForInfo$5(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/Folder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/LauncherState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/Folder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mShowKeyboardAfterOpen:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher3/folder/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mShowKeyboardAfterOpen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/launcher3/folder/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/folder/Folder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method private addAnimationStartListeners(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    new-instance v1, Lcom/android/launcher3/folder/k;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/k;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/LauncherDelegate;->forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/launcher3/folder/Folder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/Folder$2;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->isHardwareLayerEnabled()Z

    move-result v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$3;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/launcher3/folder/Folder$3;-><init>(Lcom/android/launcher3/folder/Folder;ZLcom/android/launcher3/CellLayout;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lr2/a;

    invoke-direct {v1}, Lr2/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/folder/Folder$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$5;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->addAnimationStartListeners(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateOpen(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    iput-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, La3/b;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v0}, La3/b;->b(La3/a;)V

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    new-instance p1, Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lr2/a;

    invoke-direct {p2}, Lr2/a;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/android/launcher3/folder/Folder$4;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/Folder$4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {p2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->stopAllAnimations()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->addAnimationStartListeners(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$addAnimationStartListeners$2(Landroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$bind$1()V

    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private centerAboutIcon()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v1, v6

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v4, v7

    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v8}, Lcom/android/launcher3/views/ActivityContext;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    invoke-static {v1, v8, v9}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-static {v4, v9, v10}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v9

    const/4 v10, 0x2

    new-array v11, v10, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v8, 0x1

    aput v9, v11, v8

    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v9, v11, v5, v2, v3}, Lcom/android/launcher3/views/ActivityContext;->updateOpenFolderPosition([ILandroid/graphics/Rect;II)V

    aget v5, v11, v12

    aget v8, v11, v8

    sub-int/2addr v1, v5

    add-int/2addr v6, v1

    sub-int/2addr v4, v8

    add-int/2addr v7, v4

    int-to-float v1, v6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    int-to-float v1, v7

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v10

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderMarginTop:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lc3/c;->s(FF)V

    return-void
.end method

.method private clearDragInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    return-void
.end method

.method private closeComplete(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v0, La3/b;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, La3/b;->f(La3/a;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setIconVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->animateBgShadowAndStroke()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->onFolderClose(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->animateDotScale([F)V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v1, :cond_5

    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mButtonType:I

    const v3, 0x7f0b0067

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mButtonType:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic d(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$updateItemLocationsInDatabaseBatch$4()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getIconsInReadingOrder$6(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->lambda$startEditingFolderName$0()V

    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/folder/Folder;"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0102

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getFolderHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result p0

    return p0
.end method

.method private getFolderHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getFolderWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getHeightFromBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr p0, v1

    return p0
.end method

.method private getLauncher()Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method private getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    const/4 p2, 0x1

    aget v0, p1, p2

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    aget v1, p1, v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    aget p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/FolderPagedView;->findNearestArea(II)I

    move-result p0

    return p0
.end method

.method private getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v0, Lcom/android/launcher3/folder/f;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/f;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private goToState(Lcom/android/launcher3/LauncherState;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->clearAnimatedViewIfNeed()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->lambda$handleClose$3(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method private isNeedSwitchLauncherState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$addAnimationStartListeners$2(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private synthetic lambda$bind$1()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getIconsInReadingOrder$6(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getViewForInfo$5(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleClose$3(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private synthetic lambda$startEditingFolderName$0()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->showLabelSuggestions()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return-void
.end method

.method private synthetic lambda$updateItemLocationsInDatabaseBatch$4()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    return-void
.end method

.method private setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;->onFolderStateChanged(I)V

    :cond_0
    return-void
.end method

.method private shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z
    .locals 5

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_1

    return v1

    :cond_1
    instance-of v3, v3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0xa

    if-lt v2, p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method private showLabelSuggestions()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->getOriginText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    :cond_2
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->showScrollHint(I)V

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    :cond_2
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch(Z)V
    .locals 7

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-le v2, p1, :cond_3

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/folder/h;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/h;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public animateOpen()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    return-void
.end method

.method public animateOpenCompleteWithKeyboard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mShowKeyboardAfterOpen:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    return-void
.end method

.method public beginExternalDrag()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    return-void
.end method

.method bind(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput-boolean p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p1}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->b()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const v0, 0x7f1200f0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    new-instance v0, Lcom/android/launcher3/folder/g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/g;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public completeDragExit()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    invoke-virtual {v1, p1}, Lc3/c;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    invoke-virtual {v0, p1}, Lc3/c;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1200df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    return-object p0
.end method

.method public getContent()Lcom/android/launcher3/folder/FolderPagedView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method protected getContentAreaHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected getContentAreaWidth()I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getContentLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContentLayout:Landroid/view/View;

    return-object p0
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    return-object p0
.end method

.method public getFolderMarginTop()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderMarginTop:I

    int-to-float p0, p0

    return p0
.end method

.method public getFolderName()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    return-object p0
.end method

.method public getHeaderHeight()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    int-to-float p0, p0

    return p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getIconsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/e;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/e;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getIndicator()Lcom/android/launcher3/pageindicators/PageIndicatorDots;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-object p0
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p0

    if-ne p1, v1, :cond_0

    mul-int v1, p0, p1

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    mul-int/2addr p1, p0

    add-int p0, p1, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge p1, p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method protected handleClose(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->clearLeaveBehindIfExists()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->animateClosed()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->resetAnimator()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    new-instance v0, Lcom/android/launcher3/folder/j;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/j;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->isNeedSwitchLauncherState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/Folder;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditingName()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isOfType(I)Z
    .locals 0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    return-void
.end method

.method public notifyDrop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 9

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->addOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    :goto_0
    return-void
.end method

.method public onBackKey()Z
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->getOriginText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const v2, 0x7f1200f0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200f6

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->getOriginText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v6, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v6, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return v4
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    return v3

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContentLayout:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2, p1, v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->removeOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f120180

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_1
    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v5

    cmpg-float v5, v0, v2

    if-gez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-lez v1, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v1, :cond_6

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    :cond_8
    :goto_4
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    new-instance p2, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 12

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {p2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {p2, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    iput-boolean v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v8, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto/16 :goto_5

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-interface {v1, p2}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    :goto_2
    iget-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    const-string v10, "Launcher.Folder"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/view/View;

    move-result-object v11

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iput-boolean v9, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "onDrop -> mCurrentDragView has parent !!!"

    invoke-static {v10, v2}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    :cond_9
    iget-object v11, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v11, v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_a

    iput-boolean v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v8, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    const-string v0, "Current drag source view has removed, skip animationToPosition action."

    invoke-static {v10, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v4, v5, v11, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    goto :goto_4

    :cond_b
    iput-boolean v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iput-boolean v8, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v1, v3, v9}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_c

    invoke-direct {p0, v9}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    :cond_c
    :goto_5
    iput-boolean v9, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v8, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    :cond_d
    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/LauncherState;->FOLDER_STATE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_e
    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p2, :cond_f

    const v0, 0x7f12013c

    invoke-virtual {p2, v0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez p2, :cond_2

    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_1

    :cond_0
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    new-instance v2, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v3, p2, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    :cond_2
    :goto_1
    if-eq p1, p0, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    if-nez p3, :cond_3

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_5
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p2

    if-gt p1, p2, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 p2, 0x4

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    new-instance v2, Lc3/c;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lc3/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v2, 0x7f0b0190

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    const v1, 0x7f0b019c

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const v1, 0x7f0b019b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nothing/launcher/folder/NTFolderNameEditText;

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const v3, -0x8001

    and-int/2addr v2, v3

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ExtendedEditText;->forceDisableSuggestions(Z)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    const v1, 0x7f0b0198

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    const v0, 0x7f0b0191

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContentLayout:Landroid/view/View;

    const v0, 0x7f0b0199

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderMarginTop:I

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->startEditingFolderName()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    new-instance p2, Ljava/util/StringJoiner;

    sget-object v0, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    invoke-direct {p2, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TO_SUGGESTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    :goto_0
    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    invoke-virtual {p2}, Ljava/util/StringJoiner;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_4
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_LABEL_UPDATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->isDropAnimEnd()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Launcher.Folder"

    const-string p1, "Drop anim running ,skip this long click action."

    invoke-static {p0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContentLayout:Landroid/view/View;

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mHeader:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mHeaderHeight:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPreDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    if-eq p1, p0, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    instance-of p2, p1, Lcom/android/launcher3/SecondaryDropTarget;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/launcher3/SecondaryDropTarget;

    invoke-virtual {p1}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mButtonType:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/folder/m;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/m;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/folder/l;

    invoke-direct {v2, v1}, Lcom/android/launcher3/folder/l;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, p0}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method replaceFolderWithFinalItem()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDragController(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;->init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/BaseFolderIcon;)V

    return-void
.end method

.method public setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    return-void
.end method

.method public showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/folder/Folder$1;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    sget-object v3, Lcom/android/launcher3/folder/n;->a:Lcom/android/launcher3/folder/n;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/folder/Folder$1;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/folder/LauncherDelegate;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public startEditingFolderName()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/i;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/i;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTextViewFocus()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusForwardId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setNextFocusUpId(I)V

    new-instance v0, Lcom/android/launcher3/folder/Folder$8;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/Folder$8;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Lc3/c;

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
