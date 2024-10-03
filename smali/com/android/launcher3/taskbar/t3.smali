.class public final synthetic Lcom/android/launcher3/taskbar/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/t3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/t3;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/t3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/t3;->h:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->g(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    return-void
.end method
