.class Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_NUM_SWIPES_TO_TRIGGER_EDU:I = 0x3


# instance fields
.field private mCount:I

.field private mEDUHasShown:Z

.field private mShouldIncreaseCount:Z

.field final synthetic this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

.field final synthetic val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    iput-object p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    iput-boolean p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mEDUHasShown:Z

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mEDUHasShown:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$500(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p1}, Lcom/android/quickstep/views/AllAppsEduView;->show(Lcom/android/launcher3/Launcher;)V

    iput-boolean v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mEDUHasShown:Z

    iget-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$600(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)V

    :cond_0
    iput v3, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mShouldIncreaseCount:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mCount:I

    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {p0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$700(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/AllAppsEduView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->val$launcher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->mShouldIncreaseCount:Z

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
