.class public Lcom/android/launcher3/views/RecyclerViewFastScroller;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ls3/d;


# static fields
.field private static final SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/RecyclerViewFastScroller;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mCanThumbDetach:Z

.field private final mConfig:Landroid/view/ViewConfiguration;

.field private final mDeltaThreshold:F

.field private mDownTimeStampMillis:J

.field private mDownX:I

.field private mDownY:I

.field private mDy:I

.field private mIgnoreDragGesture:Z

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mLastY:I

.field private final mMaxWidth:I

.field private final mMinWidth:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPopupSectionName:Ljava/lang/String;

.field private mPopupView:Landroid/widget/TextView;

.field private mPopupVisible:Z

.field protected mRv:Lcom/android/launcher3/FastScrollRecyclerView;

.field private final mScrollbarLeftOffsetTouchDelegate:F

.field private mSystemGestureInsets:Landroid/graphics/Insets;

.field private final mThumbBounds:Landroid/graphics/RectF;

.field private final mThumbDrawOffset:Landroid/graphics/Point;

.field protected final mThumbHeight:I

.field protected mThumbOffsetY:I

.field private final mThumbPadding:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field protected mTouchOffsetY:I

.field private mTrackHeight:I

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private final mUseTransparentTrack:Z

.field private mWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    const v2, 0x1010036

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Lz3/d;->a:Lz3/d;

    invoke-virtual {v4, p1}, Lz3/d;->i(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701a7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    const v4, 0x7f0701a6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    const v4, 0x7f0701a4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    const v4, 0x7f0701a3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mScrollbarLeftOffsetTouchDelegate:F

    sget-object v2, Lcom/android/launcher3/R$styleable;->RecyclerViewFastScroller:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mUseTransparentTrack:Z

    if-eqz p2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/RecyclerViewFastScroller;)Ln5/t;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->lambda$performAHapticFeedback$0()Ln5/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setTrackWidth(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    return p1
.end method

.method private animatePopupVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x96

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private calcTouchOffsetAndPrepToFastScroll(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    iget-boolean v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    :cond_0
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    return-void
.end method

.method private getScrollThumbRadius()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private isNearThumb(II)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p2, v0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$performAHapticFeedback$0()Ln5/t;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private setTrackWidth(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showActiveScrollbar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    :goto_0
    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateFastScrollSectionNameAndThumbOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->performAHapticFeedback()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method

.method private updatePopupY(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    int-to-float v1, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public endFastScrolling()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->onFastScrollCompleted()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget-boolean v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    :cond_0
    return-void
.end method

.method public getThumbHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    return p0
.end method

.method public getThumbOffsetY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    goto/16 :goto_0

    :cond_0
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    sub-int p2, v1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    if-le p2, v3, :cond_1

    move v2, p1

    :cond_1
    or-int p1, v0, v2

    iput-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget-boolean p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/FastScrollRecyclerView;->supportsFastScrolling()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->calcTouchOffsetAndPrepToFastScroll(II)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->endFastScrolling()V

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownTimeStampMillis:J

    iput-boolean v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    :cond_6
    :goto_0
    iget-boolean p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingThumb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    return p0
.end method

.method public isHitInParent(FFLandroid/graphics/Point;)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_1

    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Point;->set(II)V

    :cond_1
    float-to-int p0, p1

    float-to-int p1, p2

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isThumbDetached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-float v3, v1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    int-to-float v6, v2

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    int-to-float v7, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    neg-float v5, v1

    iget v6, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    sget-object v3, Lcom/android/launcher3/views/RecyclerViewFastScroller;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    if-eqz v1, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v0, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz3/d;->i(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public performAHapticFeedback()V
    .locals 3

    sget-object v0, Ll4/b;->g:Ll4/b$b;

    invoke-virtual {v0}, Ll4/b$b;->a()Ll4/b;

    move-result-object v0

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    new-instance v2, Lcom/android/launcher3/views/v;

    invoke-direct {v2, p0}, Lcom/android/launcher3/views/v;-><init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Ll4/b;->i(Lcom/nothing/launcher/ossupport/vibrate/EffectType;ILy5/a;)V

    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void
.end method

.method public setPopupView(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;-><init>(Landroid/graphics/Paint;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;-><init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackHeight:I

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackHeight:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updatePopupY(I)V

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shouldBlockIntercept(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p0

    return p0
.end method
