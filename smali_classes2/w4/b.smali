.class public Lw4/b;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_HIDE_WORKSPACE:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    sget v2, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    or-int/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            ")F"
        }
    .end annotation

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            "Z)I"
        }
    .end annotation

    const/16 p0, 0x12c

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x104

    return p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 0

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    new-instance p1, Lw4/b$a;

    invoke-direct {p1, p0}, Lw4/b$a;-><init>(Landroid/view/animation/Interpolator;)V

    return-object p1
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 1

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const p1, 0x3f666666    # 0.9f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method
