.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

.field public final synthetic h:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/o;->g:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/o;->h:Lcom/android/launcher3/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/o;->g:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/o;->h:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->d(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
