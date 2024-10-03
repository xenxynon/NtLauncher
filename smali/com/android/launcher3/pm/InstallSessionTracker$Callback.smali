.class public interface abstract Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pm/InstallSessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInstallSessionCreated(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .param p1    # Lcom/android/launcher3/pm/PackageInstallInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .param p1    # Lcom/android/launcher3/pm/PackageInstallInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
