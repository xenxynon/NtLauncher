.class public final synthetic Ln/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BaseLauncherBinder;

.field public final synthetic h:Lcom/android/launcher3/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/f;->g:Lcom/android/launcher3/model/BaseLauncherBinder;

    iput-object p2, p0, Ln/f;->h:Lcom/android/launcher3/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/f;->g:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object p0, p0, Ln/f;->h:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->b(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method
