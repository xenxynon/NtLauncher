.class public abstract Lcom/android/launcher3/dragndrop/DragView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private hasMoved:Z

.field protected final mActivity:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAnimatedShiftX:I

.field private mAnimatedShiftY:I

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBlurSizeOutline:I

.field private final mContent:Landroid/view/View;

.field private mContentViewInParentViewIndex:I

.field private mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mContentViewParent:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDragRegion:Landroid/graphics/Rect;

.field private final mEndScale:F

.field private mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasDragOffset:Z

.field private mHasDrawn:Z

.field private final mHeight:I

.field private final mInitialScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mOnAnimEndCallback:Ljava/lang/Runnable;

.field private final mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

.field protected final mRegistrationX:I

.field protected final mRegistrationY:I

.field final mScaleAnim:Landroid/animation/ValueAnimator;

.field private mScaleAnimStarted:Z

.field protected final mScaleOnDrop:F

.field private mScaledMaskPath:Landroid/graphics/Path;

.field final mShiftAnim:Landroid/animation/ValueAnimator;

.field protected final mTempLoc:[I

.field private mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            "IIFFF)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "IIIIFFF)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragView;->hasMoved:Z

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iput p4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_2
    int-to-float p1, p3

    add-float/2addr p9, p1

    div-float/2addr p9, p1

    iput p9, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Li/i;

    invoke-direct {p2, p0, p7}, Li/i;-><init>(Lcom/android/launcher3/dragndrop/DragView;F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/launcher3/dragndrop/DragView$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/dragndrop/DragView$1;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    iput p5, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    iput p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    iput p7, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    iput p8, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleOnDrop:F

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p4, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07017e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void

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

.method public static synthetic a(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$1(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/dragndrop/DragView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnimStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method private applyTranslation()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$3(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/dragndrop/DragView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$new$0(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->lambda$setItemInfo$2(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(FLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setItemInfo$1(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setItemInfo$2(Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Li/k;

    invoke-direct {v1, p0, p1, p2}, Li/k;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setItemInfo$3(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 11

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v10, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move v3, v9

    move v4, v10

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    aget-object v5, v8, v4

    invoke-static {v2, p1, v5}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v6, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v6

    invoke-virtual {v6, v0, v5, v5, v5}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v2, 0x3f7ae148    # 0.98f

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v5, v9

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-direct {v2, p0, v5}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    int-to-float v5, v10

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-direct {v2, p0, v5}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Li/l;

    invoke-direct {v2, p0, v0, p1}, Li/l;-><init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public static removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public animateShift(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$2;-><init>(Lcom/android/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mShiftAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public abstract animateTo(IILjava/lang/Runnable;I)V
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public crossFadeContent(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/dragndrop/DragView;->getViewFromDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2, v0}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v3, p1, v2

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long p0, p2

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public detachContentView(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    if-ltz v0, :cond_2

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewInParentViewIndex:I

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$200(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$200(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
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

.method public getBlurSizeOutline()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    return-object p0
.end method

.method public getContentViewParent()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContentViewParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDragRegionHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDragRegionWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getEndScale()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mEndScale:F

    return p0
.end method

.method public getHasDragOffset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDragOffset:Z

    return p0
.end method

.method public getHasMoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragView;->hasMoved:Z

    return p0
.end method

.method public getInitialScale()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    return p0
.end method

.method public getLastTouchPoint()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public hasDrawn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScaleAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnimStarted:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public move(II)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method public onDragStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnDragStartCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public remove()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setHasDragOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDragOffset:Z

    return-void
.end method

.method public setHasMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->hasMoved:Z

    return-void
.end method

.method public setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Li/m;

    invoke-direct {v1, p0, p1}, Li/m;-><init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnAnimationEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mOnAnimEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public show(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getHasDragOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Li/j;

    invoke-direct {p2, p1}, Li/j;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
