.class public interface abstract Lcom/android/wm/shell/recents/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/recents/a$a;
    }
.end annotation


# virtual methods
.method public abstract B(I)[Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract E(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V
.end method

.method public abstract registerRecentTasksListener(Lcom/android/wm/shell/recents/b;)V
.end method

.method public abstract unregisterRecentTasksListener(Lcom/android/wm/shell/recents/b;)V
.end method

.method public abstract x(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.end method
