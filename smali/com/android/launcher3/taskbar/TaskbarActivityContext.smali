.class public Lcom/android/launcher3/taskbar/TaskbarActivityContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source "SourceFile"


# static fields
.field private static final ENABLE_THREE_BUTTON_TASKBAR:Z


# instance fields
.field private final mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

.field private mAddedWindow:Z

.field private mBindingItems:Z

.field private final mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private final mImeDrawsImeNavBar:Z

.field private mIsDestroyed:Z

.field private mIsExcludeFromMagnificationRegion:Z

.field private mIsFullscreen:Z

.field private final mIsNavBarForceVisible:Z

.field private final mIsNavBarKidsMode:Z

.field private final mIsSafeModeEnabled:Z

.field private final mIsUserSetupComplete:Z

.field private mLastRequestedNonFullscreenHeight:I

.field private final mLeftCorner:Landroid/view/RoundedCorner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNavMode:Lcom/android/launcher3/util/NavigationMode;

.field private final mRightCorner:Landroid/view/RoundedCorner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTransientTaskbarBounds:Landroid/graphics/Rect;

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.taskbar_three_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->ENABLE_THREE_BUTTON_TASKBAR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lt0/h;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    iput-object v0, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    iput-boolean v0, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    iput-boolean v0, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    iput-boolean v0, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTransientTaskbarBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v15, v9, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->matchDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v2

    iput-object v2, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    const-string v2, "config_imeDrawsImeNavBar"

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getBoolByName(Ljava/lang/String;Landroid/content/res/Resources;Z)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    new-instance v1, Lcom/android/launcher3/taskbar/x0;

    invoke-direct {v1, v15}, Lcom/android/launcher3/taskbar/x0;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    const-string v2, "isSafeMode"

    invoke-static {v2, v1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    const-string v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v2

    iput-boolean v2, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    const-string v2, "nav_bar_kids_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v3

    iput-boolean v3, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    move-object v10, v2

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/WindowManager;

    iput-object v11, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    iput-object v2, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    iput-object v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    iget-object v1, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const v1, 0x7f0e016f

    goto :goto_1

    :cond_1
    const v1, 0x7f0e0153

    :goto_1
    iget-object v2, v15, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iput-object v12, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    const v0, 0x7f0b03ba

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/taskbar/TaskbarView;

    const v0, 0x7f0b03b8

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/taskbar/TaskbarScrimView;

    const v0, 0x7f0b028a

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0b037f

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/taskbar/StashedHandleView;

    const v1, 0x7f0b03b0

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const v2, 0x7f0b037e

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    invoke-direct {v3, v15}, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v3, v15, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    new-instance v4, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-direct {v4, v15, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;-><init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    new-instance v5, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-direct {v5, v15, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-direct {v1, v15}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v6, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-direct {v6, v15, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)V

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_2

    :cond_2
    move-object/from16 v26, v3

    :goto_2
    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v6, v15}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    if-eqz v16, :cond_3

    new-instance v1, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;

    invoke-direct {v1, v15, v0}, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {v1, v15, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    :goto_3
    move-object/from16 v17, v1

    new-instance v18, Lcom/android/systemui/shared/rotation/RotationButtonController;

    const v0, 0x7f0600c9

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const v0, 0x7f0600c8

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f0802e4

    const v5, 0x7f0802e5

    const v19, 0x7f0802e6

    const v20, 0x7f0802e7

    new-instance v1, Lcom/android/launcher3/taskbar/y0;

    invoke-direct {v1, v15}, Lcom/android/launcher3/taskbar/y0;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 v0, v18

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v6

    move/from16 v6, v19

    move-object/from16 p1, v7

    move/from16 v7, v20

    move-object v9, v8

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-direct {v6, v15, v12}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-direct {v7, v15, v13}, Lcom/android/launcher3/taskbar/TaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    new-instance v8, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-direct {v8, v15, v14}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V

    new-instance v12, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    new-instance v0, Lq0/e;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v15, v2}, Lq0/e;-><init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v1, p4

    invoke-direct {v12, v15, v1, v11, v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lt0/h;Landroid/view/WindowManager;Lq0/e;)V

    new-instance v10, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-direct {v10, v15}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v11, Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-direct {v11, v15, v9}, Lcom/android/launcher3/taskbar/StashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V

    new-instance v13, Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {v13, v15}, Lcom/android/launcher3/taskbar/TaskbarStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v14, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-direct {v14, v15}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v9, Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-direct {v9, v15}, Lcom/android/launcher3/taskbar/TaskbarPopupController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v5, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-direct {v5, v15}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v4, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    move-object/from16 v0, p2

    invoke-direct {v4, v15, v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/DeviceProfile;)V

    new-instance v19, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;-><init>()V

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-direct {v3, v15}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v2, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-direct {v2, v15}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-direct {v1, v15}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;

    invoke-direct {v0, v15}, Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 p2, v0

    if-eqz v16, :cond_4

    new-instance v0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;

    invoke-direct {v0, v15}, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    :goto_4
    move-object/from16 v27, v0

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    move-object/from16 v23, v0

    invoke-direct {v0, v15}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    move-object/from16 v24, v0

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    move-object/from16 v25, v0

    invoke-direct {v0, v15}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 v21, p2

    move-object/from16 v0, p1

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v28, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v3

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    move-object v9, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v28

    move-object/from16 v22, v27

    invoke-direct/range {v0 .. v26}, Lcom/android/launcher3/taskbar/TaskbarControllers;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/rotation/RotationButtonController;Lcom/android/launcher3/taskbar/TaskbarDragLayerController;Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/StashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Lcom/android/launcher3/taskbar/TaskbarTranslationController;Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;Ljava/util/Optional;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$matchDeviceProfile$2(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$launchFromTaskbarPreservingSplitIfVisible$9(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$8(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$showPopupMenuForIcon$11(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$5()V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$7(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$6(Lcom/android/launcher3/folder/Folder;I)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/util/RunnableList;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$makeDefaultActivityOptions$4(Lcom/android/launcher3/util/RunnableList;J)V

    return-void
.end method

.method private static synthetic lambda$createLauncherStartFromSuwAnim$10(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$launchFromTaskbarPreservingSplitIfVisible$9(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p0, "Main"

    const-string p2, "start: taskbarAppIcon"

    invoke-static {p0, p2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->launchTasks()Lcom/android/launcher3/util/RunnableList;

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static synthetic lambda$makeDefaultActivityOptions$4(Lcom/android/launcher3/util/RunnableList;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method private static synthetic lambda$matchDeviceProfile$2(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput v0, p2, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iput p0, p2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iget p0, p2, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    iput p0, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSplitScreenMenuButtonClicked$3()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    return-void
.end method

.method private synthetic lambda$onTaskbarIconClicked$5()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    return-void
.end method

.method private synthetic lambda$onTaskbarIconClicked$6(Lcom/android/launcher3/folder/Folder;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/taskbar/d1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/d1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTaskbarIconClicked$7(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onTaskbarIconClicked$8(Lcom/android/launcher3/folder/Folder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    new-instance v0, Lcom/android/launcher3/taskbar/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/c1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method private synthetic lambda$showPopupMenuForIcon$11(Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method

.method private launchFromTaskbarPreservingSplitIfVisible(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1    # Lcom/android/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/w0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/taskbar/w0;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTaskAndRunCallback(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$new$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private matchDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/h1;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/taskbar/h1;-><init>(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->withDimensionsOverride(Ljava/util/function/Consumer;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onSplitScreenMenuButtonClicked$3()V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$createLauncherStartFromSuwAnim$10(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private onNotificationShadeExpandChanged(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNotificationShadeBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method private startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    const-string v1, "Main"

    const-string v2, "start: taskbarAppIcon"

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v2, 0x7f12005a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskbarActivityContext"

    invoke-static {p1, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->hasContainerInfo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isInOverview()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictedHotseatContainer()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasCardinality()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getCardinality()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasHotseat()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasFolder()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasHotseat()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p0

    invoke-virtual {p0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->clearHotseat()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasAllAppsContainer()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictionContainer()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public createDefaultWindowLayoutParams(ILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const v1, 0x20800008

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v4

    if-nez v4, :cond_1

    const v1, 0x20840028

    :cond_1
    move v8, v1

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    :goto_2
    move v6, v4

    const/4 v9, -0x3

    move-object v4, v1

    move v7, p1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_4

    const/16 p1, 0x50

    goto :goto_3

    :cond_4
    const p1, 0x800005

    :goto_3
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    const/16 p1, 0x30

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 p1, 0x3

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p1, 0x40

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f12026f

    goto :goto_4

    :cond_5
    const p1, 0x7f12025e

    :goto_4
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-object v1
.end method

.method protected createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v4, v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->addLauncherResumeAnimation(Landroid/animation/AnimatorSet;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getAllAppsButtonView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/taskbar/v0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/v0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public disableNavBarElements(IIIZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getDisplayId()I

    move-result p2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {p0, p3}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDisable2FlagChanged(I)V

    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->toSmallString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x1000

    const-string v2, "TaskbarActivityContext#DeviceProfileChanged"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarActivityContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmNavMode=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmImeDrawsImeNavBar=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsUserSetupComplete=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmWindowLayoutParams.height=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tmBindInProgress=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->dump(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableBlockingTimeoutDuringTests(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->enableBlockingTimeoutDuringTests(Z)V

    return-void
.end method

.method public enableManualStashingDuringTests(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->enableManualStashingDuringTests(Z)V

    return-void
.end method

.method public excludeFromMagnificationRegion(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 0
    .param p2    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTaskbarWindowHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f070553

    goto :goto_0

    :cond_0
    const p0, 0x7f070559

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSetupWindowHeight()I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    const p0, 0x7f07057f

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDeviceProfile()Lj3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    check-cast p0, Lj3/a;

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/a1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/a1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    return-object v0
.end method

.method public getLeftCornerRadius()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public getRightCornerRadius()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSetupWindowHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07055b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getStashedTaskbarScale()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleHintScale()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return p0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarAllAppsScroll()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->getTaskbarAllAppsScroll()I

    move-result p0

    return p0
.end method

.method public getTaskbarAllAppsTopPadding()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->getTaskbarAllAppsTopPadding()I

    move-result p0

    return p0
.end method

.method public getTransientTaskbarBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTransientTaskbarBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTranslationCallbacks()Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->getTransitionCallback()Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    move-result-object p0

    return-object p0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public imeDrawsImeNavBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .locals 5
    .param p1    # Lcom/android/launcher3/taskbar/TaskbarSharedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    const/16 v0, 0x7e8

    const-string v1, "Taskbar"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams(ILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    iget v0, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    iget v0, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarDisplayId:I

    iget v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarState1:I

    iget v3, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarState2:I

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->disableNavBarElements(IIIZ)V

    iget v0, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->systemBarAttrsDisplayId:I

    iget v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->systemBarAttrsBehavior:I

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSystemBarAttributesChanged(II)V

    iget p1, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->navButtonsDarkIntensity:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNavButtonsDarkIntensityChanged(F)V

    sget-boolean p1, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz p1, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public isBindingItems()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    return p0
.end method

.method public isGestureNav()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInApp()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result p0

    return p0
.end method

.method public isInStashedLauncherState()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInStashedLauncherState()Z

    move-result p0

    return p0
.end method

.method protected isNavBarForceVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    return p0
.end method

.method public isNavBarKidsModeActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaskbarAllAppsOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isTaskbarStashed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result p0

    return p0
.end method

.method public isTaskbarWindowFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    return p0
.end method

.method public isThreeButtonNav()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isUserSetupComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    return p0
.end method

.method public makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 9

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/android/launcher3/taskbar/z0;

    invoke-direct {v8, v0}, Lcom/android/launcher3/taskbar/z0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method notifyUpdateLayoutParams()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onConfigurationChanged(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSetupWindowHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onDestroy()V

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDragEndOrViewRemoved()V

    return-void
.end method

.method onDragEndOrViewRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const v1, 0x22fffff

    invoke-static {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    return-void
.end method

.method public onDragStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    move-result p0

    return p0
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonDarkIntensity()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onRotationProposal(IZ)V

    return-void
.end method

.method public onSplitScreenMenuButtonClicked()V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher3/taskbar/e1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/e1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->addOnCloseCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSwipeToUnstashTaskbar()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->hide()Ln5/t;

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onBehaviorChanged(II)V

    return-void
.end method

.method protected onTaskbarIconClicked(Landroid/view/View;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    goto/16 :goto_3

    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/taskbar/b1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/b1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/g1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/g1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v4, "TaskbarActivityContext"

    if-eqz v1, :cond_7

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    if-eqz v6, :cond_4

    invoke-static {p0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_4

    const v1, 0x7f120233

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Main"

    if-eqz v6, :cond_5

    :try_start_1
    const-string v5, "start: taskbarPromiseIcon"

    invoke-static {v7, v5}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v1, v6, :cond_6

    const-string v1, "start: taskbarDeepShortcut"

    invoke-static {v7, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/LauncherApps;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v5, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->launchFromTaskbarPreservingSplitIfVisible(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const v3, 0x7f12005a

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " intent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7
    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    :goto_1
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->triggerSecondAppForSplit(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Intent;Landroid/view/View;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->launchFromTaskbarPreservingSplitIfVisible(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_0

    :cond_9
    instance-of v1, v0, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;->onItemClicked(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type clicked: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_c

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_c
    return-void
.end method

.method public onTransientAutohideSuspendFlagChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateTaskbarTimeout(Z)V

    return-void
.end method

.method public removeWindowView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAutohideSuspendFlag(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    return-void
.end method

.method public setBindingItems(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    return-void
.end method

.method public setSetupUIVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSetupUIVisible(Z)V

    return-void
.end method

.method public setTaskbarWindowFocusable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTaskbarWindowFocusableForIme(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsToNewWindow()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    return-void
.end method

.method public setTaskbarWindowFullscreen(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method public setTaskbarWindowHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, p1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/taskbar/TaskbarUIController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->setUiController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    return-void
.end method

.method public showPopupMenuForIcon(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/f1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/f1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTaskbarFromBroadcast()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->showTaskbarFromBroadcast()V

    return-void
.end method

.method public startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    return-void
.end method

.method public startTaskbarUnstashHint(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(ZZ)V

    return-void
.end method

.method public startTaskbarUnstashHint(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startUnstashHint(ZZ)V

    return-void
.end method

.method public startTranslationSpring()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->startSpring()V

    return-void
.end method

.method public toggleTaskbarStash()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->toggleTaskbarStash()V

    return-void
.end method

.method public unstashTaskbarIfStashed()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    :goto_0
    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/NavigationMode;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->updateLauncherDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->matchDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    const p2, 0x176274

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->dispatchDeviceProfileChanged()V

    return-void
.end method

.method public updateSysuiStateFlags(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForSysuiFlags(IZ)V

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNotificationShadeExpandChanged(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isRecentsDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setRecentsButtonDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isHomeDisabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->setIsHomeButtonDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateStateForSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->updateStateForSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v1

    :goto_4
    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForSysuiFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->updateStateForSysuiFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->updateSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->updateSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/high16 v3, 0x2000000

    and-int/2addr v3, p1

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->setIsVoiceInteractionWindowVisible(ZZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->updateStateForSysuiFlags(I)V

    return-void
.end method
