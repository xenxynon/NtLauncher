.class public abstract Lcom/android/launcher3/popup/ArrowPopup;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;"
    }
.end annotation


# static fields
.field private static final CLOSE_CHILD_FADE_DURATION_U:I = 0x53

.field private static final CLOSE_CHILD_FADE_START_DELAY_U:I = 0x96

.field private static final CLOSE_DURATION_U:I = 0xe9

.field private static final CLOSE_FADE_DURATION_U:I = 0x53

.field private static final CLOSE_FADE_START_DELAY_U:I = 0x96

.field private static final OPEN_CHILD_FADE_DURATION_U:I = 0x53

.field private static final OPEN_CHILD_FADE_START_DELAY_U:I = 0x0

.field private static final OPEN_DURATION_U:I = 0xc8

.field private static final OPEN_FADE_DURATION_U:I = 0x53

.field private static final OPEN_FADE_START_DELAY_U:I = 0x0

.field private static final OPEN_OVERSHOOT_DURATION_U:I = 0xc8


# instance fields
.field protected CLOSE_CHILD_FADE_DURATION:I

.field protected CLOSE_CHILD_FADE_START_DELAY:I

.field protected CLOSE_DURATION:I

.field protected CLOSE_FADE_DURATION:I

.field protected CLOSE_FADE_START_DELAY:I

.field protected OPEN_CHILD_FADE_DURATION:I

.field protected OPEN_CHILD_FADE_START_DELAY:I

.field protected OPEN_DURATION:I

.field protected OPEN_FADE_DURATION:I

.field protected OPEN_FADE_START_DELAY:I

.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mArrow:Landroid/view/View;

.field protected mArrowColor:I

.field protected final mArrowHeight:I

.field protected final mArrowOffsetHorizontal:I

.field protected final mArrowOffsetVertical:I

.field protected final mArrowPointRadius:I

.field protected final mArrowWidth:I

.field protected final mChildContainerMargin:I

.field protected mCloseChildFadeDuration:I

.field protected mCloseChildFadeStartDelay:I

.field protected mCloseDuration:I

.field protected mCloseFadeDuration:I

.field protected mCloseFadeStartDelay:I

