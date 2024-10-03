.class Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;->registerBackDispatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    return-void
.end method

.method public onBackInvoked()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->access$500(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackInvoked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    const-string p0, "Main"

    const-string v0, "onBackInvoked"

    invoke-static {p0, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 0
    .param p1    # Landroid/window/BackEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1
    .param p1    # Landroid/window/BackEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->access$400(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    invoke-interface {v0, p1}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    return-void
.end method
