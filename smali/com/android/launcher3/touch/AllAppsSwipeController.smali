.class public Lcom/android/launcher3/touch/AllAppsSwipeController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "SourceFile"


# static fields
.field public static final ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

.field private static final BLUR_ADJUSTED:Landroid/view/animation/Interpolator;

.field public static final BLUR_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final BLUR_MANUAL:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final HOTSEAT_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final HOTSEAT_TRANSLATE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final LINEAR_EARLY_MANUAL:Landroid/view/animation/Interpolator;

.field private static final LINEAR_EARLY_SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final STEP_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final STEP_TRANSITION_ATOMIC:Landroid/view/animation/Interpolator;

.field private static final STEP_TRANSITION_MANUAL:Landroid/view/animation/Interpolator;

.field private static final STEP_TRANSITION_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

.field private static final WORKSPACE_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->LINEAR_EARLY_SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    const v2, 0x3e4ccccc    # 0.19999999f

    invoke-static {v0, v2, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->LINEAR_EARLY_MANUAL:Landroid/view/animation/Interpolator;

    const v7, 0x3eaaa64c    # 0.3333f

    invoke-static {v3, v2, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v8

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_ATOMIC:Landroid/view/animation/Interpolator;

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0, v2, v5}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ADJUSTED:Landroid/view/animation/Interpolator;

    const v9, 0x3e2ab368    # 0.1667f

    invoke-static {v5, v9, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v10

    sput-object v10, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Landroid/view/animation/Interpolator;

    invoke-static {v5, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-static {v5, v9, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v10

    sput-object v10, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v5, v9, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v6, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    const v5, 0x3e874539    # 0.2642f

    invoke-static {v2, v5, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    const v2, 0x3def9db2    # 0.117f

    invoke-static {v0, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v6}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    const v8, 0x3f555326    # 0.8333f

    invoke-static {v5, v7, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    invoke-static {v0, v4, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v2, v1, v6}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v1, v7, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    return-void
.end method

.method public static applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x1

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xb

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_1
    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    const/4 v5, 0x3

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x10

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x4

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x5

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-static {p1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->resetNtAllAppToNormalConfig(Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public static applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_9

    :cond_1
    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x3

    iget-boolean v4, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p1, p0, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x10

    iget-boolean v1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x4

    iget-boolean v1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x5

    iget-boolean v1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_7
    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_8

    :cond_a
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Landroid/view/animation/Interpolator;

    :goto_8
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-static {p1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->resetNtNormalToAppConfig(Lcom/android/launcher3/states/StateAnimationConfig;)V

    :goto_9
    return-void
.end method

.method public static applyOverviewToAllAppsAnimConfig(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/states/StateAnimationConfig;F)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    const/4 v1, 0x2

    iput v1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/16 v2, 0xa

    const/16 v3, 0xb

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p2, 0x3

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/touch/e;->a:Lcom/android/launcher3/touch/e;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x13

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p2, p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x0

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    invoke-static {p2, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public static synthetic c(F)F
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->lambda$applyOverviewToAllAppsAnimConfig$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic d(FLandroid/view/animation/Interpolator;F)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->lambda$thresholdInterpolator$1(FLandroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyOverviewToAllAppsAnimConfig$0(F)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$thresholdInterpolator$1(FLandroid/view/animation/Interpolator;F)F
    .locals 0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static resetNtAllAppToNormalConfig(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static resetNtNormalToAppConfig(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_NORMAL_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static thresholdInterpolator(FLandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/d;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/touch/d;-><init>(FLandroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_0

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getShiftRange()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method