.field protected final mColorIds:[I

.field protected mDeferContainerRemoval:Z

.field protected final mElevation:F

.field protected mGravity:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsAboveIcon:Z

.field protected mIsArrowRotated:Z

.field protected mIsLeftAligned:Z

.field protected final mIsRtl:Z

.field private final mIterateChildrenTag:Ljava/lang/String;

.field private mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

.field protected mOpenChildFadeDuration:I

.field protected mOpenChildFadeStartDelay:I

.field protected mOpenCloseAnimator:Landroid/animation/AnimatorSet;

.field protected mOpenDuration:I

.field protected mOpenFadeDuration:I

.field protected mOpenFadeStartDelay:I

.field protected final mOutlineRadius:F

.field private final mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

.field private final mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected shouldScaleArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x114

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_DURATION:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_START_DELAY:I

    const/16 v4, 0x64

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_FADE_DURATION:I

    const/16 v5, 0x26

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_START_DELAY:I

    const/16 v6, 0x4c

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->OPEN_CHILD_FADE_DURATION:I

    const/16 v7, 0xc8

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_DURATION:I

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_START_DELAY:I

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_DURATION:I

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_START_DELAY:I

    const/16 v4, 0x8c

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_CHILD_FADE_DURATION:I

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenDuration:I

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeStartDelay:I

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeDuration:I

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeStartDelay:I

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeDuration:I

    iput v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseDuration:I

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    const/16 v2, 0x32

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

    iput v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeStartDelay:I

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeDuration:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->shouldScaleArrow:Z

    iput-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsArrowRotated:Z

    new-instance v2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060385

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    const v6, 0x7f0704aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    const v6, 0x7f07049d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    const v8, 0x7f07049a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v10, v6, v8}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f07049c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    const v8, 0x7f07049b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v6, v9

    sub-int/2addr v8, v6

    iput v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    const v6, 0x7f070499

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    const v6, 0x7f0704b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    const v8, 0x7f04042a

    invoke-static {v1, v8}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v8, 0x8

    new-array v10, v8, [F

    aput v2, v10, v3

    const/4 v11, 0x1

    aput v2, v10, v11

    aput v2, v10, v9

    const/4 v12, 0x3

    aput v2, v10, v12

    int-to-float v5, v5

    const/4 v13, 0x4

    aput v5, v10, v13

    const/4 v14, 0x5

    aput v5, v10, v14

    const/4 v15, 0x6

    aput v5, v10, v15

    const/16 v16, 0x7

    aput v5, v10, v16

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v8, [F

    aput v5, v1, v3

    aput v5, v1, v11

    aput v5, v1, v9

    aput v5, v1, v12

    aput v2, v1, v13

    aput v2, v1, v14

    aput v2, v1, v15

    aput v2, v1, v16

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->canUseMultipleShadesForPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v12, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    goto :goto_0

    :cond_0
    new-array v1, v11, [I

    aput v7, v1, v3

    iput-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x7f06038f
        0x7f060392
        0x7f060395
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/ArrowPopup;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->lambda$assignMarginsAndBackgrounds$0(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/ArrowPopup;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/ArrowPopup;->lambda$getOpenCloseAnimator$1(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V
    .locals 16

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    :goto_0
    if-ltz v9, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object/from16 v11, p0

    invoke-virtual {v11, v1}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    goto :goto_2

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    sget-object v4, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-wide/from16 v12, p3

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-wide/from16 v14, p5

    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v7, p7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-object/from16 v7, p7

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->letItemAnim(Landroid/view/View;[FJJLandroid/animation/AnimatorSet;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p0

    :goto_2
    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private varargs getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;II",
            "Landroid/view/animation/Interpolator;",
            "[F)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    invoke-static {p1, p2, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    return-object p0
.end method

.method private getArrowLeft()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .locals 11

    move-object v1, p0

    move v0, p1

    move-object/from16 v2, p7

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    if-eqz v0, :cond_0

    fill-array-data v4, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v4, :array_1

    :goto_0
    new-array v3, v3, [F

    if-eqz v0, :cond_1

    fill-array-data v3, :array_2

    goto :goto_1

    :cond_1
    fill-array-data v3, :array_3

    :goto_1
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move v6, p3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move v6, p4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/launcher3/popup/a;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/popup/a;-><init>(Lcom/android/launcher3/popup/ArrowPopup;Z)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-boolean v0, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setPivotY(F)V

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move v5, p2

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, v1, Lcom/android/launcher3/popup/ArrowPopup;->shouldScaleArrow:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    move/from16 v0, p5

    int-to-long v5, v0

    move/from16 v0, p6

    int-to-long v9, v0

    move-object v0, p0

    move-object v1, p0

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    return-object v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private synthetic lambda$assignMarginsAndBackgrounds$0(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$getOpenCloseAnimator$1(ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->onOpenCloseAnimUpdate(Landroid/animation/ValueAnimator;FZ)V

    return-void
.end method

.method private orientAboutObject(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    iget v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v5, v4

    iget v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    mul-int/2addr v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v5

    iget-boolean v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v11, :cond_2

    move/from16 v11, p1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    move v11, v4

    goto :goto_1

    :cond_3
    move v11, v1

    :goto_1
    iput-boolean v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v11, :cond_4

    move v11, v9

    goto :goto_2

    :cond_4
    move v11, v10

    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v12, v8, 0x2

    iget v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    sub-int/2addr v12, v13

    iget v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget-boolean v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    neg-int v12, v12

    :goto_3
    add-int/2addr v11, v12

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    goto :goto_8

    :cond_6
    add-int v12, v11, v5

    iget v13, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_7

    move v12, v4

    goto :goto_4

    :cond_7
    move v12, v1

    :goto_4
    iget v13, v7, Landroid/graphics/Rect;->left:I

    if-le v11, v13, :cond_8

    move v13, v4

    goto :goto_5

    :cond_8
    move v13, v1

    :goto_5
    iget-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v14, :cond_9

    if-nez v12, :cond_a

    :cond_9
    if-nez v14, :cond_b

    if-eqz v13, :cond_b

    :cond_a
    move v12, v4

    goto :goto_6

    :cond_b
    move v12, v1

    :goto_6
    if-nez v12, :cond_e

    if-eqz p1, :cond_c

    if-nez v14, :cond_c

    move v2, v4

    goto :goto_7

    :cond_c
    move v2, v1

    :goto_7
    if-eqz p2, :cond_d

    if-eqz v14, :cond_d

    move v1, v4

    :cond_d
    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    return-void

    :cond_e
    :goto_8
    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v3

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v14

    iget v15, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    if-le v13, v14, :cond_f

    move v14, v4

    goto :goto_9

    :cond_f
    move v14, v1

    :goto_9
    iput-boolean v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v14, :cond_10

    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    add-int/2addr v13, v2

    sub-int/2addr v3, v2

    :cond_10
    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    sub-int/2addr v13, v15

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v15, v13

    add-int/2addr v15, v3

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-le v15, v2, :cond_14

    const/16 v2, 0x10

    iput v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v9, v8

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    sub-int/2addr v10, v8

    sub-int/2addr v10, v2

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v2, :cond_11

    add-int/2addr v5, v9

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    if-ge v5, v2, :cond_12

    goto :goto_a

    :cond_11
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    if-le v10, v2, :cond_13

    :cond_12
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    move v11, v10

    goto :goto_b

    :cond_13
    :goto_a
    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    move v11, v9

    :goto_b
    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_14
    int-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v3, :cond_16

    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v1

    iget v0, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_c

    :cond_16
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v3

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v13, v3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v13, v1

    iget v0, v0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    sub-int/2addr v13, v0

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_c
    return-void
.end method


# virtual methods
.method protected addArrow()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getArrowLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->updateArrowColor()V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float p0, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public addOnCloseCallback(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected animateClose()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseDuration:I

    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    iget v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeStartDelay:I

    iget v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeDuration:I

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->ACCELERATED_EASE:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseDuration:I

    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    iget v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeStartDelay:I

    iget v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeDuration:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$2;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected animateOpen()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenDuration:I

    iget v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeStartDelay:I

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeDuration:I

    iget v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeStartDelay:I

    iget v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeDuration:I

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/popup/ArrowPopup;->getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/popup/ArrowPopup$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/ArrowPopup$1;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mColorIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/b;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/b;-><init>(Lcom/android/launcher3/popup/ArrowPopup;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_2
    if-ge v6, v2, :cond_e

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_d

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v10

    if-nez v10, :cond_4

    array-length p2, v1

    rem-int p2, v7, p2

    aget p2, v1, p2

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v9}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget v0, v1, v3

    invoke-virtual {p0, v9, v0, v4}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    aget v0, v1, v3

    iput v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    :cond_5
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v0, :cond_6

    if-nez v7, :cond_7

    if-ne p1, p0, :cond_7

    :cond_6
    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    :cond_7
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v9}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    if-ne v5, v0, :cond_9

    const v0, 0x7f0803b2

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    if-le v5, v0, :cond_c

    if-nez v8, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedTop:Landroid/graphics/drawable/GradientDrawable;

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v5, -0x1

    if-ne v8, v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mRoundedBottom:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_3

    :cond_b
    const v0, 0x7f080329

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    :cond_c
    :goto_5
    invoke-virtual {p0, v9, p2, v4}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object v0, v9

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_e
    const-wide/16 p1, 0x0

    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method protected closeComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOnCloseCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getMaterialUOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .locals 21

    move-object/from16 v7, p0

    iget v0, v7, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    iget v1, v7, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    const/4 v8, 0x2

    div-int/2addr v1, v8

    add-int/2addr v0, v1

    iget-boolean v1, v7, Lcom/android/launcher3/popup/ArrowPopup;->mIsArrowRotated:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v7, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    :goto_1
    int-to-float v0, v0

    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setPivotY(F)V

    goto :goto_4

    :cond_1
    iget-boolean v1, v7, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_2

    int-to-float v0, v0

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-boolean v0, v7, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v9

    goto :goto_2

    :goto_4
    new-array v0, v8, [F

    if-eqz p1, :cond_4

    fill-array-data v0, :array_0

    goto :goto_5

    :cond_4
    fill-array-data v0, :array_1

    :goto_5
    move-object v10, v0

    new-array v0, v8, [F

    if-eqz p1, :cond_5

    fill-array-data v0, :array_2

    goto :goto_6

    :cond_5
    fill-array-data v0, :array_3

    :goto_6
    move-object v11, v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v3, p4

    move/from16 v4, p3

    move-object v5, v12

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v13

    iget-object v1, v7, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v12

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p7

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v14

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v11

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/4 v6, 0x4

    if-eqz p1, :cond_6

    new-array v5, v8, [F

    fill-array-data v5, :array_4

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3ea8f5c3    # 0.33f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v9, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v3, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object v9, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v20

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/popup/ArrowPopup;->getAnimatorOfFloat(Landroid/view/View;Landroid/util/Property;IILandroid/view/animation/Interpolator;[F)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v18

    aput-object v12, v1, v17

    aput-object v14, v1, v8

    aput-object v11, v1, v16

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v0, 0x5

    aput-object v20, v1, v0

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7

    :cond_6
    move v2, v6

    new-array v0, v2, [Landroid/animation/Animator;

    aput-object v13, v0, v18

    aput-object v12, v0, v17

    aput-object v14, v0, v8

    aput-object v11, v0, v16

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_7
    move/from16 v0, p5

    int-to-long v3, v0

    move/from16 v0, p6

    int-to-long v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    return-object v15

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f828f5c    # 1.02f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getTargetObjectLocation(Landroid/graphics/Rect;)V
.end method

.method protected handleClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    :goto_0
    return-void
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            ")TR;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "I)TR;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p0
.end method

.method isShortcutContainer(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIterateChildrenTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isShortcutOrWrapper(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    return p0
.end method

.method protected letItemAnim(Landroid/view/View;[FJJLandroid/animation/AnimatorSet;)V
    .locals 0

    return-void
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    return-void
.end method

.method protected onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p5

    int-to-float p2, p2

    add-float/2addr p5, p2

    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpg-float p2, p5, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p2

    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    :cond_1
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_3
    return-void
.end method

.method protected onOpenCloseAnimUpdate(Landroid/animation/ValueAnimator;FZ)V
    .locals 0

    return-void
.end method

.method protected orientAboutObject()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject(ZZ)V

    return-void
.end method

.method protected setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "color"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    new-array v2, v2, [I

    aput p0, v2, v1

    aput p2, v2, v0

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_0
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    new-array v2, v2, [I

    aput p0, v2, v1

    aput p2, v2, v0

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setupForDisplay()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->setupForDisplay()V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->shouldAddArrow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateArrowColor()V
    .locals 14

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v13, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    int-to-float v2, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowHeight:I

    int-to-float v3, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowPointRadius:I

    int-to-float v4, v1

    iget v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOutlineRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetHorizontal:I

    int-to-float v8, v1

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowOffsetVertical:I

    neg-int v1, v1

    int-to-float v9, v1

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    xor-int/lit8 v10, v1, 0x1

    iget-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget v12, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowColor:I

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFFFFFFZZI)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method
