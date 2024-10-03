.class public final synthetic Lcom/android/launcher3/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/x3;->g:Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/x3;->g:Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;->unregister()V

    return-void
.end method
