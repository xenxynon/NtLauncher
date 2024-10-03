.class public final synthetic Lcom/android/launcher3/taskbar/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/r3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput p2, p0, Lcom/android/launcher3/taskbar/r3;->h:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/r3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget p0, p0, Lcom/android/launcher3/taskbar/r3;->h:F

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->e(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V

    return-void
.end method
