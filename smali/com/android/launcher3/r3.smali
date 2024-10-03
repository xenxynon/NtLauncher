.class public final synthetic Lcom/android/launcher3/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r3;->g:Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/r3;->g:Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DepthController;->dispose()V

    return-void
.end method
