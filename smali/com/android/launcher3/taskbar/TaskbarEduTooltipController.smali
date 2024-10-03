.class public final Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->maybeShowFeaturesEdu$lambda$4$lambda$3(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getControllers$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static final synthetic access$setTooltip$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    return-void
.end method

.method private final createAccessibilityDelegate()Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$createAccessibilityDelegate$1;
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$createAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$createAccessibilityDelegate$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V

    return-object v0
.end method

.method private final inflateTooltip(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->requestWindow()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e015c

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.taskbar.TaskbarEduTooltip"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v2, 0x8

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->setOnCloseCallback(Ly5/a;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->createAccessibilityDelegate()Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$createAccessibilityDelegate$1;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    return-void
.end method

.method private final isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isTooltipEnabled()Z
    .locals 0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final maybeShowFeaturesEdu$lambda$4$lambda$3(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->hide()Ln5/t;

    return-void
.end method

.method private final setTooltipStep(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "launcher.taskbar_edu_tooltip_step"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->setEventCount(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarEduTooltipController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisTooltipEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isTooltipEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ttooltipStep="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->getTooltipStep()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final getTooltipStep()I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "launcher.taskbar_edu_tooltip_step"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->getCount(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final hide()Ln5/t;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final isBeforeTooltipFeaturesStep()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isTooltipEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->getTooltipStep()I

    move-result p0

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final maybeShowFeaturesEdu()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->getTooltipStep()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->setTooltipStep(I)V

    const v0, 0x7f0e015a

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->inflateTooltip(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    if-eqz v0, :cond_4

    const v1, 0x7f0b036b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0b0387

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0b0345

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f0b0346

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "splitscreenAnim"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipControllerKt;->access$supportLightTheme(Lcom/airbnb/lottie/LottieAnimationView;)V

    const-string v5, "suggestionsAnim"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipControllerKt;->access$supportLightTheme(Lcom/airbnb/lottie/LottieAnimationView;)V

    const-string v5, "settingsAnim"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipControllerKt;->access$supportLightTheme(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v3}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f110016

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const v1, 0x7f110019

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const v3, 0x7f110015

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const v1, 0x7f110018

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07053a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070539

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0b014e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/android/launcher3/taskbar/g2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/g2;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final maybeShowSwipeEdu()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->activityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->getTooltipStep()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->setTooltipStep(I)V

    const v0, 0x7f0e015b

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->inflateTooltip(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->tooltip:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    if-eqz p0, :cond_1

    const v0, 0x7f0b038a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<LottieAnima\u2026ew>(R.id.swipe_animation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipControllerKt;->access$supportLightTheme(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->show()V

    :cond_1
    :goto_0
    return-void
.end method
