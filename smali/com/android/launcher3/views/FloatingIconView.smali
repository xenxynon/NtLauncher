.class public Lcom/android/launcher3/views/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFetchIconId:J

.field private static sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sRecycledFetchIconId:J

.field private static final sTmpRectF:Landroid/graphics/RectF;


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBtvDrawable:Landroid/view/View;

.field private mClipIconView:Lcom/android/launcher3/views/ClipIconView;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFadeOutView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFastFinishRunnable:Ljava/lang/Runnable;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private mIconOffsetY:F

.field private mIsOpening:Z

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mListenerView:Lcom/android/launcher3/views/ListenerView;

.field private mLoadIconSignal:Landroid/os/CancellationSignal;

.field private mMatchVisibilityView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;

.field private mOriginalIcon:Landroid/view/View;

.field private mPositionOut:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/launcher3/views/FloatingIconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    new-instance p3, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {p3, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance p3, Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {p3, p1, p2}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->lambda$checkIconResult$1(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getIconResult$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/FloatingIconView;->lambda$fetchIcon$3(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private checkIconResult()V
    .locals 5

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "No icon load result found in checkIconResult"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/launcher3/views/l;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/views/l;-><init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V

    iput-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic d(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/FloatingIconView;->lambda$fetchIcon$2(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/views/FloatingIconView;->lambda$fetchIcon$4(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    return-void
.end method

.method public static fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .locals 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-static {p0, p1, p3, v6}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    instance-of p3, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    instance-of v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/views/p;

    invoke-direct {v0, p3}, Lcom/android/launcher3/views/p;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/views/o;

    invoke-direct {v0, p3}, Lcom/android/launcher3/views/o;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    :goto_0
    move-object v7, p3

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    new-instance p3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p3, p2, v1}, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iput-object v0, p3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    sget-wide v1, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/views/j;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/j;-><init>(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sput-object p3, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    return-object p3
.end method

.method private finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ListenerView;->setUpdateProgress(F)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0e0077

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    return-void
.end method

.method public static getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v2

    const v3, 0x7f0e0077

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/FloatingIconView;

    invoke-direct {v2}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    iput-boolean p6, v2, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    iput-object p1, v2, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iput-object p2, v2, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    iput-object p3, v2, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    iput-object p5, v2, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    sget-object p3, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_1

    sget-object p3, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1, p3, p6}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    move-result-object p3

    :goto_1
    iput-object p3, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object p3, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object p3, p3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    invoke-direct {v2, p3}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/views/FloatingIconView;->resetIconLoadResult()V

    invoke-direct {v2, p0, p1, p6, p5}, Lcom/android/launcher3/views/FloatingIconView;->matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    const/4 p0, 0x4

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance p1, Lcom/android/launcher3/views/k;

    invoke-direct {p1, v2}, Lcom/android/launcher3/views/k;-><init>(Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/android/launcher3/views/m;

    invoke-direct {p0, v2, p4, v0}, Lcom/android/launcher3/views/m;-><init>(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object p0, v2, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    invoke-direct {v2}, Lcom/android/launcher3/views/FloatingIconView;->checkIconResult()V

    :cond_3
    return-object v2
.end method

.method private static getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 15
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v2

    const/4 v11, 0x1

    xor-int/2addr v2, v11

    instance-of v3, v8, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_2
    instance-of v3, v9, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    new-array v13, v11, [Ljava/lang/Object;

    if-eqz v2, :cond_5

    instance-of v1, v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    move-object v1, v9

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v11

    goto :goto_0

    :cond_4
    move v5, v14

    :goto_0
    move-object v1, p0

    move-object/from16 v2, p2

    move-object v6, v13

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_6

    aget-object v2, v13, v14

    invoke-static {p0, v8, v2}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_5
    instance-of v1, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_7

    :cond_6
    :goto_1
    move-object v1, v9

    :goto_2
    move-object v2, v12

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v6, v13

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :goto_3
    if-nez v1, :cond_8

    move-object/from16 v3, p3

    move-object v1, v12

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v3, p3

    :goto_4
    invoke-static {p0, v1, v3}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v3

    if-nez v9, :cond_9

    move-object v4, v12

    goto :goto_5

    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_5
    monitor-enter p5

    :try_start_0
    new-instance v5, Lcom/android/launcher3/views/n;

    invoke-direct {v5, v4}, Lcom/android/launcher3/views/n;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iput-object v1, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iput v3, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    iget-object v1, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v12, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :cond_a
    iput-boolean v11, v10, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    monitor-exit p5

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 8

    xor-int/lit8 p2, p2, 0x1

    instance-of v0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {p1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    :goto_0
    move-object v3, p1

    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v3, p1

    move v5, p2

    :goto_1
    if-nez v3, :cond_2

    sget-object p0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string p1, "getLocationBoundsForView v is null."

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of p1, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_3

    move-object p1, v3

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p4}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    instance-of p1, v3, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p1, :cond_4

    move-object p1, v3

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLocationBoundsForView v width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p4, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v2

    const/4 v6, 0x0

    move-object v4, p4

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private static getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v1, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    invoke-static {v2, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p0, v2, Landroid/graphics/Rect;->left:I

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method private synthetic lambda$checkIconResult$1(Landroid/os/CancellationSignal;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    return-void
.end method

.method private static synthetic lambda$fetchIcon$2(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$fetchIcon$3(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$fetchIcon$4(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 2

    sget-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p7}, Lcom/android/launcher3/views/FloatingIconView;->getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    return-void
.end method

.method private static synthetic lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method private static synthetic lambda$getIconResult$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method

.method private matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    new-instance p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p4, p1}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x3

    invoke-direct {p3, p4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p2, p3, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private recycle()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    sget-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/views/ClipIconView;->recycle()V

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    return-void
.end method

.method public static resetIconLoadResult()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V
    .locals 8
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-boolean v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    move-object v2, p1

    move v3, p4

    move-object v4, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/views/ClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V

    instance-of p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p1, :cond_2

    iget p1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p2, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p4, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    iget-boolean p2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_0

    iget p2, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    iget p4, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p4, p4

    mul-float/2addr p4, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget p2, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p2, p2

    iget p4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p4, p4

    mul-float/2addr p4, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p2, v1, v1, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p4, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {p4, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_1
    iget p2, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p2, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setOriginalDrawableBackground(Ljava/util/function/Supplier;)V
    .locals 1
    .param p1    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_1
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p1

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public fastFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public isDifferentFromAppIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    :goto_0
    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-nez p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPositionOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->onGlobalLayout()V

    return-void
.end method

.method public update(FLandroid/graphics/RectF;FFFZ)V
    .locals 8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v7

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/views/ListenerView;->setUpdateProgress(F)V

    return-void
.end method
