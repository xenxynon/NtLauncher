.class public final synthetic Lcom/android/launcher3/model/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

.field public final synthetic h:Lcom/android/launcher3/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/x;->g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iput-object p2, p0, Lcom/android/launcher3/model/x;->h:Lcom/android/launcher3/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/x;->g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/x;->h:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->c(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method
