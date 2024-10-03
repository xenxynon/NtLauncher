.class public Lcom/android/launcher3/taskbar/TaskbarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

.field private final mFolderLeaveBehindColor:I

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLayoutBounds:Landroid/graphics/Rect;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mIconTouchSize:I

.field private final mIsRtl:Z

.field private final mItemMarginLeftRight:I

.field private final mItemPadding:I

.field private mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mQsb:Landroid/view/View;

.field private mShouldTryStartAlign:Z

.field private mTaskbarDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTempOutLocation:[I

.field private mTransientTaskbarAllAppsButtonTranslationXOffset:F

.field private mTransientTaskbarMinWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTransientTaskbarBounds()Landroid/graphics/Rect;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p3}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIsRtl:Z

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07057d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTransientTaskbarMinWidth:F

    if-eqz v0, :cond_1

    const v3, 0x7f070579

    goto :goto_1

    :cond_1
    const v3, 0x7f070529

    :goto_1
    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTransientTaskbarAllAppsButtonTranslationXOffset:F

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarView;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    const v3, 0x7f07054c

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    int-to-float v5, v4

    const v6, 0x3f6b851f    # 0.92f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const v6, 0x7f070549

    invoke-virtual {p4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int v5, v6, v5

    div-int/2addr v5, p2

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int/2addr v6, v4

    div-int/2addr v6, p2

    iput v6, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    const p2, 0x1010212

    invoke-static {p3, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mFolderLeaveBehindColor:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v3, "android.hardware.type.pc"

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v3, 0x7f0e0155

    invoke-virtual {p2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/IconButtonView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    if-eqz v0, :cond_2

    const v0, 0x7f0802ea

    goto :goto_2

    :cond_2
    const v0, 0x7f0802e8

    :goto_2
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/launcher3/views/IconButtonView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    if-eqz v2, :cond_3

    const/high16 p4, -0x40800000    # -1.0f

    goto :goto_3

    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    const p4, 0x7f060022

    invoke-virtual {p3, p4}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/views/IconButtonView;->setForegroundTint(I)V

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0158

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0131

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    return-void
.end method

.method private inflate(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private removeAndRecycle(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected announceAccessibilityChanges()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public areIconsVisible()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

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

.method public getAllAppsButtonView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    return-object p0
.end method

.method public varargs getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    move v4, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    return-object p0
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getIconLayoutWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    mul-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    add-int/2addr v1, p0

    mul-int/2addr v0, v1

    return v0
.end method

.method public getIconTouchSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    return p0
.end method

.method public getIconViews()[Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getQsb()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    return-object p0
.end method

.method public getTaskbarDividerView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    return-object p0
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12025e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getBackgroundOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getAllAppsButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getTaskbarDividerLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v2, v1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->startAlignTaskbar:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mShouldTryStartAlign:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mFolderLeaveBehindColor:I

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconLayoutWidth()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-le p1, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int/2addr v1, v2

    :cond_0
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v4

    sub-int p2, p4, p2

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int p2, p4, p2

    iget-boolean v5, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mShouldTryStartAlign:Z

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->inlineNavButtonsEndSpacingPx:I

    if-eqz v4, :cond_1

    sub-int v5, p4, v5

    goto :goto_0

    :cond_1
    add-int/2addr v5, v1

    goto :goto_0

    :cond_2
    move v5, p2

    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    sub-int v7, v5, v1

    if-le v2, v7, :cond_4

    goto :goto_1

    :cond_3
    sub-int v7, p4, v2

    if-le v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v6

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    sub-int p4, p2, v1

    sub-int/2addr v2, p4

    goto :goto_2

    :cond_5
    sub-int/2addr p4, v2

    sub-int v2, p4, p2

    :goto_2
    add-int v5, p2, v2

    :cond_6
    sget-object p2, Lcom/android/launcher3/taskbar/TaskbarView;->sTmpRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput v5, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int p4, p5, p3

    div-int/lit8 p4, p4, 0x2

    iput p4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p3

    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    if-lez p1, :cond_a

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    if-ne p2, p3, :cond_8

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    if-eqz v4, :cond_7

    add-int/2addr p3, v5

    iget p4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    add-int/2addr p4, p3

    goto :goto_4

    :cond_7
    sub-int p4, v5, p3

    iget p3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    sub-int p3, p4, p3

    :goto_4
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    sub-int v2, p5, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2, p3, v2, p4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_8
    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    if-ne p2, p3, :cond_9

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    add-int/2addr v5, p3

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int p3, v5, p3

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, v1, v5, p4}, Landroid/view/View;->layout(IIII)V

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    add-int/2addr p3, p2

    goto :goto_5

    :cond_9
    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int/2addr v5, p3

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int p3, v5, p3

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, v1, v5, p4}, Landroid/view/View;->layout(IIII)V

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int/2addr p3, p2

    :goto_5
    move v5, p3

    :goto_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v5

    int-to-float p2, p2

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTransientTaskbarMinWidth:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTransientTaskbarMinWidth:F

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    add-int p4, p1, p2

    iput p4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->left:I

    :cond_b
    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarView;->sTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->notifyIconLayoutBoundsChanged()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    throw p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f12025d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f12025c

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setThemedIconsBackgroundColor(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/icons/ThemedIconDrawable;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->changeBackgroundColor(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v1, v4, :cond_9

    aget-object v4, p1, v1

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x7f0e015e

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_2
    instance-of v6, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v6, :cond_3

    const v6, 0x7f0e0085

    move v9, v6

    move v6, v5

    move v5, v9

    goto :goto_2

    :cond_3
    const v5, 0x7f0e0156

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v8

    if-ne v8, v5, :cond_4

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v4, :cond_5

    :cond_4
    invoke-direct {p0, v7}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    if-nez v7, :cond_7

    if-eqz v6, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v6, p0, v5}, Lcom/android/launcher3/folder/BaseFolderIcon;->inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setTextVisible(Z)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, v5}, Lcom/android/launcher3/taskbar/TaskbarView;->inflate(I)Landroid/view/View;

    move-result-object v5

    :goto_3
    move-object v7, v5

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v7, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    instance-of v5, v7, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_8

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_8

    move-object v5, v7

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/BubbleTextView;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v6

    invoke-virtual {v5, v4, v6, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_a

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_b

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTransientTaskbarAllAppsButtonTranslationXOffset:F

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1, v1}, Lcom/android/launcher3/views/IconButtonView;->setTranslationXForTaskbarAllAppsIcon(F)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/IconButtonView;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIsRtl:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    goto :goto_7

    :cond_c
    move v1, v0

    :goto_7
    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v5, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTaskbarDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIsRtl:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    :cond_d
    invoke-virtual {p0, p1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIsRtl:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :cond_f
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mQsb:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method
