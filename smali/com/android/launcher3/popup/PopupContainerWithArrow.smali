.class public Lcom/android/launcher3/popup/PopupContainerWithArrow;
.super Lcom/nothing/launcher/popup/b;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;,
        Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/nothing/launcher/popup/b<",
        "TT;>;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;"
    }
.end annotation


# instance fields
.field protected mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field protected mContainerWidth:I

.field protected mDeepShortcutContainer:Landroid/view/ViewGroup;

.field protected final mDeepShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptTouchDown:Landroid/graphics/PointF;

.field protected mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

.field protected mNumNotifications:I

.field protected mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

.field protected mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

.field private final mShortcutHeight:F

.field protected final mStartDragThreshold:I

.field protected mSystemShortcutContainer:Landroid/view/ViewGroup;

.field protected mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/popup/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070511

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    return-void
.end method

.method private addAllShortcutsMaterialU(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const v0, 0x7f0e014b

    const v1, 0x7f0e0143

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcutsMaterialU(Ljava/util/List;II)V

    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    int-to-float p2, p2

    add-float/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDeepShortcutsMaterialU(IF)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getNonWidgetSystemShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcutsIconsOnly(Ljava/util/List;)V

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070515

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-static {p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetShortcut(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e0179

    invoke-virtual {p0, v1, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V

    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    iget v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mChildContainerMargin:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    add-float/2addr v0, p2

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDeepShortcutsMaterialU(IF)V

    return-void
.end method

.method private addDeepShortcutsMaterialU(IF)V
    .locals 3

    const v0, 0x7f0e0058

    invoke-virtual {p0, v0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    :goto_0
    if-lez p1, :cond_1

    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutHeight:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0e0059

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    return-void
.end method

.method private addSystemShortcutsIconsOnly(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0149

    invoke-virtual {p0, v0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0148

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    const v2, 0x7f0e0145

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const v2, 0x7f0e0147

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_3

    const v2, 0x7f0e0146

    move v3, v1

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private addSystemShortcutsMaterialU(Ljava/util/List;II)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    invoke-virtual {p0, p3, v1, v2, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$getWidgetShortcut$2(Lcom/android/launcher3/popup/SystemShortcut;)Z

    move-result p0

    return p0
.end method

.method public static dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$getItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$showForIcon$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->lambda$getNonWidgetSystemShortcuts$3(Lcom/android/launcher3/popup/SystemShortcut;)Z

    move-result p0

    return p0
.end method

.method private static getNonWidgetSystemShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/popup/g;->a:Lcom/android/launcher3/popup/g;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;"
        }
    .end annotation

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object p0
.end method

.method private getTitleForAccessibility()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-nez p0, :cond_0

    const p0, 0x7f12004d

    goto :goto_0

    :cond_0
    const p0, 0x7f120249

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWidgetShortcut(Ljava/util/List;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/popup/SystemShortcut$Widgets;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/popup/f;->a:Lcom/android/launcher3/popup/f;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class v0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    new-instance v1, Lcom/android/launcher3/popup/e;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/e;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private initializeSystemShortcuts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0e014a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e0143

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcutsIconsOnly(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$getItemClickListener$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$getNonWidgetSystemShortcuts$3(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getWidgetShortcut$2(Lcom/android/launcher3/popup/SystemShortcut;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    return p0
.end method

.method private static synthetic lambda$showForIcon$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->clearFocus()V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/popup/d;

    invoke-direct {v5, v0, v1, p0}, Lcom/android/launcher3/popup/d;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/popup/h;->a:Lcom/android/launcher3/popup/h;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0e0114

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v7

    invoke-virtual {v2, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShowRowsMaterialU(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0e00fc

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, p0, v3, v2, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V

    move-object v2, v5

    :goto_0
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-object v2
.end method


# virtual methods
.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->applyNotificationInfos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    invoke-super {p0}, Lcom/nothing/launcher/popup/b;->closeComplete()V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :cond_2
    return-void
.end method

.method protected configureForLauncher(Lcom/android/launcher3/Launcher;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Z)V

    return-object v0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object p0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/c;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method public getItemDragHandler()Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    return-object p0
.end method

.method protected getNotificationContainer()Lcom/android/launcher3/notification/NotificationContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    return-object p0
.end method

.method protected getOriginalIcon()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method protected getSystemShortcutContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected getWidgetContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    if-eqz p4, :cond_1

    const p4, 0x7f0e014c

    invoke-virtual {p0, p4, p2}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 2

    const v0, 0x7f0e0143

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    move-object v2, p1

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->onInterceptSwipeEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->onSwipeEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    const/16 v4, 0x8

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-nez v3, :cond_1

    const v3, 0x7f0b029e

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationContainer;

    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/notification/NotificationContainer;->setPopupView(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    :cond_2
    iput-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    const v3, 0x7f0b0134

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    :cond_3
    if-eqz v2, :cond_7

    invoke-static {p4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getNonWidgetSystemShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070515

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    if-lez p2, :cond_4

    const v2, 0x7f0e0057

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    invoke-static {p4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetShortcut(Ljava/util/List;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    if-nez p4, :cond_5

    const p4, 0x7f0e0178

    invoke-virtual {p0, p4, p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    :cond_5
    iget-object p4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, p4, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcuts(Ljava/util/List;)V

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const p2, 0x7f0e014a

    invoke-virtual {p0, p2, p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    move p2, v1

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_9

    const v2, 0x7f0e0143

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    if-ge p2, v5, :cond_8

    move v5, v0

    goto :goto_4

    :cond_8
    move v5, v1

    :goto_4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->show()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    return-void
.end method

.method public populateAndShowRowsMaterialU(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    if-lez p2, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addAllShortcutsMaterialU(ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0e014b

    const v0, 0x7f0e0143

    invoke-direct {p0, p3, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addSystemShortcutsMaterialU(Ljava/util/List;II)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->show()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    return-void
.end method

.method protected setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b029e

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/notification/NotificationContainer;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public setPopupItemDragHandler(Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    return-void
.end method

.method protected setWidgetContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method protected updateHiddenShortcuts()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-lt v3, v0, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected updateNotificationHeader()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1, v0}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationContainer;->updateHeader(I)V

    :cond_0
    return-void
.end method
