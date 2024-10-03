.class public Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;
    }
.end annotation


# instance fields
.field private mA11yButton:Landroid/widget/ImageView;

.field private final mAllButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mAreNavButtonsInSeparateWindow:Z

.field private mBackButton:Landroid/widget/ImageView;

.field private mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDarkIconColor:I

.field private final mEndContextualContainer:Landroid/view/ViewGroup;

.field private mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field private final mFloatingRotationButtonBounds:Landroid/graphics/Rect;

.field private final mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

.field private mHomeButton:Landroid/widget/ImageView;

.field private mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mIsImeRenderingNavButtons:Z

.field private mLastSetNavButtonTranslationY:F

.field private final mLightIconColor:I

.field private final mNavButtonContainer:Landroid/widget/LinearLayout;

.field private final mNavButtonInAppDisplayProgressForSysui:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mNavButtonsView:Landroid/widget/FrameLayout;

.field private final mOnBackgroundIconColor:I

.field private final mOnBackgroundNavButtonColorOverrideMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mOnTaskbarBackgroundNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mPropertyHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsButton:Landroid/widget/ImageView;

.field private final mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

.field private final mSeparateWindowInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlideInViewVisibleNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mStartContextualContainer:Landroid/view/ViewGroup;

.field private mState:I

.field private mSysuiStateFlags:I

.field private final mTaskbarNavButtonDarkIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForIme:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/m0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/m0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/m0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/m0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/m0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/m0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/o0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/o0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/n0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/n0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/n0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/n0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnTaskbarBackgroundNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/n0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/n0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSlideInViewVisibleNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/n0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/n0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnBackgroundNavButtonColorOverrideMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    new-instance v0, Lcom/android/launcher3/taskbar/l0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/l0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0172

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0171

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0b037c

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0603ce

    invoke-virtual {p1, p2}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    const v0, 0x7f0603cd

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnBackgroundIconColor:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onComputeInsetsForSeparateWindow(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/rotation/FloatingRotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    return-object p0
.end method

.method static synthetic access$572(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return p1
.end method

.method static synthetic access$576(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method private addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0, p3, p5, p6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->getButtonContentDescription(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/launcher3/taskbar/d0;

    invoke-direct {p1, p4, p2}, Lcom/android/launcher3/taskbar/d0;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/launcher3/taskbar/k0;

    invoke-direct {p1, p4, p2}, Lcom/android/launcher3/taskbar/k0;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method private addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method private applyState()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$7(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$10(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$4(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$updateButtonLayoutSpacing$20(I)Z

    move-result p0

    return p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const-string v2, "FLAG_SWITCHER_SHOWING"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "FLAG_IME_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FLAG_ROTATION_BUTTON_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "FLAG_A11Y_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "FLAG_KEYGUARD_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x40

    const-string v2, "FLAG_KEYGUARD_OCCLUDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, "FLAG_DISABLE_HOME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x100

    const-string v2, "FLAG_DISABLE_RECENTS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x200

    const-string v2, "FLAG_DISABLE_BACK"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x400

    const-string v2, "FLAG_NOTIFICATION_SHADE_EXPANDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x800

    const-string v2, "FLAG_SCREEN_PINNING_ACTIVE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x1000

    const-string v2, "FLAG_VOICE_INTERACTION_WINDOW_SHOWING"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$17(I)Z

    move-result p0

    return p0
.end method

.method private handleSetupUi()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v2

    const v3, 0x7f070532

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f070550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    :goto_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSetupWindowHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic i(ZI)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$5(ZI)Z

    move-result p0

    return p0
.end method

.method private initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .locals 15

    move-object v7, p0

    iget-object v3, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v1, 0x7f0802dd

    const/4 v2, 0x1

    const v5, 0x7f0b00a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/v;->a:Lcom/android/launcher3/taskbar/v;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    sget-object v11, Lcom/android/launcher3/taskbar/c0;->a:Lcom/android/launcher3/taskbar/c0;

    sget-object v12, Lcom/android/launcher3/LauncherAnimUtils;->ROTATION_DRAWABLE_PERCENT:Landroid/util/FloatProperty;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070550

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    sget-object v11, Lcom/android/launcher3/taskbar/a0;->a:Lcom/android/launcher3/taskbar/a0;

    sget-object v12, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    mul-int/2addr v0, v1

    int-to-float v13, v0

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0802df

    const/4 v2, 0x2

    const v5, 0x7f0b01d7

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/b0;->a:Lcom/android/launcher3/taskbar/b0;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0802e3

    const/4 v2, 0x4

    const v5, 0x7f0b02f1

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v9

    iput-object v9, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    iget-object v8, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/taskbar/j0;

    invoke-direct {v12, p0}, Lcom/android/launcher3/taskbar/j0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/taskbar/s;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/taskbar/s;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher3/taskbar/r0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/r0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0802dc

    const/16 v2, 0x10

    const v5, 0x7f0b0012

    const v6, 0x7f0e0157

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/z;->a:Lcom/android/launcher3/taskbar/z;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isContextualButtonShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$12(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$13(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$11(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addButton$18(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(ILandroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$addButton$19(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonLongClick(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$init$0(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$1(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x800

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$2(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x2000

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$3(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$4(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$5(ZI)Z
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$6(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1400

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$7(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$8(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$9(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initButtons$10(I)Z
    .locals 4

    and-int/lit8 v0, p0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v3, p0, 0x10

    if-nez v3, :cond_1

    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    and-int/lit16 p0, p0, 0x200

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static synthetic lambda$initButtons$11(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initButtons$12(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x20

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

.method private static synthetic lambda$initButtons$13(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initButtons$14()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    return-object v0
.end method

.method private synthetic lambda$initButtons$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(ILandroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onRecentsButtonClicked()V

    return-void
.end method

.method private synthetic lambda$initButtons$16(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initButtons$17(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateButtonLayoutSpacing$20(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$3(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$16(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$9(I)Z

    move-result p0

    return p0
.end method

.method private onComputeInsetsForSeparateWindow(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)[F
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$14()[F

    move-result-object p0

    return-object p0
.end method

.method private parseSystemUiFlags(I)V
    .locals 12

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v1

    :goto_5
    and-int/lit16 v8, p1, 0x804

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move v8, v1

    :goto_6
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move v9, v1

    :goto_7
    const/high16 v10, 0x2000000

    and-int/2addr v10, p1

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move v10, v1

    :goto_8
    const/4 v11, 0x2

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x8

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x80

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x100

    invoke-direct {p0, v0, v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x200

    invoke-direct {p0, v0, v7}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x400

    invoke-direct {p0, v0, v8}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x800

    invoke-direct {p0, v0, v9}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x1000

    invoke-direct {p0, v0, v10}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateButtonLayoutSpacing()V

    :cond_a
    return-void
.end method

.method public static synthetic q(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$6(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$2(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonColor()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$8(I)Z

    move-result p0

    return p0
.end method

.method private updateButtonLayoutSpacing()V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v5

    sget-boolean v1, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz v1, :cond_1

    if-nez v7, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory;->Companion:Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$Companion;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v8

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$Companion;->getUiLayoutter(Lcom/android/launcher3/DeviceProfile;Landroid/widget/FrameLayout;Landroid/content/res/Resources;ZZZZ)Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$NavButtonLayoutter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isContextualButtonShowing()Z

    move-result p0

    invoke-interface {v1, v0, p0}, Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$NavButtonLayoutter;->layoutButtons(Lcom/android/launcher3/DeviceProfile;Z)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->handleSetupUi()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/taskbar/y;->a:Lcom/android/launcher3/taskbar/y;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const v0, 0x7f07054b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v5, 0x7f070551

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v7, 0x7f07054f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07054e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v9, v5, v0

    div-int/2addr v9, v1

    sub-int v0, v7, v0

    div-int/2addr v0, v1

    new-instance v10, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    iget-object v11, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v12, 0x7f0802de

    invoke-virtual {v11, v12}, Landroid/view/ContextThemeWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/RotateDrawable;->setFromDegrees(F)V

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/RotateDrawable;->setToDegrees(F)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9, v0, v9, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0802e0

    invoke-virtual {v3, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9, v0, v9, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f070545

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f07052b

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    int-to-float v0, v8

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    :cond_3
    if-eqz v7, :cond_8

    new-instance v5, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v8, 0x7f0802dd

    invoke-virtual {v7, v8}, Landroid/view/ContextThemeWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/RotateDrawable;->setFromDegrees(F)V

    iget-object v7, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_4
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/RotateDrawable;->setToDegrees(F)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x800005

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineNavButtonsEndSpacing:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v5, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isContextualButtonShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    if-ge v0, v5, :cond_5

    const v5, 0x7f070547

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/2addr v5, v1

    add-int/2addr v0, v5

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f07052f

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-nez v6, :cond_6

    div-int/lit8 v2, v0, 0x2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v6, v2, :cond_7

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_7
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method private updateNavButtonColor()V
    .locals 5

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnBackgroundNavButtonColorOverrideMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnTaskbarBackgroundNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v3, v3, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSlideInViewVisibleNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnBackgroundIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNavButtonInAppDisplayProgressForSysui()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    :cond_0
    return-void
.end method

.method private updateStateForFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonInAppDisplayProgressForSysui()V

    return-void
.end method

.method public static synthetic w(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$addButton$18(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$addButton$19(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;
    .locals 7

    const v6, 0x7f0e015d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->extendedHitboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NavbarButtonsViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-static {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmLightIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmDarkIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmFloatingRotationButtonBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmSysuiStateFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tLast set nav button translationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLastSetNavButtonTranslationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tmTaskbarNavButtonTranslationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tmTaskbarNavButtonTranslationYForInAppDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t\tmTaskbarNavButtonTranslationYForIme="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBackButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getHomeButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getOnTaskbarBackgroundNavButtonColorOverride()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnTaskbarBackgroundNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonDarkIntensity()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getTouchController()Lcom/android/launcher3/util/TouchController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v7

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSetupWindowHeight()I

    move-result v0

    invoke-direct {v1, v9, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    invoke-static {v1, v8, v0}, Lcom/android/launcher3/util/DimensionUtils;->getTaskbarPhoneDimensions(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)Landroid/graphics/Point;

    move-result-object v1

    :goto_0
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->imeDrawsImeNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    iput-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-nez v0, :cond_3

    const v1, 0x7f0802c1

    const/16 v2, 0x8

    if-eqz v7, :cond_2

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    :goto_2
    move-object v3, v0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0b01f8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/w;->a:Lcom/android/launcher3/taskbar/w;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/x;->a:Lcom/android/launcher3/taskbar/x;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/h0;->a:Lcom/android/launcher3/taskbar/h0;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getKeyguardBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/e0;->a:Lcom/android/launcher3/taskbar/e0;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    xor-int/2addr v0, v10

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v1

    if-nez v7, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    :cond_5
    :goto_3
    const/16 v0, 0x1402

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v12, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v13, Lcom/android/launcher3/taskbar/q0;

    invoke-direct {v13, v0}, Lcom/android/launcher3/taskbar/q0;-><init>(I)V

    sget-object v17, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v11, v3

    move-object/from16 v14, v17

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getTaskbarHeightForIme()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v18, v0, v2

    if-eqz v10, :cond_6

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_4

    :cond_6
    move/from16 v19, v18

    :goto_4
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v15, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v3, Lcom/android/launcher3/taskbar/t;

    invoke-direct {v3, v1}, Lcom/android/launcher3/taskbar/t;-><init>(Z)V

    move-object v14, v2

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mOnBackgroundNavButtonColorOverrideMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/g0;->a:Lcom/android/launcher3/taskbar/g0;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSlideInViewVisibleNavButtonColorOverride:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v3, Lcom/android/launcher3/taskbar/u;->a:Lcom/android/launcher3/taskbar/u;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    if-eqz v10, :cond_7

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateButtonLayoutSpacing()V

    const/16 v0, 0x2000

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNavbarBackgroundAlpha()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/i0;->a:Lcom/android/launcher3/taskbar/i0;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0b030b

    const v3, 0x7f0e0157

    invoke-direct {v6, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/widget/ImageView;)V

    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->hide()Z

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    goto :goto_6

    :cond_7
    new-instance v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v11, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v12, 0x7f120045

    const v13, 0x7f0e012f

    const v14, 0x7f0b030b

    const v15, 0x7f0701ad

    const v16, 0x7f0704d0

    const v17, 0x7f0701af

    const v18, 0x7f0701ae

    const v19, 0x7f0701ac

    const v20, 0x7f070255

    const v21, 0x7f050017

    move-object v10, v0

    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;-><init>(Landroid/content/Context;IIIIIIIIII)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    iget-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-nez v0, :cond_9

    const v1, 0x7f0802dd

    const/4 v2, 0x1

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0b00a0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_5

    :cond_8
    const/high16 v1, -0x3d4c0000    # -90.0f

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/f0;->a:Lcom/android/launcher3/taskbar/f0;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/taskbar/p0;->g:Lcom/android/launcher3/taskbar/p0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v6, v1, v7, v9}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isHomeDisabled()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImeVisible()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentsDisabled()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveNavButtonsBackToTaskbarWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public moveNavButtonsToNewWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/16 v1, 0x7e8

    const-string v2, "Taskbar Nav Buttons"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams(ILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->onConfigurationChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->handleSetupUi()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateButtonLayoutSpacing()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->unregisterListeners()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onUiControllerChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonInAppDisplayProgressForSysui()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonTranslationY()V

    return-void
.end method

.method public setBackButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setBackForBouncer(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public setHomeButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setKeyguardVisible(ZZ)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 p1, 0x40

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public setSlideInViewVisible(Z)V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public updateNavButtonTranslationY()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v3, v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldUseInAppLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLastSetNavButtonTranslationY:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->parseSystemUiFlags(I)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/launcher3/taskbar/p0;->g:Lcom/android/launcher3/taskbar/p0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public updateTaskbarAlignment(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onAnimationProgressToOverview(F)V

    return-void
.end method
