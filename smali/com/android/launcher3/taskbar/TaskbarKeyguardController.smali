.class public Lcom/android/launcher3/taskbar/TaskbarKeyguardController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private mBouncerShowing:Z

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSysuiFlags:I

.field private mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private updateIconsForBouncer()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setBackForBouncer(Z)V

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarKeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmKeyguardSysuiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmBouncerShowing="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    return-void
.end method

.method public updateStateForSysuiFlags(I)V
    .locals 6

    const v0, 0x306003c8

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mKeyguardSysuiFlags:I

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    and-int/lit16 v4, p1, 0x200

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const/high16 v5, 0x200000

    and-int/2addr v5, p1

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mBouncerShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-nez v3, :cond_6

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v5, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v1

    :goto_5
    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setKeyguardVisible(ZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->updateIconsForBouncer()V

    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    if-nez v3, :cond_9

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v1

    :goto_8
    if-eqz v0, :cond_b

    const/high16 v0, 0x30000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    :goto_9
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const p1, 0x23fffff

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_b
    return-void
.end method
