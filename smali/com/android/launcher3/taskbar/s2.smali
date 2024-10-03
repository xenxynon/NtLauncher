.class public final synthetic Lcom/android/launcher3/taskbar/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/s2;->g:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/s2;->g:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->f(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method
