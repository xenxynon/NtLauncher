.class public final synthetic Lcom/android/quickstep/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentTasksList$1;

.field public final synthetic h:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a4;->g:Lcom/android/quickstep/RecentTasksList$1;

    iput-object p2, p0, Lcom/android/quickstep/a4;->h:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/a4;->g:Lcom/android/quickstep/RecentTasksList$1;

    iget-object p0, p0, Lcom/android/quickstep/a4;->h:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentTasksList$1;->R(Lcom/android/quickstep/RecentTasksList$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
